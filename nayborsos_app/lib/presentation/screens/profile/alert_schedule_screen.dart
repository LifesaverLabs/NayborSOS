import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../generated/l10n/app_localizations.dart';

class AlertScheduleScreen extends ConsumerStatefulWidget {
  const AlertScheduleScreen({super.key});

  @override
  ConsumerState<AlertScheduleScreen> createState() =>
      _AlertScheduleScreenState();
}

class _AlertScheduleScreenState extends ConsumerState<AlertScheduleScreen> {
  AlertSchedule? _schedule;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    // Load schedule from user profile
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final user = ref.read(currentUserProfileProvider).value;
      if (user != null) {
        setState(() => _schedule = user.alertSchedule);
      }
    });
  }

  Future<void> _saveSchedule() async {
    if (_schedule == null || _isSaving) return;

    setState(() => _isSaving = true);

    try {
      final user = ref.read(currentUserProfileProvider).value;
      if (user == null) return;

      final userRepo = ref.read(userRepositoryProvider);
      await userRepo.updateAlertSchedule(user.userId, _schedule!);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Schedule saved')),
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

  String _getDayName(int weekday, AppLocalizations l10n) {
    switch (weekday) {
      case 1:
        return l10n.monday;
      case 2:
        return l10n.tuesday;
      case 3:
        return l10n.wednesday;
      case 4:
        return l10n.thursday;
      case 5:
        return l10n.friday;
      case 6:
        return l10n.saturday;
      case 7:
        return l10n.sunday;
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final userAsync = ref.watch(currentUserProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.alertScheduleTitle),
        actions: [
          TextButton(
            onPressed: _isSaving ? null : _saveSchedule,
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
      body: userAsync.when(
        data: (user) {
          if (user == null || _schedule == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Info card
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            l10n.lifeThreatening24_7,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.lifeThreatening24_7Subtitle,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Weekly schedule
              Text(
                l10n.weeklyScheduleTitle,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              // Days
              ...List.generate(7, (index) {
                final weekday = index + 1;
                final timeRange = _schedule!.getForDay(weekday);

                return Card(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                _getDayName(weekday, l10n),
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Switch(
                              value: timeRange.enabled,
                              onChanged: (value) {
                                _updateDay(weekday, timeRange.copyWith(enabled: value));
                              },
                            ),
                          ],
                        ),
                        if (timeRange.enabled) ...[
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: _TimeSelector(
                                  label: 'Start',
                                  value: timeRange.startTime,
                                  onChanged: (time) {
                                    _updateDay(
                                      weekday,
                                      TimeRange(
                                        startTime: time,
                                        endTime: timeRange.endTime,
                                        enabled: true,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: _TimeSelector(
                                  label: 'End',
                                  value: timeRange.endTime,
                                  onChanged: (time) {
                                    _updateDay(
                                      weekday,
                                      TimeRange(
                                        startTime: timeRange.startTime,
                                        endTime: time,
                                        enabled: true,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
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

  void _updateDay(int weekday, TimeRange newRange) {
    if (_schedule == null) return;

    setState(() {
      switch (weekday) {
        case 1:
          _schedule = AlertSchedule(
            monday: newRange,
            tuesday: _schedule!.tuesday,
            wednesday: _schedule!.wednesday,
            thursday: _schedule!.thursday,
            friday: _schedule!.friday,
            saturday: _schedule!.saturday,
            sunday: _schedule!.sunday,
          );
          break;
        case 2:
          _schedule = AlertSchedule(
            monday: _schedule!.monday,
            tuesday: newRange,
            wednesday: _schedule!.wednesday,
            thursday: _schedule!.thursday,
            friday: _schedule!.friday,
            saturday: _schedule!.saturday,
            sunday: _schedule!.sunday,
          );
          break;
        case 3:
          _schedule = AlertSchedule(
            monday: _schedule!.monday,
            tuesday: _schedule!.tuesday,
            wednesday: newRange,
            thursday: _schedule!.thursday,
            friday: _schedule!.friday,
            saturday: _schedule!.saturday,
            sunday: _schedule!.sunday,
          );
          break;
        case 4:
          _schedule = AlertSchedule(
            monday: _schedule!.monday,
            tuesday: _schedule!.tuesday,
            wednesday: _schedule!.wednesday,
            thursday: newRange,
            friday: _schedule!.friday,
            saturday: _schedule!.saturday,
            sunday: _schedule!.sunday,
          );
          break;
        case 5:
          _schedule = AlertSchedule(
            monday: _schedule!.monday,
            tuesday: _schedule!.tuesday,
            wednesday: _schedule!.wednesday,
            thursday: _schedule!.thursday,
            friday: newRange,
            saturday: _schedule!.saturday,
            sunday: _schedule!.sunday,
          );
          break;
        case 6:
          _schedule = AlertSchedule(
            monday: _schedule!.monday,
            tuesday: _schedule!.tuesday,
            wednesday: _schedule!.wednesday,
            thursday: _schedule!.thursday,
            friday: _schedule!.friday,
            saturday: newRange,
            sunday: _schedule!.sunday,
          );
          break;
        case 7:
          _schedule = AlertSchedule(
            monday: _schedule!.monday,
            tuesday: _schedule!.tuesday,
            wednesday: _schedule!.wednesday,
            thursday: _schedule!.thursday,
            friday: _schedule!.friday,
            saturday: _schedule!.saturday,
            sunday: newRange,
          );
          break;
      }
    });
  }
}

class _TimeSelector extends StatelessWidget {
  final String label;
  final String value;
  final ValueChanged<String> onChanged;

  const _TimeSelector({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () async {
        final parts = value.split(':');
        final initial = TimeOfDay(
          hour: int.parse(parts[0]),
          minute: int.parse(parts[1]),
        );

        final selected = await showTimePicker(
          context: context,
          initialTime: initial,
        );

        if (selected != null) {
          final formatted =
              '${selected.hour.toString().padLeft(2, '0')}:${selected.minute.toString().padLeft(2, '0')}';
          onChanged(formatted);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.outline),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              _formatTime(value),
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(String time) {
    final parts = time.split(':');
    final hour = int.parse(parts[0]);
    final minute = parts[1];
    final period = hour >= 12 ? 'PM' : 'AM';
    final displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    return '$displayHour:$minute $period';
  }
}

extension on TimeRange {
  TimeRange copyWith({bool? enabled}) {
    return TimeRange(
      startTime: startTime,
      endTime: endTime,
      enabled: enabled ?? this.enabled,
    );
  }
}
