import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/models/alert_model.dart';
import '../../../data/models/emergency_type.dart';
import '../../../data/repositories/alert_repository.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class AlertStatusScreen extends ConsumerWidget {
  final String alertId;

  const AlertStatusScreen({super.key, required this.alertId});

  String _getLocalizedTypeName(BuildContext context, AlertModel alert) {
    final l10n = AppLocalizations.of(context)!;
    switch (alert.type.localizationKey) {
      case 'alertCardiacArrest':
        return l10n.alertCardiacArrest;
      case 'alertAed':
        return l10n.alertAed;
      case 'alertOverdose':
        return l10n.alertOverdose;
      case 'alertChoking':
        return l10n.alertChoking;
      case 'alertDrowning':
        return l10n.alertDrowning;
      case 'alertFire':
        return l10n.alertFire;
      case 'alertConsentEmergency':
        return l10n.alertConsentEmergency;
      case 'alertActiveBystander':
        return l10n.alertActiveBystander;
      case 'alertDomesticAbuse':
        return l10n.alertDomesticAbuse;
      case 'alertWellnessCheck':
        return l10n.alertWellnessCheck;
      case 'alertMentalHealth':
        return l10n.alertMentalHealth;
      case 'alertQuitCompanion':
        return l10n.alertQuitCompanion;
      case 'alertCompanionship':
        return l10n.alertCompanionship;
      case 'alert911Coordination':
        return l10n.alert911Coordination;
      case 'alertMissingPet':
        return l10n.alertMissingPet;
      default:
        return alert.type.name;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final alertAsync = ref.watch(alertProvider(alertId));

    return Scaffold(
      body: SafeArea(
        child: alertAsync.when(
          data: (alert) {
            if (alert == null) {
              return Center(child: Text(l10n.errorGeneric));
            }

            final primaryResponder = alert.primaryResponder;
            final statusColor = alert.type.color;

            return Column(
              children: [
                // Status header
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  color: statusColor,
                  child: Column(
                    children: [
                      Icon(
                        alert.type.icon,
                        size: 64,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        _getLocalizedTypeName(context, alert),
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _StatusBadge(status: alert.status, l10n: l10n),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Status message
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (alert.status == AlertStatus.dispatching) ...[
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Text(
                                          l10n.waitingForResponse,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    l10n.alertSentMessage(
                                      alert.dispatchWaves.fold(
                                        0,
                                        (sum, wave) =>
                                            sum + wave.recipientUserIds.length,
                                      ),
                                    ),
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                ] else if (primaryResponder != null) ...[
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor:
                                            theme.colorScheme.primaryContainer,
                                        child: Text(
                                          primaryResponder.name[0].toUpperCase(),
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              primaryResponder.status ==
                                                      ResponderStatus.arrived
                                                  ? l10n.responderArrived(
                                                      primaryResponder.name)
                                                  : l10n.responderAccepted(
                                                      primaryResponder.name),
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            if (primaryResponder.etaSeconds !=
                                                null)
                                              Text(
                                                l10n.minutesAbbrev(
                                                  (primaryResponder.etaSeconds! /
                                                          60)
                                                      .ceil(),
                                                ),
                                                style: theme.textTheme.bodyMedium
                                                    ?.copyWith(
                                                  color: theme
                                                      .colorScheme.onSurfaceVariant,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: OutlinedButton.icon(
                                          onPressed: () {
                                            // TODO: Call responder
                                          },
                                          icon: const Icon(Icons.phone),
                                          label: Text(l10n.callResponderButton),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                                if (alert.status == AlertStatus.resolved) ...[
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: AppColors.successGreen,
                                        size: 32,
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        l10n.emergencyResolved,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Responders list
                        if (alert.responders.isNotEmpty) ...[
                          Text(
                            'Responders (${alert.responders.length})',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ...alert.responders
                              .where((r) => r.status != ResponderStatus.declined)
                              .map((responder) {
                            return Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: Text(responder.name[0].toUpperCase()),
                                ),
                                title: Text(responder.name),
                                subtitle: Text(_getResponderStatusText(
                                    responder.status, l10n)),
                                trailing: responder.status ==
                                        ResponderStatus.accepted
                                    ? Text(
                                        l10n.minutesAbbrev(
                                          (responder.etaSeconds ?? 0) ~/ 60,
                                        ),
                                      )
                                    : null,
                              ),
                            );
                          }),
                        ],
                      ],
                    ),
                  ),
                ),
                // Action buttons
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      if (alert.isActive)
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () async {
                              final confirmed = await showDialog<bool>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text(l10n.cancelAlertButton),
                                  content: const Text(
                                    'Are you sure you want to cancel this alert?',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, false),
                                      child: Text(l10n.cancelButton),
                                    ),
                                    FilledButton(
                                      onPressed: () =>
                                          Navigator.pop(context, true),
                                      child: const Text('Yes, Cancel'),
                                    ),
                                  ],
                                ),
                              );
                              if (confirmed == true) {
                                await ref
                                    .read(alertRepositoryProvider)
                                    .cancelAlert(alertId);
                                if (context.mounted) {
                                  context.go(AppRoutes.home);
                                }
                              }
                            },
                            child: Text(l10n.cancelAlertButton),
                          ),
                        ),
                      if (!alert.isActive)
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: () => context.go(AppRoutes.home),
                            child: Text(l10n.doneButton),
                          ),
                        ),
                    ],
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

  String _getResponderStatusText(ResponderStatus status, AppLocalizations l10n) {
    switch (status) {
      case ResponderStatus.invited:
        return 'Invited';
      case ResponderStatus.accepted:
        return 'On the way';
      case ResponderStatus.declined:
        return 'Declined';
      case ResponderStatus.timeout:
        return 'No response';
      case ResponderStatus.enRoute:
        return 'En route';
      case ResponderStatus.arrived:
        return 'Arrived';
    }
  }
}

class _StatusBadge extends StatelessWidget {
  final AlertStatus status;
  final AppLocalizations l10n;

  const _StatusBadge({required this.status, required this.l10n});

  @override
  Widget build(BuildContext context) {
    String text;
    switch (status) {
      case AlertStatus.created:
        text = 'Created';
        break;
      case AlertStatus.dispatching:
        text = 'Dispatching...';
        break;
      case AlertStatus.accepted:
        text = 'Accepted';
        break;
      case AlertStatus.inProgress:
        text = 'In Progress';
        break;
      case AlertStatus.resolved:
        text = l10n.emergencyResolved;
        break;
      case AlertStatus.cancelled:
        text = 'Cancelled';
        break;
      case AlertStatus.expired:
        text = 'Expired';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
