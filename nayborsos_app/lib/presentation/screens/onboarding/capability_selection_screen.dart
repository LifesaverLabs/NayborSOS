import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../data/models/emergency_type.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/services/auth_service.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class CapabilitySelectionScreen extends ConsumerStatefulWidget {
  const CapabilitySelectionScreen({super.key});

  @override
  ConsumerState<CapabilitySelectionScreen> createState() =>
      _CapabilitySelectionScreenState();
}

class _CapabilitySelectionScreenState
    extends ConsumerState<CapabilitySelectionScreen> {
  final Set<EmergencyType> _selectedCapabilities = {};
  bool _isLoading = false;

  Future<void> _saveCapabilities() async {
    setState(() => _isLoading = true);

    try {
      final authService = ref.read(authServiceProvider);
      final userRepo = ref.read(userRepositoryProvider);
      final user = authService.currentUser;

      if (user == null) {
        throw Exception('Not authenticated');
      }

      final now = DateTime.now();

      // Save each selected capability
      for (final type in _selectedCapabilities) {
        final capability = UserCapability(
          type: type,
          tier: type.responseTier,
          hasEquipment: false, // Will be updated later
          addedAt: now,
          updatedAt: now,
        );
        await userRepo.addCapability(user.uid, capability);
      }

      if (mounted) {
        context.go(AppRoutes.terms);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final categories = emergencyTypesByCategory;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.capabilitySelectionTitle),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                l10n.capabilitySelectionSubtitle,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: categories.entries.map((entry) {
                  final level = entry.key;
                  final types = entry.value;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 12,
                        ),
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
                        final isSelected = _selectedCapabilities.contains(type);
                        return Card(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 4,
                          ),
                          child: CheckboxListTile(
                            value: isSelected,
                            onChanged: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedCapabilities.add(type);
                                } else {
                                  _selectedCapabilities.remove(type);
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
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                            controlAffinity: ListTileControlAffinity.trailing,
                            activeColor: type.color,
                          ),
                        );
                      }),
                      const SizedBox(height: 16),
                    ],
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    '${_selectedCapabilities.length} capabilities selected',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: FilledButton(
                      onPressed: _isLoading ? null : _saveCapabilities,
                      child: _isLoading
                          ? const SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              l10n.continueButton,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
