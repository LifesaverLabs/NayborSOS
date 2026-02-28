import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

/// Emergency criticality levels for alert categorization
enum CriticalityLevel {
  /// Life-threatening emergencies - always alert 24/7, cannot disable
  lifeThreatening,

  /// Security/safety emergencies - alert by default, can configure
  securitySafety,

  /// Urgent time-sensitive situations - respect schedule with flexibility
  urgentTimeSensitive,

  /// Non-life-threatening - respect user schedule
  nonLifeThreatening,
}

/// Response tier indicating training/equipment requirements
enum ResponseTier {
  /// Tier 1: No special training required (orientation video only)
  basic,

  /// Tier 2: Moderate training (10-20 min videos + quiz)
  intermediate,

  /// Tier 3: Specialized skills/equipment
  advanced,
}

/// All emergency types supported by NayborSOS
enum EmergencyType {
  // Life-Threatening (Red)
  cardiacArrest,
  aedDelivery,
  overdose,
  choking,
  drowning,
  fire,

  // Security/Safety (Orange)
  consentEmergency,
  activeBystander,
  domesticAbuse,

  // Urgent Time-Sensitive (Amber)
  missingPet,

  // Non-Life-Threatening (Green)
  wellnessCheck,
  mentalHealth,
  quitCompanion,
  companionship,
  coordination911,
}

/// Extension to provide metadata for each emergency type
extension EmergencyTypeExtension on EmergencyType {
  /// Localization key for the emergency type name
  String get localizationKey {
    switch (this) {
      case EmergencyType.cardiacArrest:
        return 'alertCardiacArrest';
      case EmergencyType.aedDelivery:
        return 'alertAed';
      case EmergencyType.overdose:
        return 'alertOverdose';
      case EmergencyType.choking:
        return 'alertChoking';
      case EmergencyType.drowning:
        return 'alertDrowning';
      case EmergencyType.fire:
        return 'alertFire';
      case EmergencyType.consentEmergency:
        return 'alertConsentEmergency';
      case EmergencyType.activeBystander:
        return 'alertActiveBystander';
      case EmergencyType.domesticAbuse:
        return 'alertDomesticAbuse';
      case EmergencyType.wellnessCheck:
        return 'alertWellnessCheck';
      case EmergencyType.mentalHealth:
        return 'alertMentalHealth';
      case EmergencyType.quitCompanion:
        return 'alertQuitCompanion';
      case EmergencyType.companionship:
        return 'alertCompanionship';
      case EmergencyType.coordination911:
        return 'alert911Coordination';
      case EmergencyType.missingPet:
        return 'alertMissingPet';
    }
  }

  /// Localization key for the emergency type description
  String get descriptionKey {
    switch (this) {
      case EmergencyType.cardiacArrest:
        return 'alertCardiacArrestDesc';
      case EmergencyType.aedDelivery:
        return 'alertAedDesc';
      case EmergencyType.overdose:
        return 'alertOverdoseDesc';
      case EmergencyType.choking:
        return 'alertChokingDesc';
      case EmergencyType.drowning:
        return 'alertDrowningDesc';
      case EmergencyType.fire:
        return 'alertFireDesc';
      case EmergencyType.consentEmergency:
        return 'alertConsentEmergencyDesc';
      case EmergencyType.activeBystander:
        return 'alertActiveBystanderDesc';
      case EmergencyType.domesticAbuse:
        return 'alertDomesticAbuseDesc';
      case EmergencyType.wellnessCheck:
        return 'alertWellnessCheckDesc';
      case EmergencyType.mentalHealth:
        return 'alertMentalHealthDesc';
      case EmergencyType.quitCompanion:
        return 'alertQuitCompanionDesc';
      case EmergencyType.companionship:
        return 'alertCompanionshipDesc';
      case EmergencyType.coordination911:
        return 'alert911CoordinationDesc';
      case EmergencyType.missingPet:
        return 'alertMissingPetDesc';
    }
  }

  /// Icon for this emergency type
  IconData get icon {
    switch (this) {
      case EmergencyType.cardiacArrest:
        return Icons.favorite;
      case EmergencyType.aedDelivery:
        return Icons.electrical_services;
      case EmergencyType.overdose:
        return Icons.medical_services;
      case EmergencyType.choking:
        return Icons.air;
      case EmergencyType.drowning:
        return Icons.pool;
      case EmergencyType.fire:
        return Icons.local_fire_department;
      case EmergencyType.consentEmergency:
        return Icons.shield;
      case EmergencyType.activeBystander:
        return Icons.visibility;
      case EmergencyType.domesticAbuse:
        return Icons.home;
      case EmergencyType.wellnessCheck:
        return Icons.health_and_safety;
      case EmergencyType.mentalHealth:
        return Icons.psychology;
      case EmergencyType.quitCompanion:
        return Icons.smoke_free;
      case EmergencyType.companionship:
        return Icons.people;
      case EmergencyType.coordination911:
        return Icons.phone_in_talk;
      case EmergencyType.missingPet:
        return Icons.pets;
    }
  }

  /// Criticality level for this emergency type
  CriticalityLevel get criticalityLevel {
    switch (this) {
      case EmergencyType.cardiacArrest:
      case EmergencyType.aedDelivery:
      case EmergencyType.overdose:
      case EmergencyType.choking:
      case EmergencyType.drowning:
      case EmergencyType.fire:
        return CriticalityLevel.lifeThreatening;
      case EmergencyType.consentEmergency:
      case EmergencyType.activeBystander:
      case EmergencyType.domesticAbuse:
        return CriticalityLevel.securitySafety;
      case EmergencyType.missingPet:
        return CriticalityLevel.urgentTimeSensitive;
      case EmergencyType.wellnessCheck:
      case EmergencyType.mentalHealth:
      case EmergencyType.quitCompanion:
      case EmergencyType.companionship:
      case EmergencyType.coordination911:
        return CriticalityLevel.nonLifeThreatening;
    }
  }

  /// Response tier required for this emergency type
  ResponseTier get responseTier {
    switch (this) {
      case EmergencyType.cardiacArrest:
      case EmergencyType.aedDelivery:
      case EmergencyType.drowning:
        return ResponseTier.advanced;
      case EmergencyType.overdose:
      case EmergencyType.choking:
      case EmergencyType.fire:
      case EmergencyType.consentEmergency:
      case EmergencyType.domesticAbuse:
      case EmergencyType.mentalHealth:
        return ResponseTier.intermediate;
      case EmergencyType.activeBystander:
      case EmergencyType.wellnessCheck:
      case EmergencyType.quitCompanion:
      case EmergencyType.companionship:
      case EmergencyType.coordination911:
      case EmergencyType.missingPet:
        return ResponseTier.basic;
    }
  }

  /// Color for this emergency type based on criticality
  Color get color {
    switch (criticalityLevel) {
      case CriticalityLevel.lifeThreatening:
        return AppColors.emergencyRed;
      case CriticalityLevel.securitySafety:
        return AppColors.safetyOrange;
      case CriticalityLevel.urgentTimeSensitive:
        return AppColors.warningAmber;
      case CriticalityLevel.nonLifeThreatening:
        return AppColors.successGreen;
    }
  }

  /// Maximum number of responders beneficial for this type
  int get maxResponders {
    switch (criticalityLevel) {
      case CriticalityLevel.lifeThreatening:
        return 3; // Multiple helpers beneficial
      case CriticalityLevel.securitySafety:
        return 2; // Limited to avoid crowds
      case CriticalityLevel.urgentTimeSensitive:
        return 10; // More eyes better for search
      case CriticalityLevel.nonLifeThreatening:
        return 1; // Typically one is enough
    }
  }

  /// Whether this emergency type requires equipment
  bool get requiresEquipment {
    switch (this) {
      case EmergencyType.aedDelivery:
      case EmergencyType.overdose:
        return true;
      default:
        return false;
    }
  }

  /// Equipment type required (if any)
  String? get requiredEquipment {
    switch (this) {
      case EmergencyType.aedDelivery:
        return 'aed';
      case EmergencyType.overdose:
        return 'naloxone';
      default:
        return null;
    }
  }

  /// Whether 911 should definitely be called for this type
  bool get requires911 {
    return criticalityLevel == CriticalityLevel.lifeThreatening;
  }
}

/// Extension for criticality level metadata
extension CriticalityLevelExtension on CriticalityLevel {
  /// Localization key for this criticality level
  String get localizationKey {
    switch (this) {
      case CriticalityLevel.lifeThreatening:
        return 'lifeThreatening';
      case CriticalityLevel.securitySafety:
        return 'securitySafety';
      case CriticalityLevel.urgentTimeSensitive:
        return 'urgentTimeSensitive';
      case CriticalityLevel.nonLifeThreatening:
        return 'nonLifeThreatening';
    }
  }

  /// Color for this criticality level
  Color get color {
    switch (this) {
      case CriticalityLevel.lifeThreatening:
        return AppColors.emergencyRed;
      case CriticalityLevel.securitySafety:
        return AppColors.safetyOrange;
      case CriticalityLevel.urgentTimeSensitive:
        return AppColors.warningAmber;
      case CriticalityLevel.nonLifeThreatening:
        return AppColors.successGreen;
    }
  }

  /// Whether alerts of this criticality bypass user schedule
  bool get bypassesSchedule {
    return this == CriticalityLevel.lifeThreatening;
  }

  /// Whether alerts of this criticality can be disabled
  bool get canBeDisabled {
    return this != CriticalityLevel.lifeThreatening;
  }
}

/// Get emergency types grouped by criticality level
Map<CriticalityLevel, List<EmergencyType>> get emergencyTypesByCategory {
  return {
    CriticalityLevel.lifeThreatening: EmergencyType.values
        .where((e) => e.criticalityLevel == CriticalityLevel.lifeThreatening)
        .toList(),
    CriticalityLevel.securitySafety: EmergencyType.values
        .where((e) => e.criticalityLevel == CriticalityLevel.securitySafety)
        .toList(),
    CriticalityLevel.urgentTimeSensitive: EmergencyType.values
        .where(
            (e) => e.criticalityLevel == CriticalityLevel.urgentTimeSensitive)
        .toList(),
    CriticalityLevel.nonLifeThreatening: EmergencyType.values
        .where((e) => e.criticalityLevel == CriticalityLevel.nonLifeThreatening)
        .toList(),
  };
}
