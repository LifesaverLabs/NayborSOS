import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/alert_model.dart';
import '../models/emergency_type.dart';
import '../services/auth_service.dart';

/// Repository for alert data operations
class AlertRepository {
  final FirebaseFirestore _firestore;

  AlertRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get _alertsCollection =>
      _firestore.collection('alerts');

  /// Create a new emergency alert
  Future<String> createAlert(AlertModel alert) async {
    final docRef = _alertsCollection.doc();
    final alertWithId = alert.copyWith(alertId: docRef.id);
    await docRef.set(alertWithId.toFirestore());
    return docRef.id;
  }

  /// Get alert by ID
  Future<AlertModel?> getAlert(String alertId) async {
    final doc = await _alertsCollection.doc(alertId).get();
    if (!doc.exists) return null;
    return AlertModel.fromFirestore(doc);
  }

  /// Stream a single alert (real-time updates)
  Stream<AlertModel?> watchAlert(String alertId) {
    return _alertsCollection.doc(alertId).snapshots().map((doc) {
      if (!doc.exists) return null;
      return AlertModel.fromFirestore(doc);
    });
  }

  /// Update alert status
  Future<void> updateAlertStatus(String alertId, AlertStatus status) async {
    final updates = <String, dynamic>{
      'status': status.name,
    };

    // Update corresponding timestamp
    switch (status) {
      case AlertStatus.dispatching:
        updates['timestamps.dispatched'] = FieldValue.serverTimestamp();
        break;
      case AlertStatus.accepted:
        updates['timestamps.firstAccepted'] = FieldValue.serverTimestamp();
        break;
      case AlertStatus.inProgress:
        updates['timestamps.arrived'] = FieldValue.serverTimestamp();
        break;
      case AlertStatus.resolved:
        updates['timestamps.resolved'] = FieldValue.serverTimestamp();
        break;
      case AlertStatus.cancelled:
        updates['timestamps.cancelled'] = FieldValue.serverTimestamp();
        break;
      default:
        break;
    }

    await _alertsCollection.doc(alertId).update(updates);
  }

  /// Add a responder to an alert
  Future<void> addResponder(String alertId, AlertResponder responder) async {
    await _alertsCollection.doc(alertId).update({
      'responders': FieldValue.arrayUnion([responder.toMap()]),
    });
  }

  /// Update responder status within an alert
  Future<void> updateResponderStatus(
    String alertId,
    String responderId,
    ResponderStatus status, {
    TransportMethod? transportMethod,
    int? etaSeconds,
  }) async {
    // Get the current alert
    final alert = await getAlert(alertId);
    if (alert == null) return;

    // Find and update the responder
    final updatedResponders = alert.responders.map((r) {
      if (r.userId == responderId) {
        return r.copyWith(
          status: status,
          transportMethod: transportMethod ?? r.transportMethod,
          etaSeconds: etaSeconds ?? r.etaSeconds,
          acceptedAt: status == ResponderStatus.accepted ? DateTime.now() : r.acceptedAt,
          arrivedAt: status == ResponderStatus.arrived ? DateTime.now() : r.arrivedAt,
        );
      }
      return r;
    }).toList();

    await _alertsCollection.doc(alertId).update({
      'responders': updatedResponders.map((r) => r.toMap()).toList(),
    });

    // Update alert status based on responder status
    if (status == ResponderStatus.accepted && alert.status == AlertStatus.dispatching) {
      await updateAlertStatus(alertId, AlertStatus.accepted);
    } else if (status == ResponderStatus.arrived && alert.status == AlertStatus.accepted) {
      await updateAlertStatus(alertId, AlertStatus.inProgress);
    }
  }

  /// Add a dispatch wave to the alert
  Future<void> addDispatchWave(String alertId, DispatchWave wave) async {
    await _alertsCollection.doc(alertId).update({
      'dispatchWaves': FieldValue.arrayUnion([wave.toMap()]),
    });
  }

  /// Mark alert as resolved
  Future<void> resolveAlert(
    String alertId, {
    int? responderResponseTimeSeconds,
    int? emsResponseTimeSeconds,
    bool? lifeSaved,
  }) async {
    final outcome = AlertOutcome(
      resolved: true,
      responderResponseTimeSeconds: responderResponseTimeSeconds,
      emsResponseTimeSeconds: emsResponseTimeSeconds,
      timeAdvantageSeconds: emsResponseTimeSeconds != null && responderResponseTimeSeconds != null
          ? emsResponseTimeSeconds - responderResponseTimeSeconds
          : null,
      lifeSaved: lifeSaved,
    );

    await _alertsCollection.doc(alertId).update({
      'status': AlertStatus.resolved.name,
      'timestamps.resolved': FieldValue.serverTimestamp(),
      'outcome': outcome.toMap(),
    });
  }

  /// Cancel an alert
  Future<void> cancelAlert(String alertId) async {
    await _alertsCollection.doc(alertId).update({
      'status': AlertStatus.cancelled.name,
      'timestamps.cancelled': FieldValue.serverTimestamp(),
    });
  }

  /// Mark EMS as notified
  Future<void> markEmsNotified(String alertId) async {
    await _alertsCollection.doc(alertId).update({
      'emsNotified': true,
    });
  }

  /// Mark EMS as arrived
  Future<void> markEmsArrived(String alertId) async {
    await _alertsCollection.doc(alertId).update({
      'emsArrivedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Get active alerts for a user (as originator)
  Stream<List<AlertModel>> watchUserActiveAlerts(String userId) {
    return _alertsCollection
        .where('originator.userId', isEqualTo: userId)
        .where('status', whereIn: [
          AlertStatus.created.name,
          AlertStatus.dispatching.name,
          AlertStatus.accepted.name,
          AlertStatus.inProgress.name,
        ])
        .orderBy('timestamps.created', descending: true)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs.map((doc) => AlertModel.fromFirestore(doc)).toList();
        });
  }

  /// Get alerts where user is a responder
  Stream<List<AlertModel>> watchUserRespondingAlerts(String userId) {
    // Note: Firestore doesn't support array-contains on nested fields efficiently
    // This will be handled via Cloud Functions that maintain a separate index
    // For now, we query active alerts and filter client-side
    return _alertsCollection
        .where('status', whereIn: [
          AlertStatus.dispatching.name,
          AlertStatus.accepted.name,
          AlertStatus.inProgress.name,
        ])
        .snapshots()
        .map((snapshot) {
          return snapshot.docs
              .map((doc) => AlertModel.fromFirestore(doc))
              .where((alert) => alert.responders.any((r) => r.userId == userId))
              .toList();
        });
  }

  /// Get alert history for a user (resolved/cancelled)
  Future<List<AlertModel>> getUserAlertHistory(
    String userId, {
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) async {
    var query = _alertsCollection
        .where('originator.userId', isEqualTo: userId)
        .where('status', whereIn: [
          AlertStatus.resolved.name,
          AlertStatus.cancelled.name,
          AlertStatus.expired.name,
        ])
        .orderBy('timestamps.created', descending: true)
        .limit(limit);

    if (startAfter != null) {
      query = query.startAfterDocument(startAfter);
    }

    final snapshot = await query.get();
    return snapshot.docs.map((doc) => AlertModel.fromFirestore(doc)).toList();
  }

  /// Get response history for a user (as responder)
  Future<List<AlertModel>> getUserResponseHistory(
    String userId, {
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) async {
    // This requires a compound index or denormalized data
    // For production, maintain a separate 'userResponses' subcollection
    final snapshot = await _alertsCollection
        .where('status', whereIn: [
          AlertStatus.resolved.name,
          AlertStatus.cancelled.name,
        ])
        .orderBy('timestamps.created', descending: true)
        .limit(limit * 5) // Fetch more since we filter client-side
        .get();

    return snapshot.docs
        .map((doc) => AlertModel.fromFirestore(doc))
        .where((alert) => alert.responders.any(
              (r) => r.userId == userId && r.status != ResponderStatus.declined,
            ))
        .take(limit)
        .toList();
  }

  /// Stream nearby active alerts for a responder (uses geohash prefix query)
  ///
  /// [geohashPrefix] - The user's current geohash prefix
  /// [neighborPrefixes] - Neighboring geohash prefixes (currently unused, for future expansion)
  Stream<List<AlertModel>> watchNearbyActiveAlerts(
    String geohashPrefix,
    List<String> neighborPrefixes,
  ) {
    // Note: neighborPrefixes reserved for future multi-query implementation
    // Firestore doesn't support OR across different fields, so we query the main geohash
    // In production, this would be handled by Cloud Functions or denormalized indexes
    return _alertsCollection
        .where('status', whereIn: [
          AlertStatus.dispatching.name,
          AlertStatus.accepted.name,
        ])
        .where('location.geohash', isGreaterThanOrEqualTo: geohashPrefix)
        .where('location.geohash', isLessThan: '${geohashPrefix}z')
        .orderBy('location.geohash')
        .orderBy('timestamps.created', descending: true)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs.map((doc) => AlertModel.fromFirestore(doc)).toList();
        });
  }

  /// Get community statistics
  Future<Map<String, dynamic>> getCommunityStats(String geohashPrefix) async {
    // Count available responders (would need denormalized counter in production)
    final now = DateTime.now();
    final monthStart = DateTime(now.year, now.month, 1);

    // Count responses this month
    final responsesSnapshot = await _alertsCollection
        .where('location.geohash', isGreaterThanOrEqualTo: geohashPrefix)
        .where('location.geohash', isLessThan: '${geohashPrefix}z')
        .where('status', isEqualTo: AlertStatus.resolved.name)
        .where('timestamps.created', isGreaterThanOrEqualTo: Timestamp.fromDate(monthStart))
        .get();

    // Calculate average response time
    int totalResponseTime = 0;
    int responseCount = 0;
    for (final doc in responsesSnapshot.docs) {
      final alert = AlertModel.fromFirestore(doc);
      final responseTime = alert.responseTimeSeconds;
      if (responseTime != null) {
        totalResponseTime += responseTime;
        responseCount++;
      }
    }

    return {
      'responsesThisMonth': responsesSnapshot.docs.length,
      'avgResponseTimeSeconds': responseCount > 0 ? totalResponseTime ~/ responseCount : 0,
    };
  }

  /// Anonymize alert data (called after resolution + retention period)
  Future<void> anonymizeAlert(String alertId) async {
    await _alertsCollection.doc(alertId).update({
      'originator': {
        'userId': 'anonymized',
        'name': 'Anonymous',
        'phoneNumber': 'anonymized',
      },
      'location': {
        'lat': 0.0,
        'lng': 0.0,
        'geohash': 'anonymized',
      },
      'responders': [],
      'anonymizedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Record that a user was invited to respond to an alert
  Future<void> recordInvitation(
    String alertId,
    String userId,
    String userName,
    List<EmergencyType> capabilities,
  ) async {
    final responder = AlertResponder(
      userId: userId,
      name: userName,
      status: ResponderStatus.invited,
      capabilities: capabilities,
    );

    await addResponder(alertId, responder);
  }

  /// Accept an alert as a responder
  Future<void> acceptAlert(
    String alertId,
    String userId,
    TransportMethod transportMethod,
    int etaSeconds,
  ) async {
    await updateResponderStatus(
      alertId,
      userId,
      ResponderStatus.accepted,
      transportMethod: transportMethod,
      etaSeconds: etaSeconds,
    );
  }

  /// Decline an alert as a responder
  Future<void> declineAlert(String alertId, String userId) async {
    await updateResponderStatus(alertId, userId, ResponderStatus.declined);
  }

  /// Mark responder as en route
  Future<void> markEnRoute(String alertId, String userId) async {
    await updateResponderStatus(alertId, userId, ResponderStatus.enRoute);
  }

  /// Mark responder as arrived
  Future<void> markArrived(String alertId, String userId) async {
    await updateResponderStatus(alertId, userId, ResponderStatus.arrived);
  }
}

/// Provider for AlertRepository
final alertRepositoryProvider = Provider<AlertRepository>((ref) {
  return AlertRepository();
});

/// Provider for current user's active alerts (as originator)
final currentUserActiveAlertsProvider = StreamProvider<List<AlertModel>>((ref) {
  final authService = ref.watch(authServiceProvider);
  final alertRepo = ref.watch(alertRepositoryProvider);

  final user = authService.currentUser;
  if (user == null) return Stream.value([]);

  return alertRepo.watchUserActiveAlerts(user.uid);
});

/// Provider for alerts the user is responding to
final currentUserRespondingAlertsProvider = StreamProvider<List<AlertModel>>((ref) {
  final authService = ref.watch(authServiceProvider);
  final alertRepo = ref.watch(alertRepositoryProvider);

  final user = authService.currentUser;
  if (user == null) return Stream.value([]);

  return alertRepo.watchUserRespondingAlerts(user.uid);
});

/// Provider for a specific alert
final alertProvider = StreamProvider.family<AlertModel?, String>((ref, alertId) {
  final alertRepo = ref.watch(alertRepositoryProvider);
  return alertRepo.watchAlert(alertId);
});
