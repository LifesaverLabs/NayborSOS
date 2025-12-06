import 'package:flutter/material.dart';
import '../../models/emergency_type.dart';
import '../../theme/app_theme.dart';
import 'incoming_alert_screen.dart';

class ActiveAlertsScreen extends StatelessWidget {
  const ActiveAlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Alerts'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Test Alert Button (for demo purposes)
            Container(
              margin: const EdgeInsets.all(24),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.lightBlue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.info_outline, color: AppTheme.accentBlue),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'Demo: Test Alert Flow',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppTheme.darkBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => IncomingAlertScreen(
                              emergencyType: EmergencyType.allTypes[0], // Wellness Check
                              location: '123 Main St, Apt 4B',
                              distance: '0.3 miles away',
                              description: 'Neighbor hasn\'t been seen in 2 days',
                            ),
                          ),
                        );
                      },
                      child: const Text('Simulate Incoming Alert'),
                    ),
                  ),
                ],
              ),
            ),

            // No Active Alerts State
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: AppTheme.backgroundColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        size: 60,
                        color: AppTheme.textDisabled,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'No Active Alerts',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48.0),
                      child: Text(
                        'You\'ll see emergency alerts here when neighbors need help',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
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
