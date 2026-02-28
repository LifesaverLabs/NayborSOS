import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'emergency_type.dart';

/// Represents a user's address (privacy-preserving - no exact coordinates)
class UserAddress extends Equatable {
  final String? street; // Optional, for display only
  final String city;
  final String state;
  final String zipCode;
  final String country;

  const UserAddress({
    this.street,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.country,
  });

  factory UserAddress.fromMap(Map<String, dynamic> map) {
    return UserAddress(
      street: map['street'] as String?,
      city: map['city'] as String? ?? '',
      state: map['state'] as String? ?? '',
      zipCode: map['zipCode'] as String? ?? '',
      country: map['country'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      if (street != null) 'street': street,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'country': country,
    };
  }

  @override
  List<Object?> get props => [street, city, state, zipCode, country];
}

/// User availability status
class AvailabilityStatus extends Equatable {
  final bool isAvailable;
  final DateTime lastUpdated;
  final SuspensionReason? suspensionReason;
  final DateTime? suspendedUntil;

  const AvailabilityStatus({
    required this.isAvailable,
    required this.lastUpdated,
    this.suspensionReason,
    this.suspendedUntil,
  });

  factory AvailabilityStatus.fromMap(Map<String, dynamic> map) {
    return AvailabilityStatus(
      isAvailable: map['isAvailable'] as bool? ?? false,
      lastUpdated: (map['lastUpdated'] as Timestamp?)?.toDate() ?? DateTime.now(),
      suspensionReason: map['suspensionReason'] != null
          ? SuspensionReason.values.firstWhere(
              (e) => e.name == map['suspensionReason'],
              orElse: () => SuspensionReason.other,
            )
          : null,
      suspendedUntil: (map['suspendedUntil'] as Timestamp?)?.toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isAvailable': isAvailable,
      'lastUpdated': Timestamp.fromDate(lastUpdated),
      if (suspensionReason != null) 'suspensionReason': suspensionReason!.name,
      if (suspendedUntil != null)
        'suspendedUntil': Timestamp.fromDate(suspendedUntil!),
    };
  }

  AvailabilityStatus copyWith({
    bool? isAvailable,
    DateTime? lastUpdated,
    SuspensionReason? suspensionReason,
    DateTime? suspendedUntil,
    bool clearSuspension = false,
  }) {
    return AvailabilityStatus(
      isAvailable: isAvailable ?? this.isAvailable,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      suspensionReason:
          clearSuspension ? null : (suspensionReason ?? this.suspensionReason),
      suspendedUntil:
          clearSuspension ? null : (suspendedUntil ?? this.suspendedUntil),
    );
  }

  @override
  List<Object?> get props =>
      [isAvailable, lastUpdated, suspensionReason, suspendedUntil];
}

/// Reasons for temporary suspension
enum SuspensionReason {
  hospitalized,
  immobilized,
  inCustody,
  other,
}

/// Time range for alert schedule
class TimeRange extends Equatable {
  final String startTime; // Format: "HH:mm" (e.g., "18:00")
  final String endTime; // Format: "HH:mm" (e.g., "23:00")
  final bool enabled;

  const TimeRange({
    required this.startTime,
    required this.endTime,
    required this.enabled,
  });

  factory TimeRange.fromMap(Map<String, dynamic> map) {
    return TimeRange(
      startTime: map['startTime'] as String? ?? '18:00',
      endTime: map['endTime'] as String? ?? '23:00',
      enabled: map['enabled'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'startTime': startTime,
      'endTime': endTime,
      'enabled': enabled,
    };
  }

  @override
  List<Object?> get props => [startTime, endTime, enabled];
}

/// Weekly alert schedule
class AlertSchedule extends Equatable {
  final TimeRange monday;
  final TimeRange tuesday;
  final TimeRange wednesday;
  final TimeRange thursday;
  final TimeRange friday;
  final TimeRange saturday;
  final TimeRange sunday;

  const AlertSchedule({
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
  });

  /// Default schedule: weeknights 6pm-11pm, weekends all day
  factory AlertSchedule.defaultSchedule() {
    const weeknight = TimeRange(
      startTime: '18:00',
      endTime: '23:00',
      enabled: true,
    );
    const weekend = TimeRange(
      startTime: '08:00',
      endTime: '23:00',
      enabled: true,
    );
    return AlertSchedule(
      monday: weeknight,
      tuesday: weeknight,
      wednesday: weeknight,
      thursday: weeknight,
      friday: weeknight,
      saturday: weekend,
      sunday: weekend,
    );
  }

  factory AlertSchedule.fromMap(Map<String, dynamic> map) {
    return AlertSchedule(
      monday: TimeRange.fromMap(map['monday'] as Map<String, dynamic>? ?? {}),
      tuesday: TimeRange.fromMap(map['tuesday'] as Map<String, dynamic>? ?? {}),
      wednesday:
          TimeRange.fromMap(map['wednesday'] as Map<String, dynamic>? ?? {}),
      thursday:
          TimeRange.fromMap(map['thursday'] as Map<String, dynamic>? ?? {}),
      friday: TimeRange.fromMap(map['friday'] as Map<String, dynamic>? ?? {}),
      saturday:
          TimeRange.fromMap(map['saturday'] as Map<String, dynamic>? ?? {}),
      sunday: TimeRange.fromMap(map['sunday'] as Map<String, dynamic>? ?? {}),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'monday': monday.toMap(),
      'tuesday': tuesday.toMap(),
      'wednesday': wednesday.toMap(),
      'thursday': thursday.toMap(),
      'friday': friday.toMap(),
      'saturday': saturday.toMap(),
      'sunday': sunday.toMap(),
    };
  }

  /// Get time range for a specific day (1 = Monday, 7 = Sunday)
  TimeRange getForDay(int weekday) {
    switch (weekday) {
      case 1:
        return monday;
      case 2:
        return tuesday;
      case 3:
        return wednesday;
      case 4:
        return thursday;
      case 5:
        return friday;
      case 6:
        return saturday;
      case 7:
        return sunday;
      default:
        return monday;
    }
  }

  @override
  List<Object?> get props =>
      [monday, tuesday, wednesday, thursday, friday, saturday, sunday];
}

/// User settings
class UserSettings extends Equatable {
  final String language;
  final bool notificationsEnabled;
  final TimeRange? gentleHours; // For 70+ users
  final bool disableInboundAlerts; // For 80+ users
  final int weeklyNonCriticalLimit; // Default 5

  const UserSettings({
    required this.language,
    required this.notificationsEnabled,
    this.gentleHours,
    this.disableInboundAlerts = false,
    this.weeklyNonCriticalLimit = 5,
  });

  factory UserSettings.defaultSettings() {
    return const UserSettings(
      language: 'en',
      notificationsEnabled: true,
      disableInboundAlerts: false,
      weeklyNonCriticalLimit: 5,
    );
  }

  factory UserSettings.fromMap(Map<String, dynamic> map) {
    return UserSettings(
      language: map['language'] as String? ?? 'en',
      notificationsEnabled: map['notificationsEnabled'] as bool? ?? true,
      gentleHours: map['gentleHours'] != null
          ? TimeRange.fromMap(map['gentleHours'] as Map<String, dynamic>)
          : null,
      disableInboundAlerts: map['disableInboundAlerts'] as bool? ?? false,
      weeklyNonCriticalLimit: map['weeklyNonCriticalLimit'] as int? ?? 5,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'language': language,
      'notificationsEnabled': notificationsEnabled,
      if (gentleHours != null) 'gentleHours': gentleHours!.toMap(),
      'disableInboundAlerts': disableInboundAlerts,
      'weeklyNonCriticalLimit': weeklyNonCriticalLimit,
    };
  }

  UserSettings copyWith({
    String? language,
    bool? notificationsEnabled,
    TimeRange? gentleHours,
    bool? disableInboundAlerts,
    int? weeklyNonCriticalLimit,
  }) {
    return UserSettings(
      language: language ?? this.language,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      gentleHours: gentleHours ?? this.gentleHours,
      disableInboundAlerts: disableInboundAlerts ?? this.disableInboundAlerts,
      weeklyNonCriticalLimit:
          weeklyNonCriticalLimit ?? this.weeklyNonCriticalLimit,
    );
  }

  @override
  List<Object?> get props => [
        language,
        notificationsEnabled,
        gentleHours,
        disableInboundAlerts,
        weeklyNonCriticalLimit,
      ];
}

/// User capability for a specific emergency type
class UserCapability extends Equatable {
  final EmergencyType type;
  final ResponseTier tier;
  final bool certified;
  final DateTime? certifiedAt;
  final DateTime? certificationExpires;
  final bool hasEquipment;
  final int weeklyLimit;
  final int alertsThisWeek;
  final DateTime? lastWeekReset;
  final DateTime addedAt;
  final DateTime updatedAt;

  const UserCapability({
    required this.type,
    required this.tier,
    this.certified = false,
    this.certifiedAt,
    this.certificationExpires,
    this.hasEquipment = false,
    this.weeklyLimit = 5,
    this.alertsThisWeek = 0,
    this.lastWeekReset,
    required this.addedAt,
    required this.updatedAt,
  });

  factory UserCapability.fromMap(Map<String, dynamic> map) {
    return UserCapability(
      type: EmergencyType.values.firstWhere(
        (e) => e.name == map['type'],
        orElse: () => EmergencyType.wellnessCheck,
      ),
      tier: ResponseTier.values.firstWhere(
        (e) => e.name == map['tier'],
        orElse: () => ResponseTier.basic,
      ),
      certified: map['certified'] as bool? ?? false,
      certifiedAt: (map['certifiedAt'] as Timestamp?)?.toDate(),
      certificationExpires:
          (map['certificationExpires'] as Timestamp?)?.toDate(),
      hasEquipment: map['hasEquipment'] as bool? ?? false,
      weeklyLimit: map['weeklyLimit'] as int? ?? 5,
      alertsThisWeek: map['alertsThisWeek'] as int? ?? 0,
      lastWeekReset: (map['lastWeekReset'] as Timestamp?)?.toDate(),
      addedAt:
          (map['addedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      updatedAt:
          (map['updatedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type.name,
      'tier': tier.name,
      'certified': certified,
      if (certifiedAt != null) 'certifiedAt': Timestamp.fromDate(certifiedAt!),
      if (certificationExpires != null)
        'certificationExpires': Timestamp.fromDate(certificationExpires!),
      'hasEquipment': hasEquipment,
      'weeklyLimit': weeklyLimit,
      'alertsThisWeek': alertsThisWeek,
      if (lastWeekReset != null)
        'lastWeekReset': Timestamp.fromDate(lastWeekReset!),
      'addedAt': Timestamp.fromDate(addedAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }

  @override
  List<Object?> get props => [
        type,
        tier,
        certified,
        certifiedAt,
        certificationExpires,
        hasEquipment,
        weeklyLimit,
        alertsThisWeek,
        lastWeekReset,
        addedAt,
        updatedAt,
      ];
}

/// Main user profile model
class UserModel extends Equatable {
  final String userId;
  final String phoneNumber;
  final String firstName;
  final String lastName;
  final int? age;
  final String? photoUrl;
  final UserAddress address;
  final AvailabilityStatus availability;
  final AlertSchedule alertSchedule;
  final UserSettings settings;
  final List<String> trustedResponders;
  final bool liabilityWaiverAccepted;
  final bool termsAccepted;
  final DateTime createdAt;
  final DateTime updatedAt;

  const UserModel({
    required this.userId,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    this.age,
    this.photoUrl,
    required this.address,
    required this.availability,
    required this.alertSchedule,
    required this.settings,
    this.trustedResponders = const [],
    this.liabilityWaiverAccepted = false,
    this.termsAccepted = false,
    required this.createdAt,
    required this.updatedAt,
  });

  String get fullName => '$firstName $lastName';

  /// Check if user is 70+ (eligible for gentle hours)
  bool get isEligibleForGentleHours => age != null && age! >= 70;

  /// Check if user is 80+ (can disable all inbound alerts)
  bool get canDisableInboundAlerts => age != null && age! >= 80;

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserModel(
      userId: doc.id,
      phoneNumber: data['phoneNumber'] as String? ?? '',
      firstName: data['firstName'] as String? ?? '',
      lastName: data['lastName'] as String? ?? '',
      age: data['age'] as int?,
      photoUrl: data['photoUrl'] as String?,
      address:
          UserAddress.fromMap(data['address'] as Map<String, dynamic>? ?? {}),
      availability: AvailabilityStatus.fromMap(
          data['availability'] as Map<String, dynamic>? ?? {}),
      alertSchedule: data['alertSchedule'] != null
          ? AlertSchedule.fromMap(
              data['alertSchedule'] as Map<String, dynamic>)
          : AlertSchedule.defaultSchedule(),
      settings: data['settings'] != null
          ? UserSettings.fromMap(data['settings'] as Map<String, dynamic>)
          : UserSettings.defaultSettings(),
      trustedResponders:
          (data['trustedResponders'] as List<dynamic>?)?.cast<String>() ?? [],
      liabilityWaiverAccepted:
          data['liabilityWaiverAccepted'] as bool? ?? false,
      termsAccepted: data['termsAccepted'] as bool? ?? false,
      createdAt:
          (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      updatedAt:
          (data['updatedAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'phoneNumber': phoneNumber,
      'firstName': firstName,
      'lastName': lastName,
      if (age != null) 'age': age,
      if (photoUrl != null) 'photoUrl': photoUrl,
      'address': address.toMap(),
      'availability': availability.toMap(),
      'alertSchedule': alertSchedule.toMap(),
      'settings': settings.toMap(),
      'trustedResponders': trustedResponders,
      'liabilityWaiverAccepted': liabilityWaiverAccepted,
      'termsAccepted': termsAccepted,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }

  UserModel copyWith({
    String? userId,
    String? phoneNumber,
    String? firstName,
    String? lastName,
    int? age,
    String? photoUrl,
    UserAddress? address,
    AvailabilityStatus? availability,
    AlertSchedule? alertSchedule,
    UserSettings? settings,
    List<String>? trustedResponders,
    bool? liabilityWaiverAccepted,
    bool? termsAccepted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      photoUrl: photoUrl ?? this.photoUrl,
      address: address ?? this.address,
      availability: availability ?? this.availability,
      alertSchedule: alertSchedule ?? this.alertSchedule,
      settings: settings ?? this.settings,
      trustedResponders: trustedResponders ?? this.trustedResponders,
      liabilityWaiverAccepted:
          liabilityWaiverAccepted ?? this.liabilityWaiverAccepted,
      termsAccepted: termsAccepted ?? this.termsAccepted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        userId,
        phoneNumber,
        firstName,
        lastName,
        age,
        photoUrl,
        address,
        availability,
        alertSchedule,
        settings,
        trustedResponders,
        liabilityWaiverAccepted,
        termsAccepted,
        createdAt,
        updatedAt,
      ];
}
