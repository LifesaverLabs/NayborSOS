import 'emergency_type.dart';

enum AlertStatus {
  pending, // Waiting for responder
  accepted, // Responder accepted
  enRoute, // Responder on the way
  arrived, // Responder arrived
  resolved, // Emergency resolved
  cancelled, // Alert cancelled
}

class EmergencyAlert {
  final String id;
  final String emergencyTypeId;
  final String originatorId;
  final String originatorName;
  final String location;
  final double latitude;
  final double longitude;
  final String? description;
  final DateTime createdAt;
  final AlertStatus status;
  final List<String> acceptedResponders; // User IDs
  final bool trustedRespondersFirst;
  final String? activeResponderId;

  EmergencyAlert({
    required this.id,
    required this.emergencyTypeId,
    required this.originatorId,
    required this.originatorName,
    required this.location,
    required this.latitude,
    required this.longitude,
    this.description,
    required this.createdAt,
    this.status = AlertStatus.pending,
    this.acceptedResponders = const [],
    this.trustedRespondersFirst = false,
    this.activeResponderId,
  });

  EmergencyType? get emergencyType => EmergencyType.findById(emergencyTypeId);

  Duration get timeElapsed => DateTime.now().difference(createdAt);

  String get timeElapsedString {
    final seconds = timeElapsed.inSeconds;
    if (seconds < 60) return '${seconds}s ago';
    final minutes = timeElapsed.inMinutes;
    if (minutes < 60) return '${minutes}m ago';
    final hours = timeElapsed.inHours;
    return '${hours}h ago';
  }

  EmergencyAlert copyWith({
    String? id,
    String? emergencyTypeId,
    String? originatorId,
    String? originatorName,
    String? location,
    double? latitude,
    double? longitude,
    String? description,
    DateTime? createdAt,
    AlertStatus? status,
    List<String>? acceptedResponders,
    bool? trustedRespondersFirst,
    String? activeResponderId,
  }) {
    return EmergencyAlert(
      id: id ?? this.id,
      emergencyTypeId: emergencyTypeId ?? this.emergencyTypeId,
      originatorId: originatorId ?? this.originatorId,
      originatorName: originatorName ?? this.originatorName,
      location: location ?? this.location,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      acceptedResponders: acceptedResponders ?? this.acceptedResponders,
      trustedRespondersFirst: trustedRespondersFirst ?? this.trustedRespondersFirst,
      activeResponderId: activeResponderId ?? this.activeResponderId,
    );
  }
}
