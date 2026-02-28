import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/models/alert_model.dart';
import '../../../data/models/emergency_type.dart';
import '../../../data/repositories/alert_repository.dart';
import '../../../data/services/auth_service.dart';
import '../../../data/services/location_service.dart';
import '../../../data/services/geospatial_service.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class IncomingAlertScreen extends ConsumerStatefulWidget {
  final String alertId;
  final double distanceMeters;

  const IncomingAlertScreen({
    super.key,
    required this.alertId,
    required this.distanceMeters,
  });

  @override
  ConsumerState<IncomingAlertScreen> createState() =>
      _IncomingAlertScreenState();
}

class _IncomingAlertScreenState extends ConsumerState<IncomingAlertScreen> {
  int _countdown = 30;
  Timer? _timer;
  TransportMethod _selectedTransport = TransportMethod.driving;
  bool _isAccepting = false;
  bool _isDeclining = false;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() => _countdown--);
      } else {
        timer.cancel();
        _decline();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _accept() async {
    if (_isAccepting) return;

    setState(() => _isAccepting = true);

    try {
      final authService = ref.read(authServiceProvider);
      final alertRepo = ref.read(alertRepositoryProvider);
      final geoService = ref.read(geospatialServiceProvider);
      final user = authService.currentUser;

      if (user == null) return;

      // Calculate ETA
      final etaSeconds = geoService.calculateEtaSeconds(
        widget.distanceMeters,
        _selectedTransport,
      );

      await alertRepo.acceptAlert(
        widget.alertId,
        user.uid,
        _selectedTransport,
        etaSeconds,
      );

      if (mounted) {
        context.go(AppRoutes.navigationPath(widget.alertId));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
        setState(() => _isAccepting = false);
      }
    }
  }

  Future<void> _decline() async {
    if (_isDeclining) return;

    setState(() => _isDeclining = true);

    try {
      final authService = ref.read(authServiceProvider);
      final alertRepo = ref.read(alertRepositoryProvider);
      final user = authService.currentUser;

      if (user == null) return;

      await alertRepo.declineAlert(widget.alertId, user.uid);

      if (mounted) {
        context.go(AppRoutes.home);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
        setState(() => _isDeclining = false);
      }
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
    final locationService = ref.read(locationServiceProvider);

    return Scaffold(
      body: SafeArea(
        child: alertAsync.when(
          data: (alert) {
            if (alert == null) {
              return Center(child: Text(l10n.errorGeneric));
            }

            final distanceFormatted = locationService.formatDistance(
              widget.distanceMeters,
            );

            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    alert.type.color,
                    alert.type.color.withValues(alpha: 0.8),
                  ],
                ),
              ),
              child: Column(
                children: [
                  // Header
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                          l10n.incomingAlertTitle,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        // Countdown
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 4,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '$_countdown',
                              style: theme.textTheme.headlineLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.respondInSeconds(_countdown),
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Alert info card
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          children: [
                            // Emergency type
                            Icon(
                              alert.type.icon,
                              size: 64,
                              color: alert.type.color,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              _getLocalizedTypeName(context, alert.type),
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              l10n.distanceAway(distanceFormatted),
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                            if (alert.description != null) ...[
                              const SizedBox(height: 16),
                              Text(
                                alert.description!,
                                style: theme.textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                            ],
                            const SizedBox(height: 24),
                            // Transport method selection
                            Text(
                              'How will you get there?',
                              style: theme.textTheme.titleMedium,
                            ),
                            const SizedBox(height: 12),
                            SegmentedButton<TransportMethod>(
                              segments: const [
                                ButtonSegment(
                                  value: TransportMethod.driving,
                                  icon: Icon(Icons.directions_car),
                                  label: Text('Drive'),
                                ),
                                ButtonSegment(
                                  value: TransportMethod.running,
                                  icon: Icon(Icons.directions_run),
                                  label: Text('Run'),
                                ),
                                ButtonSegment(
                                  value: TransportMethod.biking,
                                  icon: Icon(Icons.directions_bike),
                                  label: Text('Bike'),
                                ),
                              ],
                              selected: {_selectedTransport},
                              onSelectionChanged: (selected) {
                                setState(() {
                                  _selectedTransport = selected.first;
                                });
                              },
                            ),
                            const SizedBox(height: 24),
                            // Equipment reminder
                            if (alert.type.requiresEquipment) ...[
                              Card(
                                color: alert.type.color.withValues(alpha: 0.1),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        l10n.rememberToGrab,
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      if (alert.type == EmergencyType.aedDelivery)
                                        _EquipmentItem(
                                          icon: Icons.electrical_services,
                                          text: l10n.yourAed,
                                        ),
                                      if (alert.type == EmergencyType.overdose)
                                        _EquipmentItem(
                                          icon: Icons.medical_services,
                                          text: l10n.naloxoneKit,
                                        ),
                                      _EquipmentItem(
                                        icon: Icons.phone_android,
                                        text: l10n.yourPhone,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Action buttons
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: FilledButton(
                            onPressed: _isAccepting ? null : _accept,
                            style: FilledButton.styleFrom(
                              backgroundColor: AppColors.successGreen,
                            ),
                            child: _isAccepting
                                ? const SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white,
                                    ),
                                  )
                                : Text(
                                    l10n.acceptAlertButton,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: OutlinedButton(
                            onPressed: _isDeclining ? null : _decline,
                            child: _isDeclining
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(l10n.declineAlertButton),
                          ),
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
      ),
    );
  }
}

class _EquipmentItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _EquipmentItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}
