import 'dart:async';
import 'package:flutter/material.dart';
import '../../models/emergency_type.dart';
import '../../theme/app_theme.dart';
import 'response_navigation_screen.dart';

class IncomingAlertScreen extends StatefulWidget {
  final EmergencyType emergencyType;
  final String location;
  final String distance;
  final String? description;

  const IncomingAlertScreen({
    super.key,
    required this.emergencyType,
    required this.location,
    required this.distance,
    this.description,
  });

  @override
  State<IncomingAlertScreen> createState() => _IncomingAlertScreenState();
}

class _IncomingAlertScreenState extends State<IncomingAlertScreen> {
  int _countdown = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_countdown > 0) {
        setState(() {
          _countdown--;
        });
      } else {
        _decline();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _accept() {
    _timer?.cancel();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ResponseNavigationScreen(
          emergencyType: widget.emergencyType,
          location: widget.location,
        ),
      ),
    );
  }

  void _decline() {
    _timer?.cancel();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Alert declined. Finding another responder...'),
        duration: Duration(seconds: 2),
      ),
    );
    Navigator.of(context).pop();
  }

  Color _getCategoryColor(EmergencyCategory category) {
    switch (category) {
      case EmergencyCategory.lifeThreatening:
        return AppTheme.lifeThreatening;
      case EmergencyCategory.securitySafety:
        return AppTheme.securitySafety;
      case EmergencyCategory.urgentTimeSensitive:
        return AppTheme.urgentTimeSensitive;
      case EmergencyCategory.nonLifeThreatening:
        return AppTheme.nonLifeThreatening;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLifeThreatening = widget.emergencyType.category == EmergencyCategory.lifeThreatening;

    return Scaffold(
      backgroundColor: isLifeThreatening ? AppTheme.primaryRed : AppTheme.accentBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'EMERGENCY ALERT',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '${_countdown}s',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Main Alert Card
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      // Emergency Icon
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: _getCategoryColor(widget.emergencyType.category).withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            widget.emergencyType.icon,
                            style: const TextStyle(fontSize: 50),
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Emergency Type
                      Text(
                        widget.emergencyType.name,
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 8),

                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: _getCategoryColor(widget.emergencyType.category).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          widget.emergencyType.description,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: _getCategoryColor(widget.emergencyType.category),
                          ),
                        ),
                      ),

                      const SizedBox(height: 32),

                      // Location & Distance
                      _InfoRow(
                        icon: Icons.location_on,
                        label: 'Location',
                        value: widget.location,
                      ),
                      const SizedBox(height: 16),
                      _InfoRow(
                        icon: Icons.directions_walk,
                        label: 'Distance',
                        value: widget.distance,
                      ),

                      if (widget.description != null && widget.description!.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        _InfoRow(
                          icon: Icons.notes,
                          label: 'Details',
                          value: widget.description!,
                        ),
                      ],

                      if (widget.emergencyType.requiresEquipment) ...[
                        const SizedBox(height: 24),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppTheme.warningAmber.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.medical_services, color: AppTheme.warningAmber),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  'Bring: ${widget.emergencyType.equipmentNeeded}',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppTheme.warningAmber,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],

                      const Spacer(),

                      // Progress Bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: _countdown / 30,
                          backgroundColor: AppTheme.backgroundColor,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            isLifeThreatening ? AppTheme.primaryRed : AppTheme.accentBlue,
                          ),
                          minHeight: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Action Buttons
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 64,
                      child: OutlinedButton(
                        onPressed: _decline,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'DECLINE',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 64,
                      child: ElevatedButton(
                        onPressed: _accept,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: isLifeThreatening ? AppTheme.primaryRed : AppTheme.accentBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.check_circle, size: 28),
                            const SizedBox(width: 8),
                            const Text(
                              'ACCEPT',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppTheme.textSecondary, size: 24),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppTheme.textSecondary,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
