import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/models/emergency_type.dart';
import '../../../data/repositories/alert_repository.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class OnSceneScreen extends ConsumerStatefulWidget {
  final String alertId;

  const OnSceneScreen({super.key, required this.alertId});

  @override
  ConsumerState<OnSceneScreen> createState() => _OnSceneScreenState();
}

class _OnSceneScreenState extends ConsumerState<OnSceneScreen> {
  bool _isResolving = false;

  Future<void> _call911() async {
    final uri = Uri.parse('tel:911');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _markResolved() async {
    if (_isResolving) return;

    setState(() => _isResolving = true);

    try {
      final alertRepo = ref.read(alertRepositoryProvider);
      await alertRepo.resolveAlert(widget.alertId);

      if (mounted) {
        context.go(AppRoutes.home);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
        setState(() => _isResolving = false);
      }
    }
  }

  List<String> _getTipsForType(EmergencyType type, AppLocalizations l10n) {
    switch (type) {
      case EmergencyType.cardiacArrest:
      case EmergencyType.aedDelivery:
        return [
          l10n.cprTip1,
          l10n.cprTip2,
          l10n.cprTip3,
          l10n.cprTip4,
          l10n.cprTip5,
        ];
      case EmergencyType.overdose:
        return [
          l10n.overdoseTip1,
          l10n.overdoseTip2,
          l10n.overdoseTip3,
          l10n.overdoseTip4,
          l10n.overdoseTip5,
        ];
      default:
        return [];
    }
  }

  String _getLocalizedTypeName(BuildContext context, EmergencyType type) {
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
    final alertAsync = ref.watch(alertProvider(widget.alertId));

    return Scaffold(
      body: SafeArea(
        child: alertAsync.when(
          data: (alert) {
            if (alert == null) {
              return Center(child: Text(l10n.errorGeneric));
            }

            final tips = _getTipsForType(alert.type, l10n);

            return Column(
              children: [
                // Header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  color: alert.type.color,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        size: 48,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        l10n.onSceneTitle,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _getLocalizedTypeName(context, alert.type),
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                // Content
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 911 call button for life-threatening
                        if (alert.type.requires911 && !alert.emsNotified)
                          Card(
                            color: AppColors.emergencyRed,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    l10n.call911First,
                                    style: theme.textTheme.titleMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  SizedBox(
                                    width: double.infinity,
                                    child: FilledButton.tonal(
                                      onPressed: _call911,
                                      child: Text(l10n.call911Button),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (tips.isNotEmpty) ...[
                          const SizedBox(height: 16),
                          Text(
                            l10n.quickTips,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                children: tips.asMap().entries.map((entry) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: alert.type.color,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${entry.key + 1}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Text(
                                            entry.value,
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () {
                              // TODO: Open detailed instructions
                            },
                            child: Text(l10n.viewFullInstructions),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                // Action buttons
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: FilledButton(
                      onPressed: _isResolving ? null : _markResolved,
                      style: FilledButton.styleFrom(
                        backgroundColor: AppColors.successGreen,
                      ),
                      child: _isResolving
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              l10n.markResolvedButton,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('Error: $e')),
        ),
      ),
    );
  }
}
