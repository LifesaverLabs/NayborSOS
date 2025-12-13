import 'package:flutter/material.dart';
import '../../models/emergency_type.dart';
import '../../theme/app_theme.dart';
import '../home/home_screen.dart';

class CapabilitySelectionScreen extends StatefulWidget {
  const CapabilitySelectionScreen({super.key});

  @override
  State<CapabilitySelectionScreen> createState() => _CapabilitySelectionScreenState();
}

class _CapabilitySelectionScreenState extends State<CapabilitySelectionScreen> {
  final Set<String> _selectedCapabilities = {};

  Color _getCategoryColor(EmergencyCategory category) {
    switch (category) {
      case EmergencyCategory.lifeThreatening:
        return AppTheme.lifeThreatening;
      case EmergencyCategory.securitySafety:
        return AppTheme.securitySafety;
      case EmergencyCategory.urgentTimeSensitive:
        return AppTheme.urgentTimeSensitive;
      case EmergencyCategory.nonLifeThreatening:
        return AppTheme.nonLifeThreatening;
    }
  }

  String _getCategoryLabel(EmergencyCategory category) {
    switch (category) {
      case EmergencyCategory.lifeThreatening:
        return '🔴 Life-Threatening';
      case EmergencyCategory.securitySafety:
        return '🟠 Security/Safety';
      case EmergencyCategory.urgentTimeSensitive:
        return '🟡 Urgent Time-Sensitive';
      case EmergencyCategory.nonLifeThreatening:
        return '🟢 Non-Life-Threatening';
    }
  }

  void _continue() {
    if (_selectedCapabilities.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select at least one capability')),
      );
      return;
    }

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Capabilities'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What can you help with?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Select the types of emergencies you\'re comfortable responding to. You can always change this later.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppTheme.lightBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.info_outline, color: AppTheme.accentBlue, size: 20),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'No training required for MVP - just select what you\'re willing to do',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: AppTheme.darkBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Capabilities List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                children: [
                  for (final category in EmergencyCategory.values) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 8),
                      child: Text(
                        _getCategoryLabel(category),
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: _getCategoryColor(category),
                        ),
                      ),
                    ),
                    for (final type in EmergencyType.byCategory(category))
                      _CapabilityTile(
                        emergencyType: type,
                        isSelected: _selectedCapabilities.contains(type.id),
                        onChanged: (selected) {
                          setState(() {
                            if (selected) {
                              _selectedCapabilities.add(type.id);
                            } else {
                              _selectedCapabilities.remove(type.id);
                            }
                          });
                        },
                      ),
                  ],
                  const SizedBox(height: 24),
                ],
              ),
            ),

            // Bottom Action Bar
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${_selectedCapabilities.length} capabilities selected',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _continue,
                        child: const Text('Complete Setup'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CapabilityTile extends StatelessWidget {
  final EmergencyType emergencyType;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  const _CapabilityTile({
    required this.emergencyType,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: CheckboxListTile(
        value: isSelected,
        onChanged: (value) => onChanged(value ?? false),
        title: Row(
          children: [
            Text(
              emergencyType.icon,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                emergencyType.name(context),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: 36, top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(emergencyType.description(context)),
              if (emergencyType.requiresEquipment) ...[
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.medical_services_outlined, size: 14, color: AppTheme.textSecondary),
                    const SizedBox(width: 4),
                    Text(
                      'Requires: ${emergencyType.equipmentNeeded}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
        activeColor: AppTheme.primaryRed,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
