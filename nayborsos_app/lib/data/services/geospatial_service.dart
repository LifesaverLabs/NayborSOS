import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geoflutterfire_plus/geoflutterfire_plus.dart';
import 'package:geolocator/geolocator.dart';
import '../models/alert_model.dart';
import '../models/emergency_type.dart';
import '../models/user_model.dart';
import 'location_service.dart';

/// Index entry for available responders
class ResponderIndex {
  final String userId;
  final GeoFirePoint location;
  final List<EmergencyType> capabilities;
  final bool hasAed;
  final bool hasNaloxone;
  final DateTime updatedAt;

  const ResponderIndex({
    required this.userId,
    required this.location,
    required this.capabilities,
    this.hasAed = false,
    this.hasNaloxone = false,
    required this.updatedAt,
  });

  factory ResponderIndex.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    final geoPoint = data['position']['geopoint'] as GeoPoint;

    return ResponderIndex(
      userId: doc.id,
      location: GeoFirePoint(GeoPoint(geoPoint.latitude, geoPoint.longitude)),
      capabilities: (data['capabilities'] as List<dynamic>?)
              ?.map((e) => EmergencyType.values.firstWhere(
                    (t) => t.name == e,
                    orElse: () => EmergencyType.wellnessCheck,
                  ))
              .toList() ??
          [],
      hasAed: data['hasAed'] as bool? ?? false,
      hasNaloxone: data['hasNaloxone'] as bool? ?? false,
      updatedAt: (data['updatedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'position': location.data,
      'capabilities': capabilities.map((e) => e.name).toList(),
      'hasAed': hasAed,
      'hasNaloxone': hasNaloxone,
      'updatedAt': FieldValue.serverTimestamp(),
    };
  }
}

/// Service for geospatial queries and responder location management
///
/// PRIVACY NOTES:
/// - Location is ONLY stored in the activeResponders index when user is AVAILABLE
/// - When user goes unavailable, their location is DELETED from the index
/// - Exact location is never stored in the user profile
class GeospatialService {
  final FirebaseFirestore _firestore;
  final LocationService _locationService;

  GeospatialService({
    FirebaseFirestore? firestore,
    LocationService? locationService,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _locationService = locationService ?? LocationService();

  CollectionReference<Map<String, dynamic>> get _activeRespondersCollection =>
      _firestore.collection('activeResponders');

  /// Update responder location in the geospatial index
  /// Called when user toggles "Available Now" ON
  Future<void> updateResponderLocation(
    String userId,
    Position position,
    List<UserCapability> capabilities,
  ) async {
    final geoPoint = GeoFirePoint(GeoPoint(position.latitude, position.longitude));

    // Extract capability types and equipment
    final capabilityTypes = capabilities.map((c) => c.type).toList();
    final hasAed = capabilities.any((c) => c.type == EmergencyType.aedDelivery && c.hasEquipment);
    final hasNaloxone = capabilities.any((c) => c.type == EmergencyType.overdose && c.hasEquipment);

    await _activeRespondersCollection.doc(userId).set({
      'position': geoPoint.data,
      'capabilities': capabilityTypes.map((e) => e.name).toList(),
      'hasAed': hasAed,
      'hasNaloxone': hasNaloxone,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Remove responder from the geospatial index
  /// Called when user toggles "Available Now" OFF
  Future<void> removeResponderLocation(String userId) async {
    await _activeRespondersCollection.doc(userId).delete();
  }

  /// Find nearby responders for an alert
  ///
  /// [center] - The alert location
  /// [radiusKm] - Search radius in kilometers
  /// [requiredType] - The emergency type (filters by capability)
  /// [excludeUserIds] - User IDs to exclude (e.g., the originator)
  /// [requireEquipment] - Whether equipment is required (AED, naloxone)
  Stream<List<ResponderIndex>> findNearbyResponders({
    required GeoFirePoint center,
    required double radiusKm,
    EmergencyType? requiredType,
    List<String> excludeUserIds = const [],
    bool requireAed = false,
    bool requireNaloxone = false,
  }) {
    // Use geoflutterfire_plus for efficient geospatial queries
    final geoRef = GeoCollectionReference<Map<String, dynamic>>(_activeRespondersCollection);

    return geoRef
        .subscribeWithin(
          center: center,
          radiusInKm: radiusKm,
          field: 'position',
          geopointFrom: (data) => (data['position']['geopoint'] as GeoPoint),
          strictMode: true,
        )
        .map((snapshots) {
          return snapshots
              .map((doc) => ResponderIndex.fromFirestore(doc))
              .where((responder) {
                // Exclude specified users
                if (excludeUserIds.contains(responder.userId)) return false;

                // Filter by required capability
                if (requiredType != null && !responder.capabilities.contains(requiredType)) {
                  return false;
                }

                // Filter by required equipment
                if (requireAed && !responder.hasAed) return false;
                if (requireNaloxone && !responder.hasNaloxone) return false;

                return true;
              })
              .toList();
        });
  }

  /// Get count of available responders in an area
  Future<int> getAvailableResponderCount({
    required GeoFirePoint center,
    required double radiusKm,
  }) async {
    final geoRef = GeoCollectionReference<Map<String, dynamic>>(_activeRespondersCollection);

    final snapshots = await geoRef
        .fetchWithin(
          center: center,
          radiusInKm: radiusKm,
          field: 'position',
          geopointFrom: (data) => (data['position']['geopoint'] as GeoPoint),
        );

    return snapshots.length;
  }

  /// Get responders sorted by distance
  Future<List<MapEntry<ResponderIndex, double>>> getRespondersByDistance({
    required GeoFirePoint center,
    required double radiusKm,
    EmergencyType? requiredType,
    List<String> excludeUserIds = const [],
    int limit = 10,
  }) async {
    final geoRef = GeoCollectionReference<Map<String, dynamic>>(_activeRespondersCollection);

    final snapshots = await geoRef.fetchWithin(
      center: center,
      radiusInKm: radiusKm,
      field: 'position',
      geopointFrom: (data) => (data['position']['geopoint'] as GeoPoint),
    );

    final respondersWithDistance = <MapEntry<ResponderIndex, double>>[];

    for (final doc in snapshots) {
      final responder = ResponderIndex.fromFirestore(doc);

      // Apply filters
      if (excludeUserIds.contains(responder.userId)) continue;
      if (requiredType != null && !responder.capabilities.contains(requiredType)) continue;

      // Calculate distance
      final distance = _locationService.calculateDistance(
        startLat: center.latitude,
        startLng: center.longitude,
        endLat: responder.location.latitude,
        endLng: responder.location.longitude,
      );

      respondersWithDistance.add(MapEntry(responder, distance));
    }

    // Sort by distance
    respondersWithDistance.sort((a, b) => a.value.compareTo(b.value));

    return respondersWithDistance.take(limit).toList();
  }

  /// Calculate ETA based on distance and transport method
  int calculateEtaSeconds(double distanceMeters, TransportMethod method) {
    // Average speeds in meters per second
    const speeds = {
      TransportMethod.running: 3.0, // ~7 min/mile
      TransportMethod.walking: 1.4, // ~3 mph
      TransportMethod.biking: 5.5, // ~12 mph
      TransportMethod.driving: 8.9, // ~20 mph (accounting for neighborhood driving)
    };

    final speed = speeds[method] ?? speeds[TransportMethod.driving]!;
    return (distanceMeters / speed).ceil();
  }

  /// Get geohash for current position
  String getGeohash(double lat, double lng, {int precision = 7}) {
    return _locationService.generateGeohash(lat, lng, precision: precision);
  }

  /// Get neighboring geohashes for broader coverage
  List<String> getNeighborGeohashes(String geohash) {
    return _locationService.getNeighborGeohashes(geohash);
  }
}

/// Provider for GeospatialService
final geospatialServiceProvider = Provider<GeospatialService>((ref) {
  final locationService = ref.watch(locationServiceProvider);
  return GeospatialService(locationService: locationService);
});

/// Provider for available responder count near user
final nearbyResponderCountProvider = FutureProvider.family<int, Position>((ref, position) async {
  final geoService = ref.watch(geospatialServiceProvider);
  final center = GeoFirePoint(GeoPoint(position.latitude, position.longitude));

  return await geoService.getAvailableResponderCount(
    center: center,
    radiusKm: 5.0, // 5km radius for community stats
  );
});
