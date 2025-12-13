import 'package:flutter/material.dart';
import 'package:NayborSOS/generated/l10n/app_localizations.dart';

enum EmergencyCategory {
  lifeThreatening,
  securitySafety,
  urgentTimeSensitive,
  nonLifeThreatening,
}

class EmergencyType {
  final String id;
  final String nameKey;
  final String descriptionKey;
  final String icon;
  final EmergencyCategory category;
  final bool requiresEquipment;
  final String? equipmentKey;
  final int trainingLevel; // 1 = basic, 2 = intermediate, 3 = advanced

  const EmergencyType({
    required this.id,
    required this.nameKey,
    required this.descriptionKey,
    required this.icon,
    required this.category,
    this.requiresEquipment = false,
    this.equipmentKey,
    required this.trainingLevel,
  });

  // Get localized name
  String name(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (id) {
      case 'cpr_cardiac':
        return l10n.emergencyCprCardiacName;
      case 'aed':
        return l10n.emergencyAedName;
      case 'overdose':
        return l10n.emergencyOverdoseName;
      case 'choking':
        return l10n.emergencyChokingName;
      case 'fire':
        return l10n.emergencyFireName;
      case 'consent_emergency':
        return l10n.emergencyConsentName;
      case 'active_bystander':
        return l10n.emergencyBystanderName;
      case 'missing_pet':
        return l10n.emergencyMissingPetName;
      case 'wellness_check':
        return l10n.emergencyWellnessCheckName;
      case 'quit_companion':
        return l10n.emergencyQuitCompanionName;
      case 'companionship':
        return l10n.emergencyCompanionshipName;
      case '911_coordination':
        return l10n.emergency911CoordinationName;
      default:
        return nameKey;
    }
  }

  // Get localized description
  String description(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (id) {
      case 'cpr_cardiac':
        return l10n.emergencyCprCardiacDesc;
      case 'aed':
        return l10n.emergencyAedDesc;
      case 'overdose':
        return l10n.emergencyOverdoseDesc;
      case 'choking':
        return l10n.emergencyChokingDesc;
      case 'fire':
        return l10n.emergencyFireDesc;
      case 'consent_emergency':
        return l10n.emergencyConsentDesc;
      case 'active_bystander':
        return l10n.emergencyBystanderDesc;
      case 'missing_pet':
        return l10n.emergencyMissingPetDesc;
      case 'wellness_check':
        return l10n.emergencyWellnessCheckDesc;
      case 'quit_companion':
        return l10n.emergencyQuitCompanionDesc;
      case 'companionship':
        return l10n.emergencyCompanionshipDesc;
      case '911_coordination':
        return l10n.emergency911CoordinationDesc;
      default:
        return descriptionKey;
    }
  }

  // Get localized equipment name if needed
  String? equipmentNeeded(BuildContext context) {
    if (!requiresEquipment || equipmentKey == null) return null;
    final l10n = AppLocalizations.of(context)!;
    switch (equipmentKey) {
      case 'AED':
        return l10n.equipmentAed;
      case 'Naloxone/Narcan':
        return l10n.equipmentNaloxone;
      default:
        return equipmentKey;
    }
  }

  static const List<EmergencyType> allTypes = [
    // Life-Threatening (Red - Always notify)
    EmergencyType(
      id: 'cpr_cardiac',
      nameKey: 'CPR / Cardiac Arrest',
      descriptionKey: 'Person is unresponsive and not breathing',
      icon: '❤️',
      category: EmergencyCategory.lifeThreatening,
      trainingLevel: 3,
    ),
    EmergencyType(
      id: 'aed',
      nameKey: 'AED Delivery',
      descriptionKey: 'Need an AED immediately',
      icon: '⚡',
      category: EmergencyCategory.lifeThreatening,
      requiresEquipment: true,
      equipmentKey: 'AED',
      trainingLevel: 3,
    ),
    EmergencyType(
      id: 'overdose',
      nameKey: 'Overdose / Naloxone',
      descriptionKey: 'Suspected drug overdose, need naloxone',
      icon: '💊',
      category: EmergencyCategory.lifeThreatening,
      requiresEquipment: true,
      equipmentKey: 'Naloxone/Narcan',
      trainingLevel: 2,
    ),
    EmergencyType(
      id: 'choking',
      nameKey: 'Choking / Heimlich',
      descriptionKey: 'Person is choking and cannot breathe',
      icon: '🫁',
      category: EmergencyCategory.lifeThreatening,
      trainingLevel: 2,
    ),
    EmergencyType(
      id: 'fire',
      nameKey: 'Fire / Evacuation',
      descriptionKey: 'Fire emergency, need evacuation help',
      icon: '🔥',
      category: EmergencyCategory.lifeThreatening,
      trainingLevel: 2,
    ),

    // Security/Safety (Orange - Configurable)
    EmergencyType(
      id: 'consent_emergency',
      nameKey: 'Bedroom Consent Emergency',
      descriptionKey: 'Safeword called, need witness',
      icon: '🛡️',
      category: EmergencyCategory.securitySafety,
      trainingLevel: 2,
    ),
    EmergencyType(
      id: 'active_bystander',
      nameKey: 'Active Bystander Witness',
      descriptionKey: 'Need presence to de-escalate conflict',
      icon: '👁️',
      category: EmergencyCategory.securitySafety,
      trainingLevel: 1,
    ),

    // Urgent Time-Sensitive (Amber)
    EmergencyType(
      id: 'missing_pet',
      nameKey: 'Missing Pet',
      descriptionKey: 'Pet is lost or ran away, need search party',
      icon: '🐕',
      category: EmergencyCategory.urgentTimeSensitive,
      trainingLevel: 1,
    ),

    // Non-Life-Threatening (Green - Respect schedule)
    EmergencyType(
      id: 'wellness_check',
      nameKey: 'Wellness Check',
      descriptionKey: 'Check on someone who may need help',
      icon: '🚪',
      category: EmergencyCategory.nonLifeThreatening,
      trainingLevel: 1,
    ),
    EmergencyType(
      id: 'quit_companion',
      nameKey: 'Quit Companion',
      descriptionKey: 'Fighting craving, need support',
      icon: '🚭',
      category: EmergencyCategory.nonLifeThreatening,
      trainingLevel: 1,
    ),
    EmergencyType(
      id: 'companionship',
      nameKey: 'Companionship',
      descriptionKey: 'Feeling lonely or isolated',
      icon: '🤝',
      category: EmergencyCategory.nonLifeThreatening,
      trainingLevel: 1,
    ),
    EmergencyType(
      id: '911_coordination',
      nameKey: '911 Coordination',
      descriptionKey: 'Need help calling and coordinating 911',
      icon: '📞',
      category: EmergencyCategory.nonLifeThreatening,
      trainingLevel: 1,
    ),
  ];

  static List<EmergencyType> byCategory(EmergencyCategory category) {
    return allTypes.where((type) => type.category == category).toList();
  }

  static EmergencyType? findById(String id) {
    return allTypes.cast<EmergencyType?>().firstWhere(
      (type) => type?.id == id,
      orElse: () => null,
    );
  }
}
