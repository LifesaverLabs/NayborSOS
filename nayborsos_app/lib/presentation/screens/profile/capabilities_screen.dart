import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/emergency_type.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/services/auth_service.dart';
import '../../../generated/l10n/app_localizations.dart';

class CapabilitiesScreen extends ConsumerStatefulWidget {
  const CapabilitiesScreen({super.key});

  @override
  ConsumerState<CapabilitiesScreen> createState() => _CapabilitiesScreenState();
}

class _CapabilitiesScreenState extends ConsumerState<CapabilitiesScreen> {
  final Set<EmergencyType> _pendingAdditions = {};
  final Set<EmergencyType> _pendingRemovals = {};
  bool _isSaving = false;

  String _getLocalizedName(BuildContext context, EmergencyType type) {
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

  String _getLocalizedCategoryName(BuildContext context, CriticalityLevel level) {
    final l10n = AppLocalizations.of(context)!;
    switch (level) {
      case CriticalityLevel.lifeThreatening:
        return l10n.lifeThreatening;
      case CriticalityLevel.securitySafety:
        return l10n.securitySafety;
      case CriticalityLevel.urgentTimeSensitive:
        return l10n.urgentTimeSensitive;
      case CriticalityLevel.nonLifeThreatening:
        return l10n.nonLifeThreatening;
    }
  }

  Future<void> _saveChanges() async {
    if (_isSaving) return;
    if (_pendingAdditions.isEmpty && _pendingRemovals.isEmpty) return;

    setState(() => _isSaving = true);

    try {
      final authService = ref.read(authServiceProvider);
      final userRepo = ref.read(userRepositoryProvider);
      final user = authService.currentUser;

      if (user == null) return;

      final now = DateTime.now();

      // Add new capabilities
      for (final type in _pendingAdditions) {
        final capability = UserCapability(
          type: type,
          tier: type.responseTier,
          hasEquipment: false,
          addedAt: now,
          updatedAt: now,
        );
        await userRepo.addCapability(user.uid, capability);
      }

      // Remove capabilities
      for (final type in _pendingRemovals) {
        await userRepo.removeCapability(user.uid, type);
      }

      setState(() {
        _pendingAdditions.clear();
        _pendingRemovals.clear();
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Capabilities updated')),
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
        setState(() => _isSaving = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final capabilitiesAsync = ref.watch(currentUserCapabilitiesProvider);
    final categories = emergencyTypesByCategory;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.myCapabilities),
        actions: [
          if (_pendingAdditions.isNotEmpty || _pendingRemovals.isNotEmpty)
            TextButton(
              onPressed: _isSaving ? null : _saveChanges,
              child: _isSaving
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(l10n.saveButton),
            ),
        ],
      ),
      body: capabilitiesAsync.when(
        data: (currentCapabilities) {
          final enabledTypes = currentCapabilities.map((c) => c.type).toSet();

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text(
                l10n.capabilitySelectionSubtitle,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 16),
              ...categories.entries.map((entry) {
                final level = entry.key;
                final types = entry.value;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: level.color,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _getLocalizedCategoryName(context, level),
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: level.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ...types.map((type) {
                      final isEnabled = enabledTypes.contains(type);
                      final isPendingAdd = _pendingAdditions.contains(type);
                      final isPendingRemove = _pendingRemovals.contains(type);
                      final effectivelyEnabled =
                          (isEnabled && !isPendingRemove) || isPendingAdd;

                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: CheckboxListTile(
                          value: effectivelyEnabled,
                          onChanged: (value) {
                            setState(() {
                              if (value == true) {
                                if (isEnabled) {
                                  _pendingRemovals.remove(type);
                                } else {
                                  _pendingAdditions.add(type);
                                }
                              } else {
                                if (isEnabled) {
                                  _pendingRemovals.add(type);
                                } else {
                                  _pendingAdditions.remove(type);
                                }
                              }
                            });
                          },
                          title: Row(
                            children: [
                              Icon(
                                type.icon,
                                color: type.color,
                                size: 24,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  _getLocalizedName(context, type),
                                ),
                              ),
                            ],
                          ),
                          subtitle: type.requiresEquipment
                              ? Text(
                                  'Requires: ${type.requiredEquipment}',
                                  style: theme.textTheme.bodySmall,
                                )
                              : null,
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: type.color,
                        ),
                      );
                    }),
                    const SizedBox(height: 8),
                  ],
                );
              }),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
