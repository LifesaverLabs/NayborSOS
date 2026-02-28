import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/emergency_type.dart';

/// Notification channels for different alert types
class NotificationChannels {
  static const String lifeThreatening = 'life_threatening_alerts';
  static const String securitySafety = 'security_safety_alerts';
  static const String urgentTimeSensitive = 'urgent_alerts';
  static const String nonLifeThreatening = 'non_critical_alerts';
  static const String general = 'general';
}

/// Payload structure for emergency alert notifications
class AlertNotificationPayload {
  final String alertId;
  final EmergencyType type;
  final CriticalityLevel criticalityLevel;
  final String originatorName;
  final double distanceMeters;
  final double lat;
  final double lng;
  final String? description;
  final int expiresInSeconds;

  const AlertNotificationPayload({
    required this.alertId,
    required this.type,
    required this.criticalityLevel,
    required this.originatorName,
    required this.distanceMeters,
    required this.lat,
    required this.lng,
    this.description,
    this.expiresInSeconds = 30,
  });

  factory AlertNotificationPayload.fromMap(Map<String, dynamic> map) {
    return AlertNotificationPayload(
      alertId: map['alertId'] as String,
      type: EmergencyType.values.firstWhere(
        (e) => e.name == map['type'],
        orElse: () => EmergencyType.wellnessCheck,
      ),
      criticalityLevel: CriticalityLevel.values.firstWhere(
        (e) => e.name == map['criticalityLevel'],
        orElse: () => CriticalityLevel.nonLifeThreatening,
      ),
      originatorName: map['originatorName'] as String? ?? 'Neighbor',
      distanceMeters: double.tryParse(map['distanceMeters']?.toString() ?? '0') ?? 0,
      lat: double.tryParse(map['lat']?.toString() ?? '0') ?? 0,
      lng: double.tryParse(map['lng']?.toString() ?? '0') ?? 0,
      description: map['description'] as String?,
      expiresInSeconds: int.tryParse(map['expiresInSeconds']?.toString() ?? '30') ?? 30,
    );
  }

  Map<String, String> toMap() {
    return {
      'alertId': alertId,
      'type': type.name,
      'criticalityLevel': criticalityLevel.name,
      'originatorName': originatorName,
      'distanceMeters': distanceMeters.toString(),
      'lat': lat.toString(),
      'lng': lng.toString(),
      if (description != null) 'description': description!,
      'expiresInSeconds': expiresInSeconds.toString(),
    };
  }
}

/// Service for handling push notifications via Firebase Cloud Messaging
class NotificationService {
  final FirebaseMessaging _messaging;
  final FirebaseFirestore _firestore;

  NotificationService({
    FirebaseMessaging? messaging,
    FirebaseFirestore? firestore,
  })  : _messaging = messaging ?? FirebaseMessaging.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  /// Initialize notification service
  Future<void> initialize() async {
    // Request permission
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      criticalAlert: true, // For life-threatening alerts
      provisional: false,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized ||
        settings.authorizationStatus == AuthorizationStatus.provisional) {
      debugPrint('Notification permission granted');
      await _setupMessageHandlers();
    } else {
      debugPrint('Notification permission denied');
    }
  }

  /// Setup message handlers for different app states
  Future<void> _setupMessageHandlers() async {
    // Handle messages when app is in foreground
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Handle notification tap when app is in background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

    // Check if app was opened from a notification
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleNotificationTap(initialMessage);
    }
  }

  /// Handle foreground messages
  void _handleForegroundMessage(RemoteMessage message) {
    debugPrint('Received foreground message: ${message.messageId}');

    // Parse payload to determine if it's an emergency alert
    final data = message.data;
    if (data.containsKey('alertId')) {
      final payload = AlertNotificationPayload.fromMap(data);
      _onAlertReceived?.call(payload);
    }
  }

  /// Handle notification tap
  void _handleNotificationTap(RemoteMessage message) {
    debugPrint('Notification tapped: ${message.messageId}');

    final data = message.data;
    if (data.containsKey('alertId')) {
      final payload = AlertNotificationPayload.fromMap(data);
      _onAlertTapped?.call(payload);
    }
  }

  /// Callback for when an alert notification is received
  Function(AlertNotificationPayload)? _onAlertReceived;
  Function(AlertNotificationPayload)? _onAlertTapped;

  /// Set callback for incoming alert notifications
  void setOnAlertReceived(Function(AlertNotificationPayload) callback) {
    _onAlertReceived = callback;
  }

  /// Set callback for tapped alert notifications
  void setOnAlertTapped(Function(AlertNotificationPayload) callback) {
    _onAlertTapped = callback;
  }

  /// Get FCM token for this device
  Future<String?> getToken() async {
    return await _messaging.getToken();
  }

  /// Stream of token refreshes
  Stream<String> get onTokenRefresh => _messaging.onTokenRefresh;

  /// Save FCM token to user's document
  Future<void> saveTokenToUser(String userId) async {
    final token = await getToken();
    if (token == null) return;

    await _firestore.collection('users').doc(userId).update({
      'fcmTokens': FieldValue.arrayUnion([token]),
    });

    // Listen for token refreshes
    onTokenRefresh.listen((newToken) async {
      await _firestore.collection('users').doc(userId).update({
        'fcmTokens': FieldValue.arrayUnion([newToken]),
      });
    });
  }

  /// Remove FCM token from user's document (on sign out)
  Future<void> removeTokenFromUser(String userId) async {
    final token = await getToken();
    if (token == null) return;

    await _firestore.collection('users').doc(userId).update({
      'fcmTokens': FieldValue.arrayRemove([token]),
    });
  }

  /// Subscribe to topic for location-based alerts
  Future<void> subscribeToGeohashTopic(String geohash) async {
    // Subscribe to geohash topic for nearby alerts
    // Use first 4-5 chars for broader coverage
    final prefix = geohash.substring(0, 5);
    await _messaging.subscribeToTopic('geohash_$prefix');
  }

  /// Unsubscribe from geohash topic
  Future<void> unsubscribeFromGeohashTopic(String geohash) async {
    final prefix = geohash.substring(0, 5);
    await _messaging.unsubscribeFromTopic('geohash_$prefix');
  }

  /// Subscribe to emergency type topics based on user capabilities
  Future<void> subscribeToCapabilityTopics(List<EmergencyType> capabilities) async {
    for (final type in capabilities) {
      await _messaging.subscribeToTopic('emergency_${type.name}');
    }
  }

  /// Unsubscribe from all capability topics
  Future<void> unsubscribeFromAllCapabilityTopics() async {
    for (final type in EmergencyType.values) {
      await _messaging.unsubscribeFromTopic('emergency_${type.name}');
    }
  }

  /// Check if notifications are enabled
  Future<bool> areNotificationsEnabled() async {
    final settings = await _messaging.getNotificationSettings();
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  /// Request critical alert permission (iOS)
  Future<bool> requestCriticalAlertPermission() async {
    final settings = await _messaging.requestPermission(
      criticalAlert: true,
    );
    return settings.criticalAlert == AppleNotificationSetting.enabled;
  }

  /// Get the notification channel for a criticality level
  static String getChannelForCriticality(CriticalityLevel level) {
    switch (level) {
      case CriticalityLevel.lifeThreatening:
        return NotificationChannels.lifeThreatening;
      case CriticalityLevel.securitySafety:
        return NotificationChannels.securitySafety;
      case CriticalityLevel.urgentTimeSensitive:
        return NotificationChannels.urgentTimeSensitive;
      case CriticalityLevel.nonLifeThreatening:
        return NotificationChannels.nonLifeThreatening;
    }
  }
}

/// Background message handler (must be top-level function)
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('Handling background message: ${message.messageId}');
  // Background handling is done via Cloud Functions
  // This is just for any local processing needed
}

/// Provider for NotificationService
final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService();
});

/// Provider for current FCM token
final fcmTokenProvider = FutureProvider<String?>((ref) async {
  final notificationService = ref.watch(notificationServiceProvider);
  return await notificationService.getToken();
});

/// Provider for notification permission status
final notificationPermissionProvider = FutureProvider<bool>((ref) async {
  final notificationService = ref.watch(notificationServiceProvider);
  return await notificationService.areNotificationsEnabled();
});

/// Stream provider for incoming alert notifications
final incomingAlertStreamProvider = StreamProvider<AlertNotificationPayload?>((ref) {
  final controller = StreamController<AlertNotificationPayload?>.broadcast();
  final notificationService = ref.watch(notificationServiceProvider);

  notificationService.setOnAlertReceived((payload) {
    controller.add(payload);
  });

  ref.onDispose(() {
    controller.close();
  });

  return controller.stream;
});

