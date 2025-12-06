enum EmergencyCategory {
  lifeThreatening,
  securitySafety,
  urgentTimeSensitive,
  nonLifeThreatening,
}

class EmergencyType {
  final String id;
  final String name;
  final String description;
  final String icon;
  final EmergencyCategory category;
  final bool requiresEquipment;
  final String? equipmentNeeded;
  final int trainingLevel; // 1 = basic, 2 = intermediate, 3 = advanced

  const EmergencyType({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.category,
    this.requiresEquipment = false,
    this.equipmentNeeded,
    required this.trainingLevel,
  });

  static const List<EmergencyType> allTypes = [
    // Life-Threatening (Red - Always notify)
    EmergencyType(
      id: 'cpr_cardiac',
      name: 'CPR / Cardiac Arrest',
      description: 'Person is unresponsive and not breathing',
      icon: '❤️',
      category: EmergencyCategory.lifeThreatening,
      trainingLevel: 3,
    ),
    EmergencyType(
      id: 'aed',
      name: 'AED Delivery',
      description: 'Need an AED immediately',
      icon: '⚡',
      category: EmergencyCategory.lifeThreatening,
      requiresEquipment: true,
      equipmentNeeded: 'AED',
      trainingLevel: 3,
    ),
    EmergencyType(
      id: 'overdose',
      name: 'Overdose / Naloxone',
      description: 'Suspected drug overdose, need naloxone',
      icon: '💊',
      category: EmergencyCategory.lifeThreatening,
      requiresEquipment: true,
      equipmentNeeded: 'Naloxone/Narcan',
      trainingLevel: 2,
    ),
    EmergencyType(
      id: 'choking',
      name: 'Choking / Heimlich',
      description: 'Person is choking and cannot breathe',
      icon: '🫁',
      category: EmergencyCategory.lifeThreatening,
      trainingLevel: 2,
    ),
    EmergencyType(
      id: 'fire',
      name: 'Fire / Evacuation',
      description: 'Fire emergency, need evacuation help',
      icon: '🔥',
      category: EmergencyCategory.lifeThreatening,
      trainingLevel: 2,
    ),

    // Security/Safety (Orange - Configurable)
    EmergencyType(
      id: 'consent_emergency',
      name: 'Bedroom Consent Emergency',
      description: 'Safeword called, need witness',
      icon: '🛡️',
      category: EmergencyCategory.securitySafety,
      trainingLevel: 2,
    ),
    EmergencyType(
      id: 'active_bystander',
      name: 'Active Bystander Witness',
      description: 'Need presence to de-escalate conflict',
      icon: '👁️',
      category: EmergencyCategory.securitySafety,
      trainingLevel: 1,
    ),

    // Urgent Time-Sensitive (Amber)
    EmergencyType(
      id: 'missing_pet',
      name: 'Missing Pet',
      description: 'Pet is lost or ran away, need search party',
      icon: '🐕',
      category: EmergencyCategory.urgentTimeSensitive,
      trainingLevel: 1,
    ),

    // Non-Life-Threatening (Green - Respect schedule)
    EmergencyType(
      id: 'wellness_check',
      name: 'Wellness Check',
      description: 'Check on someone who may need help',
      icon: '🚪',
      category: EmergencyCategory.nonLifeThreatening,
      trainingLevel: 1,
    ),
    EmergencyType(
      id: 'quit_companion',
      name: 'Quit Companion',
      description: 'Fighting craving, need support',
      icon: '🚭',
      category: EmergencyCategory.nonLifeThreatening,
      trainingLevel: 1,
    ),
    EmergencyType(
      id: 'companionship',
      name: 'Companionship',
      description: 'Feeling lonely or isolated',
      icon: '🤝',
      category: EmergencyCategory.nonLifeThreatening,
      trainingLevel: 1,
    ),
    EmergencyType(
      id: '911_coordination',
      name: '911 Coordination',
      description: 'Need help calling and coordinating 911',
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
