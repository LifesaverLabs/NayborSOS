import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'emergency_type.dart';

/// Status of an emergency alert
enum AlertStatus {
  /// Alert just created, not yet dispatched
  created,

  /// Alert is being sent to responders
  dispatching,

  /// At least one responder has accepted
  accepted,

  /// Responder is on scene
  inProgress,

  /// Emergency has been resolved
  resolved,

  /// Alert was cancelled by originator
  cancelled,

  /// Alert expired with no responders
  expired,
}

/// Status of an individual responder for an alert
enum ResponderStatus {
  /// Invitation sent, waiting for response
  invited,

  /// Responder accepted the alert
  accepted,

  /// Responder declined the alert
  declined,

  /// Responder did not respond in time
  timeout,

  /// Responder is en route
  enRoute,

  /// Responder has arrived on scene
  arrived,
}

/// Transport method for responder
enum TransportMethod {
  driving,
  running,
  walking,
  biking,
}

/// Location data for an alert (only stored during active emergency)
class AlertLocation extends Equatable {
  final double lat;
  final double lng;
  final String geohash;
  final String? address;
  final String? description;

  const AlertLocation({
    required this.lat,
    required this.lng,
    required this.geohash,
    this.address,
    this.description,
  });

  factory AlertLocation.fromMap(Map<String, dynamic> map) {
    return AlertLocation(
      lat: (map['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (map['lng'] as num?)?.toDouble() ?? 0.0,
      geohash: map['geohash'] as String? ?? '',
      address: map['address'] as String?,
      description: map['description'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'lng': lng,
      'geohash': geohash,
      if (address != null) 'address': address,
      if (description != null) 'description': description,
    };
  }

  @override
  List<Object?> get props => [lat, lng, geohash, address, description];
}

/// Information about the person who originated the alert
class AlertOriginator extends Equatable {
  final String userId;
  final String name;
  final String phoneNumber;
  final String? photoUrl;

  const AlertOriginator({
    required this.userId,
    required this.name,
    required this.phoneNumber,
    this.photoUrl,
  });

  factory AlertOriginator.fromMap(Map<String, dynamic> map) {
    return AlertOriginator(
      userId: map['userId'] as String? ?? '',
      name: map['name'] as String? ?? '',
      phoneNumber: map['phoneNumber'] as String? ?? '',
      photoUrl: map['photoUrl'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      'phoneNumber': phoneNumber,
      if (photoUrl != null) 'photoUrl': photoUrl,
    };
  }

  @override
  List<Object?> get props => [userId, name, phoneNumber, photoUrl];
}

/// Information about a responder for an alert
class AlertResponder extends Equatable {
  final String userId;
  final String name;
  final String? phoneNumber;
  final ResponderStatus status;
  final DateTime? acceptedAt;
  final DateTime? arrivedAt;
  final TransportMethod? transportMethod;
  final int? etaSeconds;
  final List<EmergencyType> capabilities;
  final List<String> equipment;

  const AlertResponder({
    required this.userId,
    required this.name,
    this.phoneNumber,
    required this.status,
    this.acceptedAt,
    this.arrivedAt,
    this.transportMethod,
    this.etaSeconds,
    this.capabilities = const [],
    this.equipment = const [],
  });

  factory AlertResponder.fromMap(Map<String, dynamic> map) {
    return AlertResponder(
      userId: map['userId'] as String? ?? '',
      name: map['name'] as String? ?? '',
      phoneNumber: map['phoneNumber'] as String?,
      status: ResponderStatus.values.firstWhere(
        (e) => e.name == map['status'],
        orElse: () => ResponderStatus.invited,
      ),
      acceptedAt: (map['acceptedAt'] as Timestamp?)?.toDate(),
      arrivedAt: (map['arrivedAt'] as Timestamp?)?.toDate(),
      transportMethod: map['transportMethod'] != null
          ? TransportMethod.values.firstWhere(
              (e) => e.name == map['transportMethod'],
              orElse: () => TransportMethod.driving,
            )
          : null,
      etaSeconds: map['etaSeconds'] as int?,
      capabilities: (map['capabilities'] as List<dynamic>?)
              ?.map((e) => EmergencyType.values.firstWhere(
                    (t) => t.name == e,
                    orElse: () => EmergencyType.wellnessCheck,
                  ))
              .toList() ??
          [],
      equipment: (map['equipment'] as List<dynamic>?)?.cast<String>() ?? [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'name': name,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      'status': status.name,
      if (acceptedAt != null) 'acceptedAt': Timestamp.fromDate(acceptedAt!),
      if (arrivedAt != null) 'arrivedAt': Timestamp.fromDate(arrivedAt!),
      if (transportMethod != null) 'transportMethod': transportMethod!.name,
      if (etaSeconds != null) 'etaSeconds': etaSeconds,
      'capabilities': capabilities.map((e) => e.name).toList(),
      'equipment': equipment,
    };
  }

  AlertResponder copyWith({
    String? userId,
    String? name,
    String? phoneNumber,
    ResponderStatus? status,
    DateTime? acceptedAt,
    DateTime? arrivedAt,
    TransportMethod? transportMethod,
    int? etaSeconds,
    List<EmergencyType>? capabilities,
    List<String>? equipment,
  }) {
    return AlertResponder(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      status: status ?? this.status,
      acceptedAt: acceptedAt ?? this.acceptedAt,
      arrivedAt: arrivedAt ?? this.arrivedAt,
      transportMethod: transportMethod ?? this.transportMethod,
      etaSeconds: etaSeconds ?? this.etaSeconds,
      capabilities: capabilities ?? this.capabilities,
      equipment: equipment ?? this.equipment,
    );
  }

  @override
  List<Object?> get props => [
        userId,
        name,
        phoneNumber,
        status,
        acceptedAt,
        arrivedAt,
        transportMethod,
        etaSeconds,
        capabilities,
        equipment,
      ];
}

/// Dispatch wave information
class DispatchWave extends Equatable {
  final int waveNumber;
  final String type; // 'trusted', 'nearby', 'extended'
  final DateTime sentAt;
  final List<String> recipientUserIds;
  final int acceptedCount;

  const DispatchWave({
    required this.waveNumber,
    required this.type,
    required this.sentAt,
    required this.recipientUserIds,
    this.acceptedCount = 0,
  });

  factory DispatchWave.fromMap(Map<String, dynamic> map) {
    return DispatchWave(
      waveNumber: map['waveNumber'] as int? ?? 0,
      type: map['type'] as String? ?? 'nearby',
      sentAt: (map['sentAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      recipientUserIds:
          (map['recipientUserIds'] as List<dynamic>?)?.cast<String>() ?? [],
      acceptedCount: map['acceptedCount'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'waveNumber': waveNumber,
      'type': type,
      'sentAt': Timestamp.fromDate(sentAt),
      'recipientUserIds': recipientUserIds,
      'acceptedCount': acceptedCount,
    };
  }

  @override
  List<Object?> get props =>
      [waveNumber, type, sentAt, recipientUserIds, acceptedCount];
}

/// Alert timestamps
class AlertTimestamps extends Equatable {
  final DateTime created;
  final DateTime? dispatched;
  final DateTime? firstAccepted;
  final DateTime? arrived;
  final DateTime? resolved;
  final DateTime? cancelled;

  const AlertTimestamps({
    required this.created,
    this.dispatched,
    this.firstAccepted,
    this.arrived,
    this.resolved,
    this.cancelled,
  });

  factory AlertTimestamps.fromMap(Map<String, dynamic> map) {
    return AlertTimestamps(
      created: (map['created'] as Timestamp?)?.toDate() ?? DateTime.now(),
      dispatched: (map['dispatched'] as Timestamp?)?.toDate(),
      firstAccepted: (map['firstAccepted'] as Timestamp?)?.toDate(),
      arrived: (map['arrived'] as Timestamp?)?.toDate(),
      resolved: (map['resolved'] as Timestamp?)?.toDate(),
      cancelled: (map['cancelled'] as Timestamp?)?.toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created': Timestamp.fromDate(created),
      if (dispatched != null) 'dispatched': Timestamp.fromDate(dispatched!),
      if (firstAccepted != null)
        'firstAccepted': Timestamp.fromDate(firstAccepted!),
      if (arrived != null) 'arrived': Timestamp.fromDate(arrived!),
      if (resolved != null) 'resolved': Timestamp.fromDate(resolved!),
      if (cancelled != null) 'cancelled': Timestamp.fromDate(cancelled!),
    };
  }

  AlertTimestamps copyWith({
    DateTime? created,
    DateTime? dispatched,
    DateTime? firstAccepted,
    DateTime? arrived,
    DateTime? resolved,
    DateTime? cancelled,
  }) {
    return AlertTimestamps(
      created: created ?? this.created,
      dispatched: dispatched ?? this.dispatched,
      firstAccepted: firstAccepted ?? this.firstAccepted,
      arrived: arrived ?? this.arrived,
      resolved: resolved ?? this.resolved,
      cancelled: cancelled ?? this.cancelled,
    );
  }

  @override
  List<Object?> get props =>
      [created, dispatched, firstAccepted, arrived, resolved, cancelled];
}

/// Alert outcome metrics
class AlertOutcome extends Equatable {
  final bool resolved;
  final int? responderResponseTimeSeconds;
  final int? emsResponseTimeSeconds;
  final int? timeAdvantageSeconds;
  final bool? lifeSaved;

  const AlertOutcome({
    required this.resolved,
    this.responderResponseTimeSeconds,
    this.emsResponseTimeSeconds,
    this.timeAdvantageSeconds,
    this.lifeSaved,
  });

  factory AlertOutcome.fromMap(Map<String, dynamic> map) {
    return AlertOutcome(
      resolved: map['resolved'] as bool? ?? false,
      responderResponseTimeSeconds:
          map['responderResponseTimeSeconds'] as int?,
      emsResponseTimeSeconds: map['emsResponseTimeSeconds'] as int?,
      timeAdvantageSeconds: map['timeAdvantageSeconds'] as int?,
      lifeSaved: map['lifeSaved'] as bool?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'resolved': resolved,
      if (responderResponseTimeSeconds != null)
        'responderResponseTimeSeconds': responderResponseTimeSeconds,
      if (emsResponseTimeSeconds != null)
        'emsResponseTimeSeconds': emsResponseTimeSeconds,
      if (timeAdvantageSeconds != null)
        'timeAdvantageSeconds': timeAdvantageSeconds,
      if (lifeSaved != null) 'lifeSaved': lifeSaved,
    };
  }

  @override
  List<Object?> get props => [
        resolved,
        responderResponseTimeSeconds,
        emsResponseTimeSeconds,
        timeAdvantageSeconds,
        lifeSaved,
      ];
}

/// Main emergency alert model
class AlertModel extends Equatable {
  final String alertId;
  final EmergencyType type;
  final AlertStatus status;
  final CriticalityLevel criticalityLevel;
  final AlertOriginator originator;
  final AlertLocation location;
  final String? description;
  final List<AlertResponder> responders;
  final int targetResponderCount;
  final List<DispatchWave> dispatchWaves;
  final AlertTimestamps timestamps;
  final bool emsNotified;
  final DateTime? emsArrivedAt;
  final AlertOutcome? outcome;
  final DateTime? anonymizedAt;

  const AlertModel({
    required this.alertId,
    required this.type,
    required this.status,
    required this.criticalityLevel,
    required this.originator,
    required this.location,
    this.description,
    this.responders = const [],
    required this.targetResponderCount,
    this.dispatchWaves = const [],
    required this.timestamps,
    this.emsNotified = false,
    this.emsArrivedAt,
    this.outcome,
    this.anonymizedAt,
  });

  /// Get the primary (first accepted) responder
  AlertResponder? get primaryResponder {
    try {
      return responders.firstWhere(
        (r) =>
            r.status == ResponderStatus.accepted ||
            r.status == ResponderStatus.enRoute ||
            r.status == ResponderStatus.arrived,
      );
    } catch (_) {
      return null;
    }
  }

  /// Check if alert is active (not resolved/cancelled/expired)
  bool get isActive {
    return status != AlertStatus.resolved &&
        status != AlertStatus.cancelled &&
        status != AlertStatus.expired;
  }

  /// Calculate response time in seconds (from creation to first responder arrival)
  int? get responseTimeSeconds {
    if (timestamps.arrived == null) return null;
    return timestamps.arrived!.difference(timestamps.created).inSeconds;
  }

  factory AlertModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return AlertModel(
      alertId: doc.id,
      type: EmergencyType.values.firstWhere(
        (e) => e.name == data['type'],
        orElse: () => EmergencyType.wellnessCheck,
      ),
      status: AlertStatus.values.firstWhere(
        (e) => e.name == data['status'],
        orElse: () => AlertStatus.created,
      ),
      criticalityLevel: CriticalityLevel.values.firstWhere(
        (e) => e.name == data['criticalityLevel'],
        orElse: () => CriticalityLevel.nonLifeThreatening,
      ),
      originator: AlertOriginator.fromMap(
          data['originator'] as Map<String, dynamic>? ?? {}),
      location: AlertLocation.fromMap(
          data['location'] as Map<String, dynamic>? ?? {}),
      description: data['description'] as String?,
      responders: (data['responders'] as List<dynamic>?)
              ?.map((e) => AlertResponder.fromMap(e as Map<String, dynamic>))
              .toList() ??
          [],
      targetResponderCount: data['targetResponderCount'] as int? ?? 1,
      dispatchWaves: (data['dispatchWaves'] as List<dynamic>?)
              ?.map((e) => DispatchWave.fromMap(e as Map<String, dynamic>))
              .toList() ??
          [],
      timestamps: AlertTimestamps.fromMap(
          data['timestamps'] as Map<String, dynamic>? ?? {}),
      emsNotified: data['emsNotified'] as bool? ?? false,
      emsArrivedAt: (data['emsArrivedAt'] as Timestamp?)?.toDate(),
      outcome: data['outcome'] != null
          ? AlertOutcome.fromMap(data['outcome'] as Map<String, dynamic>)
          : null,
      anonymizedAt: (data['anonymizedAt'] as Timestamp?)?.toDate(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'type': type.name,
      'status': status.name,
      'criticalityLevel': criticalityLevel.name,
      'originator': originator.toMap(),
      'location': location.toMap(),
      if (description != null) 'description': description,
      'responders': responders.map((e) => e.toMap()).toList(),
      'targetResponderCount': targetResponderCount,
      'dispatchWaves': dispatchWaves.map((e) => e.toMap()).toList(),
      'timestamps': timestamps.toMap(),
      'emsNotified': emsNotified,
      if (emsArrivedAt != null)
        'emsArrivedAt': Timestamp.fromDate(emsArrivedAt!),
      if (outcome != null) 'outcome': outcome!.toMap(),
      if (anonymizedAt != null)
        'anonymizedAt': Timestamp.fromDate(anonymizedAt!),
    };
  }

  AlertModel copyWith({
    String? alertId,
    EmergencyType? type,
    AlertStatus? status,
    CriticalityLevel? criticalityLevel,
    AlertOriginator? originator,
    AlertLocation? location,
    String? description,
    List<AlertResponder>? responders,
    int? targetResponderCount,
    List<DispatchWave>? dispatchWaves,
    AlertTimestamps? timestamps,
    bool? emsNotified,
    DateTime? emsArrivedAt,
    AlertOutcome? outcome,
    DateTime? anonymizedAt,
  }) {
    return AlertModel(
      alertId: alertId ?? this.alertId,
      type: type ?? this.type,
      status: status ?? this.status,
      criticalityLevel: criticalityLevel ?? this.criticalityLevel,
      originator: originator ?? this.originator,
      location: location ?? this.location,
      description: description ?? this.description,
      responders: responders ?? this.responders,
      targetResponderCount: targetResponderCount ?? this.targetResponderCount,
      dispatchWaves: dispatchWaves ?? this.dispatchWaves,
      timestamps: timestamps ?? this.timestamps,
      emsNotified: emsNotified ?? this.emsNotified,
      emsArrivedAt: emsArrivedAt ?? this.emsArrivedAt,
      outcome: outcome ?? this.outcome,
      anonymizedAt: anonymizedAt ?? this.anonymizedAt,
    );
  }

  @override
  List<Object?> get props => [
        alertId,
        type,
        status,
        criticalityLevel,
        originator,
        location,
        description,
        responders,
        targetResponderCount,
        dispatchWaves,
        timestamps,
        emsNotified,
        emsArrivedAt,
        outcome,
        anonymizedAt,
      ];
}
