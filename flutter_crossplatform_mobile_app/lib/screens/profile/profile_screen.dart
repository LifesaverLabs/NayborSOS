import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'alert_schedule_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.profile),
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
                      label: l10n.responses,
                      value: '0',
                      color: AppTheme.accentBlue,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      icon: Icons.schedule,
                      label: l10n.avgTime,
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
                      title: Text(l10n.myCapabilities),
                      subtitle: Text(l10n.capabilitiesSelected(3)),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to capabilities
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.schedule, color: AppTheme.accentBlue),
                      title: Text(l10n.alertSchedule),
                      subtitle: Text(l10n.setAvailabilityHours),
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
                      title: Text(l10n.trustedResponders),
                      subtitle: Text(l10n.capabilitiesSelected(0)),
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
                      title: Text(l10n.responseHistory),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to history
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.privacy_tip, color: AppTheme.textSecondary),
                      title: Text(l10n.privacyAndSafety),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to privacy settings
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.help_outline, color: AppTheme.textSecondary),
                      title: Text(l10n.helpAndSupport),
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
                      title: Text(l10n.aboutNayborSos),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        _showAboutDialog(context);
                      },
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.policy, color: AppTheme.textSecondary),
                      title: Text(l10n.termsAndPrivacyPolicy),
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
                  child: Text(l10n.signOut),
                ),
              ),

              const SizedBox(height: 16),
              Text(
                l10n.version('1.0.0 (MVP)'),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.aboutNayborSos),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l10n.tagline,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(l10n.aboutDialogContent),
              const SizedBox(height: 16),
              Text(l10n.aboutDialogContent2),
              const SizedBox(height: 16),
              Text(
                l10n.lifesaverLabs,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.close),
          ),
        ],
      ),
    );
  }

  void _showSignOutDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.signOutQuestion),
        content: Text(l10n.signOutConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.signedOutSuccessfully)),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryRed),
            child: Text(l10n.signOut),
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
