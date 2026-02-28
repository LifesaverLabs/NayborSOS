import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final userAsync = ref.watch(currentUserProfileProvider);
    final capabilitiesAsync = ref.watch(currentUserCapabilitiesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.profileTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push(AppRoutes.settings),
          ),
        ],
      ),
      body: userAsync.when(
        data: (user) {
          if (user == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Profile header
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundColor: theme.colorScheme.primaryContainer,
                        child: user.photoUrl != null
                            ? ClipOval(
                                child: Image.network(
                                  user.photoUrl!,
                                  width: 96,
                                  height: 96,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Text(
                                user.firstName[0].toUpperCase(),
                                style: theme.textTheme.headlineLarge,
                              ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        user.fullName,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        user.phoneNumber,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${user.address.city}, ${user.address.state}',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Quick stats
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _StatColumn(
                          value: capabilitiesAsync.when(
                            data: (caps) => caps.length.toString(),
                            loading: () => '-',
                            error: (e, s) => '-',
                          ),
                          label: l10n.myCapabilities,
                        ),
                        _StatColumn(
                          value: '0',
                          label: l10n.totalResponses(0).split(' ').first,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Menu items
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.volunteer_activism),
                        title: Text(l10n.myCapabilities),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => context.push(AppRoutes.capabilities),
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(Icons.schedule),
                        title: Text(l10n.alertScheduleTitle),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => context.push(AppRoutes.alertSchedule),
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(Icons.history),
                        title: Text(l10n.responseHistoryTitle),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: Navigate to response history
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // About section
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.info_outline),
                        title: Text(l10n.aboutTitle),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          showAboutDialog(
                            context: context,
                            applicationName: l10n.appName,
                            applicationVersion: '1.0.0',
                            children: [
                              Text(l10n.aboutText),
                            ],
                          );
                        },
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(Icons.privacy_tip_outlined),
                        title: Text(l10n.privacyPolicyButton),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: Open privacy policy
                        },
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(Icons.help_outline),
                        title: Text(l10n.helpButton),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: Open help
                        },
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(Icons.feedback_outlined),
                        title: Text(l10n.feedbackButton),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: Open feedback
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  final String value;
  final String label;

  const _StatColumn({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
