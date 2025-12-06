import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import 'alert_schedule_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Profile Header
              CircleAvatar(
                radius: 50,
                backgroundColor: AppTheme.accentBlue,
                child: const Text(
                  'JD',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'John Doe',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 4),
              Text(
                '(555) 123-4567',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppTheme.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '123 Main St, Apt 4B',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.accentBlue,
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Stats Cards
              Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      icon: Icons.volunteer_activism,
                      label: 'Responses',
                      value: '0',
                      color: AppTheme.accentBlue,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      icon: Icons.schedule,
                      label: 'Avg Time',
                      value: '--',
                      color: AppTheme.successGreen,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Profile Options
              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.medical_services, color: AppTheme.accentBlue),
                      title: const Text('My Capabilities'),
                      subtitle: const Text('3 selected'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to capabilities
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.schedule, color: AppTheme.accentBlue),
                      title: const Text('Alert Schedule'),
                      subtitle: const Text('Set your availability hours'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AlertScheduleScreen(),
                          ),
                        );
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.group, color: AppTheme.accentBlue),
                      title: const Text('Trusted Responders'),
                      subtitle: const Text('0 selected'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to trusted responders
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Settings & Info
              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.history, color: AppTheme.textSecondary),
                      title: const Text('Response History'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to history
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.privacy_tip, color: AppTheme.textSecondary),
                      title: const Text('Privacy & Safety'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to privacy settings
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.help_outline, color: AppTheme.textSecondary),
                      title: const Text('Help & Support'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to help
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // About
              Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.info_outline, color: AppTheme.textSecondary),
                      title: const Text('About Naybor SOS'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        _showAboutDialog(context);
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.policy, color: AppTheme.textSecondary),
                      title: const Text('Terms & Privacy Policy'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Show terms
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Sign Out
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    _showSignOutDialog(context);
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppTheme.primaryRed,
                    side: const BorderSide(color: AppTheme.primaryRed),
                  ),
                  child: const Text('Sign Out'),
                ),
              ),

              const SizedBox(height: 16),
              Text(
                'Version 1.0.0 (MVP)',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('About Naybor SOS'),
        content: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Modern-Day Minutemen & Minutewomen',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Naybor SOS connects neighbors in emergencies, creating a network of '
                'rapid responders who can provide critical aid before professional '
                'first responders arrive.',
              ),
              SizedBox(height: 16),
              Text(
                'Everyone can be a hero. You don\'t need special training to save a life. '
                'Sometimes the most powerful intervention is simply showing up.',
              ),
              SizedBox(height: 16),
              Text(
                'Lifesaver Labs Public Benefit Corporation',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showSignOutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sign Out?'),
        content: const Text('Are you sure you want to sign out?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Signed out successfully')),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryRed),
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, color: color, size: 32),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
