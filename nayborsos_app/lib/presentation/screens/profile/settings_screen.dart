import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/services/auth_service.dart';
import '../../../data/services/notification_service.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  bool _isSigningOut = false;

  Future<void> _signOut() async {
    if (_isSigningOut) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        return AlertDialog(
          title: Text(l10n.signOutButton),
          content: const Text('Are you sure you want to sign out?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(l10n.cancelButton),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(l10n.signOutButton),
            ),
          ],
        );
      },
    );

    if (confirmed != true) return;

    setState(() => _isSigningOut = true);

    try {
      final authService = ref.read(authServiceProvider);
      final notificationService = ref.read(notificationServiceProvider);

      // Remove FCM token
      final user = authService.currentUser;
      if (user != null) {
        await notificationService.removeTokenFromUser(user.uid);
      }

      await authService.signOut();

      if (mounted) {
        context.go(AppRoutes.welcome);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
        setState(() => _isSigningOut = false);
      }
    }
  }

  Future<void> _deleteAccount() async {
    final l10n = AppLocalizations.of(context)!;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.deleteAccountButton),
        content: Text(l10n.deleteAccountConfirmation),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.cancelButton),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(l10n.deleteAccountButton),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    try {
      final authService = ref.read(authServiceProvider);
      final userRepo = ref.read(userRepositoryProvider);

      final user = authService.currentUser;
      if (user != null) {
        await userRepo.deleteUser(user.uid);
        await authService.deleteAccount();
      }

      if (mounted) {
        context.go(AppRoutes.welcome);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final userAsync = ref.watch(currentUserProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsTitle),
      ),
      body: userAsync.when(
        data: (user) {
          if (user == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView(
            children: [
              // Notifications section
              _SectionHeader(title: l10n.notificationsTitle),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: SwitchListTile(
                  title: Text(l10n.enableNotifications),
                  value: user.settings.notificationsEnabled,
                  onChanged: (value) async {
                    final userRepo = ref.read(userRepositoryProvider);
                    await userRepo.updateSettings(
                      user.userId,
                      user.settings.copyWith(notificationsEnabled: value),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Alert settings
              _SectionHeader(title: l10n.alertScheduleTitle),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  title: Text(l10n.alertScheduleTitle),
                  subtitle: Text(l10n.alertScheduleSubtitle),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.push(AppRoutes.alertSchedule),
                ),
              ),
              const SizedBox(height: 8),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  title: Text(l10n.myCapabilities),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.push(AppRoutes.capabilities),
                ),
              ),
              // Gentle hours for 70+
              if (user.isEligibleForGentleHours) ...[
                const SizedBox(height: 16),
                _SectionHeader(title: l10n.gentleHoursTitle),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: SwitchListTile(
                    title: Text(l10n.gentleHoursTitle),
                    subtitle: Text(l10n.gentleHoursSubtitle),
                    value: user.settings.gentleHours != null,
                    onChanged: (value) async {
                      // TODO: Implement gentle hours toggle
                    },
                  ),
                ),
              ],
              // Disable inbound for 80+
              if (user.canDisableInboundAlerts) ...[
                const SizedBox(height: 16),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: SwitchListTile(
                    title: Text(l10n.disableInboundTitle),
                    subtitle: Text(l10n.disableInboundSubtitle),
                    value: user.settings.disableInboundAlerts,
                    onChanged: (value) async {
                      final userRepo = ref.read(userRepositoryProvider);
                      await userRepo.updateSettings(
                        user.userId,
                        user.settings.copyWith(disableInboundAlerts: value),
                      );
                    },
                  ),
                ),
              ],
              const SizedBox(height: 16),
              // Language
              _SectionHeader(title: l10n.languageTitle),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  title: Text(l10n.selectLanguage),
                  subtitle: Text(_getLanguageName(user.settings.language)),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // TODO: Open language selector
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Account section
              _SectionHeader(title: l10n.accountTitle),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: Text(l10n.signOutButton),
                      onTap: _isSigningOut ? null : _signOut,
                      trailing: _isSigningOut
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : null,
                    ),
                    const Divider(height: 1),
                    ListTile(
                      leading: const Icon(Icons.delete_forever, color: Colors.red),
                      title: Text(
                        l10n.deleteAccountButton,
                        style: const TextStyle(color: Colors.red),
                      ),
                      onTap: _deleteAccount,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      case 'fr':
        return 'Français';
      default:
        return code;
    }
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
