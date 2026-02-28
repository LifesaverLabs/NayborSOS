import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';
import '../models/emergency_type.dart';
import '../services/auth_service.dart';

/// Repository for user data operations
class UserRepository {
  final FirebaseFirestore _firestore;

  UserRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get _usersCollection =>
      _firestore.collection('users');

  CollectionReference<Map<String, dynamic>> _capabilitiesCollection(
          String userId) =>
      _usersCollection.doc(userId).collection('capabilities');

  /// Create a new user profile
  Future<void> createUser(UserModel user) async {
    await _usersCollection.doc(user.userId).set(user.toFirestore());
  }

  /// Get user by ID
  Future<UserModel?> getUser(String userId) async {
    final doc = await _usersCollection.doc(userId).get();
    if (!doc.exists) return null;
    return UserModel.fromFirestore(doc);
  }

  /// Stream user profile (real-time updates)
  Stream<UserModel?> watchUser(String userId) {
    return _usersCollection.doc(userId).snapshots().map((doc) {
      if (!doc.exists) return null;
      return UserModel.fromFirestore(doc);
    });
  }

  /// Update user profile
  Future<void> updateUser(String userId, Map<String, dynamic> updates) async {
    updates['updatedAt'] = FieldValue.serverTimestamp();
    await _usersCollection.doc(userId).update(updates);
  }

  /// Update user availability
  Future<void> updateAvailability(String userId, bool isAvailable) async {
    await _usersCollection.doc(userId).update({
      'availability.isAvailable': isAvailable,
      'availability.lastUpdated': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });

    // If becoming available, also update geospatial index
    // If becoming unavailable, delete geospatial index
    // This is handled separately in GeospatialService
  }

  /// Suspend user temporarily
  Future<void> suspendUser(
    String userId,
    SuspensionReason reason,
    DateTime? suspendedUntil,
  ) async {
    await _usersCollection.doc(userId).update({
      'availability.isAvailable': false,
      'availability.suspensionReason': reason.name,
      if (suspendedUntil != null)
        'availability.suspendedUntil': Timestamp.fromDate(suspendedUntil),
      'availability.lastUpdated': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Clear user suspension
  Future<void> clearSuspension(String userId) async {
    await _usersCollection.doc(userId).update({
      'availability.suspensionReason': FieldValue.delete(),
      'availability.suspendedUntil': FieldValue.delete(),
      'availability.lastUpdated': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Update user settings
  Future<void> updateSettings(String userId, UserSettings settings) async {
    await _usersCollection.doc(userId).update({
      'settings': settings.toMap(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Update alert schedule
  Future<void> updateAlertSchedule(
      String userId, AlertSchedule schedule) async {
    await _usersCollection.doc(userId).update({
      'alertSchedule': schedule.toMap(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Add a capability to user
  Future<void> addCapability(String userId, UserCapability capability) async {
    await _capabilitiesCollection(userId)
        .doc(capability.type.name)
        .set(capability.toMap());
  }

  /// Remove a capability from user
  Future<void> removeCapability(String userId, EmergencyType type) async {
    await _capabilitiesCollection(userId).doc(type.name).delete();
  }

  /// Get all capabilities for a user
  Future<List<UserCapability>> getCapabilities(String userId) async {
    final snapshot = await _capabilitiesCollection(userId).get();
    return snapshot.docs
        .map((doc) => UserCapability.fromMap(doc.data()))
        .toList();
  }

  /// Stream capabilities (real-time updates)
  Stream<List<UserCapability>> watchCapabilities(String userId) {
    return _capabilitiesCollection(userId).snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => UserCapability.fromMap(doc.data()))
          .toList();
    });
  }

  /// Update capability (e.g., mark as certified, update equipment)
  Future<void> updateCapability(
    String userId,
    EmergencyType type,
    Map<String, dynamic> updates,
  ) async {
    updates['updatedAt'] = FieldValue.serverTimestamp();
    await _capabilitiesCollection(userId).doc(type.name).update(updates);
  }

  /// Increment alerts this week for a capability
  Future<void> incrementAlertsThisWeek(
      String userId, EmergencyType type) async {
    await _capabilitiesCollection(userId).doc(type.name).update({
      'alertsThisWeek': FieldValue.increment(1),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Reset weekly alert counters (called by Cloud Function)
  Future<void> resetWeeklyCounters(String userId) async {
    final capabilities = await getCapabilities(userId);
    final batch = _firestore.batch();

    for (final capability in capabilities) {
      final ref = _capabilitiesCollection(userId).doc(capability.type.name);
      batch.update(ref, {
        'alertsThisWeek': 0,
        'lastWeekReset': FieldValue.serverTimestamp(),
      });
    }

    await batch.commit();
  }

  /// Add trusted responder
  Future<void> addTrustedResponder(
      String userId, String trustedUserId) async {
    await _usersCollection.doc(userId).update({
      'trustedResponders': FieldValue.arrayUnion([trustedUserId]),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Remove trusted responder
  Future<void> removeTrustedResponder(
      String userId, String trustedUserId) async {
    await _usersCollection.doc(userId).update({
      'trustedResponders': FieldValue.arrayRemove([trustedUserId]),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Accept terms and liability waiver
  Future<void> acceptTerms(String userId) async {
    await _usersCollection.doc(userId).update({
      'liabilityWaiverAccepted': true,
      'termsAccepted': true,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  /// Delete user account (GDPR right to erasure)
  Future<void> deleteUser(String userId) async {
    // Delete capabilities subcollection first
    final capabilities = await _capabilitiesCollection(userId).get();
    final batch = _firestore.batch();
    for (final doc in capabilities.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();

    // Delete user document
    await _usersCollection.doc(userId).delete();

    // Note: Alert anonymization should be handled by Cloud Function
  }

  /// Check if phone number is already registered
  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    final snapshot = await _usersCollection
        .where('phoneNumber', isEqualTo: phoneNumber)
        .limit(1)
        .get();
    return snapshot.docs.isNotEmpty;
  }
}

/// Provider for UserRepository
final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository();
});

/// Provider for current user profile
final currentUserProfileProvider = StreamProvider<UserModel?>((ref) {
  final authService = ref.watch(authServiceProvider);
  final userRepo = ref.watch(userRepositoryProvider);

  final user = authService.currentUser;
  if (user == null) return Stream.value(null);

  return userRepo.watchUser(user.uid);
});

/// Provider for current user capabilities
final currentUserCapabilitiesProvider =
    StreamProvider<List<UserCapability>>((ref) {
  final authService = ref.watch(authServiceProvider);
  final userRepo = ref.watch(userRepositoryProvider);

  final user = authService.currentUser;
  if (user == null) return Stream.value([]);

  return userRepo.watchCapabilities(user.uid);
});
