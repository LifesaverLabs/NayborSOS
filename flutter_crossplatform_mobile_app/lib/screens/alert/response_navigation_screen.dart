import 'package:flutter/material.dart';
import '../../models/emergency_type.dart';
import '../../theme/app_theme.dart';

class ResponseNavigationScreen extends StatefulWidget {
  final EmergencyType emergencyType;
  final String location;

  const ResponseNavigationScreen({
    super.key,
    required this.emergencyType,
    required this.location,
  });

  @override
  State<ResponseNavigationScreen> createState() => _ResponseNavigationScreenState();
}

class _ResponseNavigationScreenState extends State<ResponseNavigationScreen> {
  String _currentStatus = 'On My Way';
  bool _arrived = false;

  void _updateStatus(String status) {
    setState(() {
      _currentStatus = status;
      if (status == 'Arrived') {
        _arrived = true;
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Status updated: $status')),
    );
  }

  void _startNavigation() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Opening maps for navigation...')),
    );
  }

  void _call911() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Call 911?'),
        content: const Text('This will open your phone to call emergency services.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Opening phone to call 911...')),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryRed),
            child: const Text('Call 911'),
          ),
        ],
      ),
    );
  }

  void _markResolved() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Emergency Resolved?'),
        content: const Text('Have you successfully helped resolve the emergency?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Not Yet'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).popUntil((route) => route.isFirst);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Thank you for helping your neighbor!'),
                  duration: Duration(seconds: 3),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.successGreen),
            child: const Text('Yes, Resolved'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responding: ${widget.emergencyType.name}'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Status Card
                    Card(
                      elevation: 4,
                      color: AppTheme.accentBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            const Icon(Icons.info_outline, color: Colors.white, size: 32),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Status: $_currentStatus',
                                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Originator has been notified',
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Navigation Card
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_on, color: AppTheme.primaryRed),
                                const SizedBox(width: 8),
                                Text(
                                  'Destination',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              widget.location,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(Icons.directions_walk, size: 16, color: AppTheme.textSecondary),
                                const SizedBox(width: 4),
                                Text(
                                  '0.3 miles • ~2 min walk',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: _startNavigation,
                                icon: const Icon(Icons.navigation),
                                label: const Text('Start Navigation'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppTheme.accentBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // On-Scene Tips (shown when arrived)
                    if (_arrived) ...[
                      Text(
                        'On-Scene Tips',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 12),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ..._getTipsForEmergency().map((tip) => Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.check_circle_outline,
                                      size: 20,
                                      color: AppTheme.successGreen,
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(child: Text(tip)),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Equipment Reminder
                    if (widget.emergencyType.requiresEquipment) ...[
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppTheme.warningAmber.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppTheme.warningAmber),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.medical_services, color: AppTheme.warningAmber, size: 32),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Equipment Needed',
                                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    widget.emergencyType.equipmentNeeded ?? '',
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Emergency Actions
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.phone, color: AppTheme.primaryRed),
                            title: const Text('Call 911'),
                            subtitle: const Text('If situation is life-threatening'),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: _call911,
                          ),
                          const Divider(height: 1),
                          ListTile(
                            leading: const Icon(Icons.person, color: AppTheme.accentBlue),
                            title: const Text('Call Originator'),
                            subtitle: const Text('Contact person who needs help'),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Opening phone...')),
                              );
                            },
                          ),
                        ],
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
                    if (!_arrived) ...[
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => _updateStatus('Arrived'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.successGreen,
                          ),
                          child: const Text('I\'ve Arrived'),
                        ),
                      ),
                    ] else ...[
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _markResolved,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.successGreen,
                          ),
                          child: const Text('Mark Emergency Resolved'),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _getTipsForEmergency() {
    switch (widget.emergencyType.id) {
      case 'wellness_check':
        return [
          'Knock firmly on the door',
          'Identify yourself as a neighbor checking in',
          'Ask "Are you okay? Do you need help?"',
          'Call 911 if person is injured or unresponsive',
          'Stay with them until help arrives',
        ];
      case 'quit_companion':
        return [
          'Be present and supportive',
          'Help distract from cravings',
          'Go for a walk together if they want',
          'Listen without judgment',
          'Remind them why they\'re quitting',
        ];
      case 'active_bystander':
        return [
          'Your presence alone can de-escalate',
          'Stay visible but at a safe distance',
          'Don\'t take sides or escalate',
          'Call 911 if situation becomes dangerous',
          'Document if safe to do so',
        ];
      default:
        return [
          'Assess the situation safely',
          'Call 911 if needed',
          'Provide comfort and support',
          'Stay until help arrives',
        ];
    }
  }
}
