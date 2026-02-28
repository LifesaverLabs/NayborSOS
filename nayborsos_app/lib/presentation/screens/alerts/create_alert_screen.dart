import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import '../../../core/theme/app_theme.dart';
import '../../../data/models/alert_model.dart';
import '../../../data/models/emergency_type.dart';
import '../../../data/repositories/alert_repository.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../data/services/auth_service.dart';
import '../../../data/services/location_service.dart';
import '../../../generated/l10n/app_localizations.dart';
import '../../navigation/app_router.dart';

class CreateAlertScreen extends ConsumerStatefulWidget {
  const CreateAlertScreen({super.key});

  @override
  ConsumerState<CreateAlertScreen> createState() => _CreateAlertScreenState();
}

class _CreateAlertScreenState extends ConsumerState<CreateAlertScreen> {
  EmergencyType? _selectedType;
  final _descriptionController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
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

  Future<void> _sendAlert() async {
    if (_selectedType == null) return;

    setState(() => _isLoading = true);

    try {
      final authService = ref.read(authServiceProvider);
      final userRepo = ref.read(userRepositoryProvider);
      final alertRepo = ref.read(alertRepositoryProvider);
      final locationService = ref.read(locationServiceProvider);
      final user = authService.currentUser;

      if (user == null) throw Exception('Not authenticated');

      // Get user profile
      final userProfile = await userRepo.getUser(user.uid);
      if (userProfile == null) throw Exception('User profile not found');

      // Get current location
      final position = await locationService.getCurrentPosition();
      final geohash = locationService.generateGeohash(
        position.latitude,
        position.longitude,
      );

      // Create alert
      final now = DateTime.now();
      final alert = AlertModel(
        alertId: const Uuid().v4(),
        type: _selectedType!,
        status: AlertStatus.created,
        criticalityLevel: _selectedType!.criticalityLevel,
        originator: AlertOriginator(
          userId: user.uid,
          name: userProfile.fullName,
          phoneNumber: userProfile.phoneNumber,
          photoUrl: userProfile.photoUrl,
        ),
        location: AlertLocation(
          lat: position.latitude,
          lng: position.longitude,
          geohash: geohash,
        ),
        description: _descriptionController.text.isNotEmpty
            ? _descriptionController.text
            : null,
        targetResponderCount: _selectedType!.maxResponders,
        timestamps: AlertTimestamps(created: now),
      );

      final alertId = await alertRepo.createAlert(alert);

      // Update status to dispatching
      await alertRepo.updateAlertStatus(alertId, AlertStatus.dispatching);

      if (mounted) {
        context.go(AppRoutes.alertStatusPath(alertId));
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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final categories = emergencyTypesByCategory;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => context.pop(),
        ),
        title: Text(l10n.createAlertTitle),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // 911 Warning for life-threatening
            if (_selectedType?.requires911 == true)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: AppColors.emergencyRed,
                child: Row(
                  children: [
                    const Icon(
                      Icons.warning,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.call911First,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            l10n.call911Message,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        // TODO: Launch phone dialer with 911
                      },
                      child: Text(l10n.call911Button),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Text(
                    l10n.createAlertSubtitle,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Emergency type selection
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
                                style: theme.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: level.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: types.map((type) {
                            final isSelected = _selectedType == type;
                            return ChoiceChip(
                              selected: isSelected,
                              onSelected: (selected) {
                                setState(() {
                                  _selectedType = selected ? type : null;
                                });
                              },
                              avatar: Icon(
                                type.icon,
                                size: 18,
                                color: isSelected ? Colors.white : type.color,
                              ),
                              label: Text(_getLocalizedName(context, type)),
                              selectedColor: type.color,
                              labelStyle: TextStyle(
                                color: isSelected ? Colors.white : null,
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 16),
                      ],
                    );
                  }),
                  const SizedBox(height: 16),
                  // Description field
                  TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      labelText: l10n.descriptionLabel,
                      hintText: l10n.descriptionHint,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
            // Send button
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: FilledButton(
                  onPressed: _selectedType != null && !_isLoading
                      ? _sendAlert
                      : null,
                  style: FilledButton.styleFrom(
                    backgroundColor: _selectedType?.color ?? AppColors.emergencyRed,
                  ),
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
                          l10n.sendAlertButton,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
