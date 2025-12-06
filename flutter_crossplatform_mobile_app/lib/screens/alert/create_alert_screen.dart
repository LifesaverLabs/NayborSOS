import 'package:flutter/material.dart';
import '../../models/emergency_type.dart';
import '../../theme/app_theme.dart';
import 'alert_status_screen.dart';

class CreateAlertScreen extends StatefulWidget {
  const CreateAlertScreen({super.key});

  @override
  State<CreateAlertScreen> createState() => _CreateAlertScreenState();
}

class _CreateAlertScreenState extends State<CreateAlertScreen> {
  EmergencyType? _selectedType;
  final _descriptionController = TextEditingController();
  bool _alertTrustedFirst = false;

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

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

  void _sendAlert() {
    if (_selectedType == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select an emergency type')),
      );
      return;
    }

    // Navigate to alert status screen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => AlertStatusScreen(
          emergencyType: _selectedType!,
          description: _descriptionController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request Help'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Location Auto-Detected
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.lightBlue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on, color: AppTheme.accentBlue),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Location',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppTheme.darkBlue,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '123 Main St, Apt 4B',
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: AppTheme.accentBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.check_circle, color: AppTheme.successGreen),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  Text(
                    'What do you need help with?',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),

                  // Emergency Type Selection
                  for (final category in EmergencyCategory.values) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 12),
                      child: Text(
                        _getCategoryLabel(category),
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: _getCategoryColor(category),
                        ),
                      ),
                    ),
                    for (final type in EmergencyType.byCategory(category))
                      _EmergencyTypeCard(
                        emergencyType: type,
                        isSelected: _selectedType?.id == type.id,
                        onTap: () {
                          setState(() {
                            _selectedType = type;
                          });
                        },
                      ),
                    const SizedBox(height: 8),
                  ],

                  const SizedBox(height: 24),

                  // Optional Description
                  TextField(
                    controller: _descriptionController,
                    maxLines: 3,
                    maxLength: 100,
                    decoration: const InputDecoration(
                      labelText: 'Additional Details (optional)',
                      hintText: 'Describe the situation...',
                      alignLabelWithHint: true,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Trusted Responders First Option
                  Card(
                    child: CheckboxListTile(
                      value: _alertTrustedFirst,
                      onChanged: (value) {
                        setState(() {
                          _alertTrustedFirst = value ?? false;
                        });
                      },
                      title: const Text('Alert my trusted responders first'),
                      subtitle: const Text(
                        'Your selected friends/family will be notified before the general community',
                      ),
                      activeColor: AppTheme.accentBlue,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Action Bar
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
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
                  if (_selectedType != null) ...[
                    Text(
                      'Sending alert: ${_selectedType!.name}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 12),
                  ],
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: _sendAlert,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryRed,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.emergency, size: 24),
                          const SizedBox(width: 12),
                          Text(
                            'SEND ALERT NOW',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EmergencyTypeCard extends StatelessWidget {
  final EmergencyType emergencyType;
  final bool isSelected;
  final VoidCallback onTap;

  const _EmergencyTypeCard({
    required this.emergencyType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isSelected ? 4 : 1,
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isSelected ? AppTheme.primaryRed : Colors.transparent,
          width: 2,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: isSelected ? AppTheme.primaryRed.withOpacity(0.1) : AppTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    emergencyType.icon,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      emergencyType.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      emergencyType.description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              if (isSelected)
                const Icon(Icons.check_circle, color: AppTheme.primaryRed, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
