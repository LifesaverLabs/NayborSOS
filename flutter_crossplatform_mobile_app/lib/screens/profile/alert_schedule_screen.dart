import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class AlertScheduleScreen extends StatefulWidget {
  const AlertScheduleScreen({super.key});

  @override
  State<AlertScheduleScreen> createState() => _AlertScheduleScreenState();
}

class _AlertScheduleScreenState extends State<AlertScheduleScreen> {
  bool _lifeThreatening24x7 = true;
  bool _securityAlerts24x7 = true;
  bool _disableSecurityAlerts = false;
  int? _age;

  final Map<String, DayScheduleData> _weekSchedule = {
    'Monday': DayScheduleData(true, const TimeOfDay(hour: 18, minute: 0), const TimeOfDay(hour: 23, minute: 0)),
    'Tuesday': DayScheduleData(true, const TimeOfDay(hour: 18, minute: 0), const TimeOfDay(hour: 23, minute: 0)),
    'Wednesday': DayScheduleData(true, const TimeOfDay(hour: 18, minute: 0), const TimeOfDay(hour: 23, minute: 0)),
    'Thursday': DayScheduleData(true, const TimeOfDay(hour: 18, minute: 0), const TimeOfDay(hour: 23, minute: 0)),
    'Friday': DayScheduleData(true, const TimeOfDay(hour: 18, minute: 0), const TimeOfDay(hour: 1, minute: 0)),
    'Saturday': DayScheduleData(true, const TimeOfDay(hour: 0, minute: 0), const TimeOfDay(hour: 23, minute: 59), allDay: true),
    'Sunday': DayScheduleData(true, const TimeOfDay(hour: 0, minute: 0), const TimeOfDay(hour: 23, minute: 59), allDay: true),
  };

  String _formatTime(TimeOfDay time) {
    final hour = time.hour == 0 ? 12 : (time.hour > 12 ? time.hour - 12 : time.hour);
    final period = time.hour >= 12 ? 'PM' : 'AM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Schedule'),
        actions: [
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Schedule saved')),
              );
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Info
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.lightBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.info_outline, color: AppTheme.accentBlue),
                        const SizedBox(width: 8),
                        Text(
                          'Customize Your Availability',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: AppTheme.darkBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Life-threatening alerts always get through. Set your preferred hours for non-urgent alerts.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppTheme.darkBlue,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Life-Threatening Alerts
              Text(
                '🔴 Life-Threatening Alerts',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppTheme.lifeThreatening,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Card(
                child: Column(
                  children: [
                    SwitchListTile(
                      value: _lifeThreatening24x7,
                      onChanged: _age != null && _age! >= 80 ? (value) {
                        setState(() {
                          _lifeThreatening24x7 = value;
                        });
                      } : null,
                      title: const Text('Always notify me 24/7'),
                      subtitle: Text(
                        _age != null && _age! >= 80
                            ? 'You can disable this (age 80+)'
                            : 'Required for ages under 80',
                      ),
                      activeColor: AppTheme.primaryRed,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'CPR, AED, Overdose, Fire, Drowning',
                        style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Security/Safety Alerts
              Text(
                '🟠 Security/Safety Alerts',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppTheme.securitySafety,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Card(
                child: Column(
                  children: [
                    SwitchListTile(
                      value: _securityAlerts24x7,
                      onChanged: _disableSecurityAlerts ? null : (value) {
                        setState(() {
                          _securityAlerts24x7 = value;
                        });
                      },
                      title: const Text('Always notify me 24/7'),
                      subtitle: const Text('Recommended for security emergencies'),
                      activeColor: AppTheme.securitySafety,
                    ),
                    const Divider(height: 1),
                    CheckboxListTile(
                      value: _disableSecurityAlerts,
                      onChanged: (value) {
                        setState(() {
                          _disableSecurityAlerts = value ?? false;
                          if (_disableSecurityAlerts) {
                            _securityAlerts24x7 = false;
                          }
                        });
                      },
                      title: const Text('Disable security alerts entirely'),
                      subtitle: const Text('Not comfortable with these interventions'),
                      activeColor: AppTheme.textSecondary,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        'Consent emergencies, Active bystander, Domestic abuse',
                        style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Non-Life-Threatening Schedule
              Text(
                '🟢 Non-Life-Threatening Alerts',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppTheme.nonLifeThreatening,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Set your preferred hours for wellness checks, quit companion requests, etc.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),

              // Weekly Schedule
              for (final entry in _weekSchedule.entries)
                _DayScheduleTile(
                  day: entry.key,
                  schedule: entry.value,
                  onChanged: (newSchedule) {
                    setState(() {
                      _weekSchedule[entry.key] = newSchedule;
                    });
                  },
                ),

              const SizedBox(height: 24),

              // Age-Based Options
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Age-Based Settings (Optional)',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Your Age',
                          hintText: '25',
                          helperText: 'Ages 70+ can enable gentle nighttime alerts',
                        ),
                        onChanged: (value) {
                          setState(() {
                            _age = int.tryParse(value);
                          });
                        },
                      ),
                      if (_age != null && _age! >= 70) ...[
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: AppTheme.lightBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '👴 Gentle Hours Available',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppTheme.accentBlue,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                _age! >= 80
                                    ? 'You can disable all inbound alerts or use gentle nighttime notifications'
                                    : 'You can enable gentle vibrations for nighttime life-threatening alerts',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppTheme.darkBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DayScheduleData {
  bool enabled;
  TimeOfDay startTime;
  TimeOfDay endTime;
  bool allDay;

  DayScheduleData(this.enabled, this.startTime, this.endTime, {this.allDay = false});
}

class _DayScheduleTile extends StatelessWidget {
  final String day;
  final DayScheduleData schedule;
  final ValueChanged<DayScheduleData> onChanged;

  const _DayScheduleTile({
    required this.day,
    required this.schedule,
    required this.onChanged,
  });

  String _formatTime(TimeOfDay time) {
    final hour = time.hour == 0 ? 12 : (time.hour > 12 ? time.hour - 12 : time.hour);
    final period = time.hour >= 12 ? 'PM' : 'AM';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                day,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: schedule.allDay
                  ? const Text('All Day', style: TextStyle(color: AppTheme.successGreen))
                  : Text(
                      '${_formatTime(schedule.startTime)} - ${_formatTime(schedule.endTime)}',
                      style: const TextStyle(fontSize: 14),
                    ),
            ),
            Switch(
              value: schedule.enabled,
              onChanged: (value) {
                onChanged(DayScheduleData(
                  value,
                  schedule.startTime,
                  schedule.endTime,
                  allDay: schedule.allDay,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
