import 'dart:math' as math;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

/// Privacy-preserving location service
///
/// KEY PRIVACY PRINCIPLE:
/// - Location is ONLY queried during emergencies
/// - Location is NEVER stored long-term in user profiles
/// - Location data is deleted after emergency is resolved
class LocationService {
  /// Check if location services are enabled
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }

  /// Check current permission status
  Future<LocationPermission> checkPermission() async {
    return await Geolocator.checkPermission();
  }

  /// Request location permission
  Future<LocationPermission> requestPermission() async {
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      return await Geolocator.requestPermission();
    }
    return permission;
  }

  /// Request background location permission (needed for responding while app in background)
  Future<bool> requestBackgroundPermission() async {
    final status = await Permission.locationAlways.request();
    return status.isGranted;
  }

  /// Get current position (HIGH ACCURACY for emergencies)
  ///
  /// This should ONLY be called when:
  /// 1. User creates an alert
  /// 2. User toggles "Available Now" ON
  /// 3. Responder accepts an alert
  Future<Position> getCurrentPosition() async {
    final serviceEnabled = await isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw LocationServiceDisabledException();
    }

    var permission = await checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await requestPermission();
      if (permission == LocationPermission.denied) {
        throw LocationPermissionDeniedException();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw LocationPermissionPermanentlyDeniedException();
    }

    return await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0,
      ),
    );
  }

  /// Get last known position (faster, less accurate)
  Future<Position?> getLastKnownPosition() async {
    return await Geolocator.getLastKnownPosition();
  }

  /// Calculate distance between two points in meters
  double calculateDistance({
    required double startLat,
    required double startLng,
    required double endLat,
    required double endLng,
  }) {
    return Geolocator.distanceBetween(startLat, startLng, endLat, endLng);
  }

  /// Calculate bearing between two points
  double calculateBearing({
    required double startLat,
    required double startLng,
    required double endLat,
    required double endLng,
  }) {
    return Geolocator.bearingBetween(startLat, startLng, endLat, endLng);
  }

  /// Generate a geohash for the given coordinates
  ///
  /// Geohash precision:
  /// - 7 chars = ~150m precision (good for emergency dispatch)
  /// - 6 chars = ~1.2km precision
  /// - 5 chars = ~4.9km precision
  String generateGeohash(double lat, double lng, {int precision = 7}) {
    const base32 = '0123456789bcdefghjkmnpqrstuvwxyz';
    var minLat = -90.0;
    var maxLat = 90.0;
    var minLng = -180.0;
    var maxLng = 180.0;
    var hash = StringBuffer();
    var isEven = true;
    var bit = 0;
    var ch = 0;

    while (hash.length < precision) {
      if (isEven) {
        final mid = (minLng + maxLng) / 2;
        if (lng >= mid) {
          ch |= 1 << (4 - bit);
          minLng = mid;
        } else {
          maxLng = mid;
        }
      } else {
        final mid = (minLat + maxLat) / 2;
        if (lat >= mid) {
          ch |= 1 << (4 - bit);
          minLat = mid;
        } else {
          maxLat = mid;
        }
      }
      isEven = !isEven;
      if (bit < 4) {
        bit++;
      } else {
        hash.write(base32[ch]);
        bit = 0;
        ch = 0;
      }
    }

    return hash.toString();
  }

  /// Get neighboring geohashes (for proximity queries)
  List<String> getNeighborGeohashes(String geohash) {
    // This is a simplified implementation
    // In production, use a proper geohash library
    final neighbors = <String>[];
    final precision = geohash.length;

    // Decode the geohash center
    final center = _decodeGeohash(geohash);
    final latDelta = 90.0 / math.pow(2, (precision * 5 / 2).floor());
    final lngDelta = 180.0 / math.pow(2, (precision * 5 / 2).ceil());

    // Generate 8 neighbors
    for (var dLat = -1; dLat <= 1; dLat++) {
      for (var dLng = -1; dLng <= 1; dLng++) {
        if (dLat == 0 && dLng == 0) continue;
        final neighborLat = center['lat']! + (dLat * latDelta * 2);
        final neighborLng = center['lng']! + (dLng * lngDelta * 2);
        if (neighborLat >= -90 && neighborLat <= 90 &&
            neighborLng >= -180 && neighborLng <= 180) {
          neighbors.add(generateGeohash(neighborLat, neighborLng, precision: precision));
        }
      }
    }

    return neighbors;
  }

  Map<String, double> _decodeGeohash(String geohash) {
    const base32 = '0123456789bcdefghjkmnpqrstuvwxyz';
    var minLat = -90.0;
    var maxLat = 90.0;
    var minLng = -180.0;
    var maxLng = 180.0;
    var isEven = true;

    for (var i = 0; i < geohash.length; i++) {
      final ch = base32.indexOf(geohash[i]);
      for (var bit = 4; bit >= 0; bit--) {
        final bitValue = (ch >> bit) & 1;
        if (isEven) {
          final mid = (minLng + maxLng) / 2;
          if (bitValue == 1) {
            minLng = mid;
          } else {
            maxLng = mid;
          }
        } else {
          final mid = (minLat + maxLat) / 2;
          if (bitValue == 1) {
            minLat = mid;
          } else {
            maxLat = mid;
          }
        }
        isEven = !isEven;
      }
    }

    return {
      'lat': (minLat + maxLat) / 2,
      'lng': (minLng + maxLng) / 2,
    };
  }

  /// Stream position updates (for navigation)
  Stream<Position> getPositionStream({
    LocationAccuracy accuracy = LocationAccuracy.high,
    int distanceFilter = 10,
  }) {
    return Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        accuracy: accuracy,
        distanceFilter: distanceFilter,
      ),
    );
  }

  /// Format distance for display
  String formatDistance(double meters) {
    if (meters < 1000) {
      return '${meters.round()} m';
    } else {
      final miles = meters / 1609.34;
      if (miles < 10) {
        return '${miles.toStringAsFixed(1)} mi';
      } else {
        return '${miles.round()} mi';
      }
    }
  }

  /// Open native maps app for navigation
  String getNavigationUrl({
    required double destLat,
    required double destLng,
    String? label,
  }) {
    // Google Maps URL format (works on both iOS and Android)
    final encodedLabel = label != null ? Uri.encodeComponent(label) : '';
    return 'https://www.google.com/maps/dir/?api=1&destination=$destLat,$destLng&travelmode=driving${label != null ? '&destination_place_id=$encodedLabel' : ''}';
  }
}

/// Custom exceptions for location service
class LocationServiceDisabledException implements Exception {
  @override
  String toString() => 'Location services are disabled. Please enable them in settings.';
}

class LocationPermissionDeniedException implements Exception {
  @override
  String toString() => 'Location permission was denied. Please grant permission to use this feature.';
}

class LocationPermissionPermanentlyDeniedException implements Exception {
  @override
  String toString() => 'Location permission was permanently denied. Please enable it in app settings.';
}

/// Provider for LocationService
final locationServiceProvider = Provider<LocationService>((ref) {
  return LocationService();
});

/// Provider for current position (one-time fetch)
final currentPositionProvider = FutureProvider<Position>((ref) async {
  final locationService = ref.watch(locationServiceProvider);
  return await locationService.getCurrentPosition();
});

/// Provider for position stream (continuous updates)
final positionStreamProvider = StreamProvider<Position>((ref) {
  final locationService = ref.watch(locationServiceProvider);
  return locationService.getPositionStream();
});
