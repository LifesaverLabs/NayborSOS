import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/models/emergency_type.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/services/auth_service.dart';
import '../../../data/services/location_service.dart';
import '../../../data/services/geospatial_service.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool _isTogglingAvailability = false;

  Future<void> _toggleAvailability(bool isAvailable) async {
    if (_isTogglingAvailability) return;

    setState(() => _isTogglingAvailability = true);

    try {
      final authService = ref.read(authServiceProvider);
      final userRepo = ref.read(userRepositoryProvider);
      final locationService = ref.read(locationServiceProvider);
      final geoService = ref.read(geospatialServiceProvider);
      final user = authService.currentUser;

      if (user == null) return;

      if (isAvailable) {
        // Get current position and update geospatial index
        final position = await locationService.getCurrentPosition();
        final capabilities = await userRepo.getCapabilities(user.uid);
        await geoService.updateResponderLocation(user.uid, position, capabilities);
      } else {
        // Remove from geospatial index
        await geoService.removeResponderLocation(user.uid);
      }

      // Update user availability
      await userRepo.updateAvailability(user.uid, isAvailable);
    } on LocationServiceDisabledException catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.errorLocationPermission),
          ),
        );
      }
    } on LocationPermissionDeniedException catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.errorLocationPermission),
          ),
        );
      }
    } on LocationPermissionPermanentlyDeniedException catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.errorLocationPermission),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isTogglingAvailability = false);
      }
    }
  }

  String _getLocalizedCapabilityName(BuildContext context, EmergencyType type) {
    final l10n = AppLocalizations.of(context)!;
    switch (type) {
      case EmergencyType.cardiacArrest:
        return l10n.alertCardiacArrest;
      case EmergencyType.aedDelivery:
        return l10n.alertAed;
      case EmergencyType.overdose:
        return l10n.alertOverdose;
      case EmergencyType.choking:
        return l10n.alertChoking;
      case EmergencyType.drowning:
        return l10n.alertDrowning;
      case EmergencyType.fire:
        return l10n.alertFire;
      case EmergencyType.consentEmergency:
        return l10n.alertConsentEmergency;
      case EmergencyType.activeBystander:
        return l10n.alertActiveBystander;
      case EmergencyType.domesticAbuse:
        return l10n.alertDomesticAbuse;
      case EmergencyType.wellnessCheck:
        return l10n.alertWellnessCheck;
      case EmergencyType.mentalHealth:
        return l10n.alertMentalHealth;
      case EmergencyType.quitCompanion:
        return l10n.alertQuitCompanion;
      case EmergencyType.companionship:
        return l10n.alertCompanionship;
      case EmergencyType.coordination911:
        return l10n.alert911Coordination;
      case EmergencyType.missingPet:
        return l10n.alertMissingPet;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final userAsync = ref.watch(currentUserProfileProvider);
    final capabilitiesAsync = ref.watch(currentUserCapabilitiesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push(AppRoutes.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: userAsync.when(
          data: (user) {
            if (user == null) {
              return const Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Availability Toggle Card
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.availability.isAvailable
                                      ? l10n.availableNow
                                      : l10n.notAvailable,
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: user.availability.isAvailable
                                        ? AppColors.successGreen
                                        : theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  user.availability.isAvailable
                                      ? l10n.availableNowSubtitle
                                      : l10n.notAvailableSubtitle,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _isTogglingAvailability
                              ? const SizedBox(
                                  width: 48,
                                  height: 48,
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                )
                              : Switch(
                                  value: user.availability.isAvailable,
                                  onChanged: _toggleAvailability,
                                  activeTrackColor: AppColors.successGreen,
                                ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Request Help Button
                  SizedBox(
                    width: double.infinity,
                    height: 72,
                    child: FilledButton(
                      onPressed: () => context.push(AppRoutes.createAlert),
                      style: FilledButton.styleFrom(
                        backgroundColor: AppColors.emergencyRed,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        l10n.requestHelpButton,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  // My Capabilities Section
                  Text(
                    l10n.myCapabilities,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  capabilitiesAsync.when(
                    data: (capabilities) {
                      if (capabilities.isEmpty) {
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.add_circle_outline),
                            title: const Text('Add capabilities'),
                            onTap: () => context.push(AppRoutes.capabilities),
                          ),
                        );
                      }

                      return Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: capabilities.map((cap) {
                          return Chip(
                            avatar: Icon(
                              cap.type.icon,
                              size: 18,
                              color: cap.type.color,
                            ),
                            label: Text(
                              _getLocalizedCapabilityName(context, cap.type),
                            ),
                            backgroundColor: cap.type.color.withValues(alpha: 0.1),
                          );
                        }).toList(),
                      );
                    },
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (e, _) => Text('Error: $e'),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () => context.push(AppRoutes.capabilities),
                    child: const Text('Manage capabilities'),
                  ),
                  const SizedBox(height: 24),
                  // Community Stats
                  Text(
                    l10n.communityStats,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          _StatRow(
                            icon: Icons.people,
                            text: l10n.neighborsReady(47),
                          ),
                          const Divider(),
                          _StatRow(
                            icon: Icons.check_circle,
                            text: l10n.responsesThisMonth(12),
                          ),
                          const Divider(),
                          _StatRow(
                            icon: Icons.timer,
                            text: l10n.avgResponseTime('2.5'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('Error: $e')),
        ),
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _StatRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
