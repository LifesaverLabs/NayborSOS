import 'emergency_type.dart';

class UserProfile {
  final String id;
  final String name;
  final String? photoUrl;
  final String phoneNumber;
  final String address;
  final int? age;
  final bool isAvailable;
  final List<String> capabilities; // IDs of EmergencyType
  final List<String> trustedResponders; // IDs of other users
  final AlertSchedule alertSchedule;
  final bool isSuspended;
  final String? suspensionReason;

  UserProfile({
    required this.id,
    required this.name,
    this.photoUrl,
    required this.phoneNumber,
    required this.address,
    this.age,
    this.isAvailable = false,
    this.capabilities = const [],
    this.trustedResponders = const [],
    AlertSchedule? alertSchedule,
    this.isSuspended = false,
    this.suspensionReason,
  }) : alertSchedule = alertSchedule ?? AlertSchedule.defaultSchedule();

  bool isQualifiedFor(String emergencyTypeId) {
    return capabilities.contains(emergencyTypeId);
  }

  bool canReceiveAlerts() {
    return !isSuspended && isAvailable;
  }

  UserProfile copyWith({
    String? id,
    String? name,
    String? photoUrl,
    String? phoneNumber,
    String? address,
    int? age,
    bool? isAvailable,
    List<String>? capabilities,
    List<String>? trustedResponders,
    AlertSchedule? alertSchedule,
    bool? isSuspended,
    String? suspensionReason,
  }) {
    return UserProfile(
      id: id ?? this.id,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      age: age ?? this.age,
      isAvailable: isAvailable ?? this.isAvailable,
      capabilities: capabilities ?? this.capabilities,
      trustedResponders: trustedResponders ?? this.trustedResponders,
      alertSchedule: alertSchedule ?? this.alertSchedule,
      isSuspended: isSuspended ?? this.isSuspended,
      suspensionReason: suspensionReason ?? this.suspensionReason,
    );
  }
}

class AlertSchedule {
  final bool lifeThreatening24x7; // Always true for <80
  final bool gentleHoursEnabled; // For 70-79
  final TimeOfDay? wakeTime;
  final TimeOfDay? bedTime;
  final bool securityAlerts24x7;
  final bool disableSecurityAlerts;
  final Map<int, DaySchedule> weeklySchedule; // 1=Monday, 7=Sunday

  AlertSchedule({
    this.lifeThreatening24x7 = true,
    this.gentleHoursEnabled = false,
    this.wakeTime,
    this.bedTime,
    this.securityAlerts24x7 = true,
    this.disableSecurityAlerts = false,
    required this.weeklySchedule,
  });

  factory AlertSchedule.defaultSchedule() {
    return AlertSchedule(
      weeklySchedule: {
        1: DaySchedule(enabled: true, startTime: const TimeOfDay(hour: 18, minute: 0), endTime: const TimeOfDay(hour: 23, minute: 0)), // Mon
        2: DaySchedule(enabled: true, startTime: const TimeOfDay(hour: 18, minute: 0), endTime: const TimeOfDay(hour: 23, minute: 0)), // Tue
        3: DaySchedule(enabled: true, startTime: const TimeOfDay(hour: 18, minute: 0), endTime: const TimeOfDay(hour: 23, minute: 0)), // Wed
        4: DaySchedule(enabled: true, startTime: const TimeOfDay(hour: 18, minute: 0), endTime: const TimeOfDay(hour: 23, minute: 0)), // Thu
        5: DaySchedule(enabled: true, startTime: const TimeOfDay(hour: 18, minute: 0), endTime: const TimeOfDay(hour: 1, minute: 0)), // Fri
        6: DaySchedule.allDay(), // Sat
        7: DaySchedule.allDay(), // Sun
      },
    );
  }

  bool canReceiveAt(DateTime time, EmergencyCategory category) {
    switch (category) {
      case EmergencyCategory.lifeThreatening:
        return lifeThreatening24x7;
      case EmergencyCategory.securitySafety:
        if (disableSecurityAlerts) return false;
        if (securityAlerts24x7) return true;
        return _isWithinSchedule(time);
      case EmergencyCategory.urgentTimeSensitive:
      case EmergencyCategory.nonLifeThreatening:
        return _isWithinSchedule(time);
    }
  }

  bool _isWithinSchedule(DateTime time) {
    final dayOfWeek = time.weekday;
    final daySchedule = weeklySchedule[dayOfWeek];
    if (daySchedule == null || !daySchedule.enabled) return false;
    if (daySchedule.allDay) return true;

    final currentMinutes = time.hour * 60 + time.minute;
    final startMinutes = daySchedule.startTime.hour * 60 + daySchedule.startTime.minute;
    var endMinutes = daySchedule.endTime.hour * 60 + daySchedule.endTime.minute;

    // Handle overnight schedules (e.g., 6pm to 1am)
    if (endMinutes < startMinutes) {
      endMinutes += 24 * 60;
    }

    return currentMinutes >= startMinutes && currentMinutes <= endMinutes;
  }
}

class DaySchedule {
  final bool enabled;
  final bool allDay;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  DaySchedule({
    this.enabled = true,
    this.allDay = false,
    this.startTime = const TimeOfDay(hour: 0, minute: 0),
    this.endTime = const TimeOfDay(hour: 23, minute: 59),
  });

  factory DaySchedule.allDay() {
    return DaySchedule(enabled: true, allDay: true);
  }

  factory DaySchedule.disabled() {
    return DaySchedule(enabled: false);
  }
}

class TimeOfDay {
  final int hour; // 0-23
  final int minute; // 0-59

  const TimeOfDay({required this.hour, required this.minute});

  String format() {
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    final displayMinute = minute.toString().padLeft(2, '0');
    return '$displayHour:$displayMinute $period';
  }
}
