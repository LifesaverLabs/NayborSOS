import 'package:flutter/material.dart';
import '../../models/emergency_type.dart';
import '../../theme/app_theme.dart';

class AlertStatusScreen extends StatefulWidget {
  final EmergencyType emergencyType;
  final String? description;

  const AlertStatusScreen({
    super.key,
    required this.emergencyType,
    this.description,
  });

  @override
  State<AlertStatusScreen> createState() => _AlertStatusScreenState();
}

class _AlertStatusScreenState extends State<AlertStatusScreen> {
  String _status = 'Searching for nearby responders...';
  int _respondersSent = 5;
  String? _acceptedResponder;
  String _responderStatus = 'pending';

  @override
  void initState() {
    super.initState();
    _simulateResponse();
  }

  void _simulateResponse() {
    // Simulate someone accepting the alert
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _status = 'Sarah accepted - On the way';
          _acceptedResponder = 'Sarah M.';
          _responderStatus = 'accepted';
        });
      }
    });

    Future.delayed(const Duration(seconds: 8), () {
      if (mounted) {
        setState(() {
          _status = 'Sarah has arrived';
          _responderStatus = 'arrived';
        });
      }
    });
  }

  void _cancelAlert() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cancel Alert?'),
        content: const Text('Are you sure you want to cancel this emergency alert?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('No, Keep Alert'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryRed),
            child: const Text('Yes, Cancel'),
          ),
        ],
      ),
    );
  }

  void _callResponder() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Opening phone to call Sarah...')),
    );
  }

  void _markResolved() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Emergency Resolved'),
        content: const Text('Great! We\'re glad help arrived in time.'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Status'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Alert Type
                    Center(
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppTheme.primaryRed.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                widget.emergencyType.icon,
                                style: const TextStyle(fontSize: 40),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            widget.emergencyType.name(context),
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                          ),
                          if (widget.description != null && widget.description!.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              widget.description!,
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ],
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Status Card
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: _responderStatus == 'pending'
                                        ? AppTheme.warningAmber.withOpacity(0.2)
                                        : AppTheme.successGreen.withOpacity(0.2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    _responderStatus == 'pending'
                                        ? Icons.search
                                        : _responderStatus == 'accepted'
                                            ? Icons.directions_run
                                            : Icons.check_circle,
                                    color: _responderStatus == 'pending'
                                        ? AppTheme.warningAmber
                                        : AppTheme.successGreen,
                                    size: 28,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _status,
                                        style: Theme.of(context).textTheme.titleLarge,
                                      ),
                                      if (_responderStatus == 'pending') ...[
                                        const SizedBox(height: 4),
                                        Text(
                                          'Alert sent to $_respondersSent nearby responders',
                                          style: Theme.of(context).textTheme.bodySmall,
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (_responderStatus == 'pending') ...[
                              const SizedBox(height: 16),
                              const LinearProgressIndicator(),
                            ],
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Responder Info (when accepted)
                    if (_acceptedResponder != null) ...[
                      Text(
                        'Responder',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppTheme.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: AppTheme.accentBlue,
                            child: Text(
                              _acceptedResponder![0],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          title: Text(_acceptedResponder!),
                          subtitle: Text(
                            _responderStatus == 'accepted'
                                ? 'En route - ETA 2 min'
                                : 'Arrived at location',
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.phone, color: AppTheme.accentBlue),
                            onPressed: _callResponder,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],

                    // Location
                    Text(
                      'Your Location',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Card(
                      child: ListTile(
                        leading: const Icon(Icons.location_on, color: AppTheme.primaryRed),
                        title: const Text('123 Main St, Apt 4B'),
                        subtitle: const Text('Miami, FL 33101'),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Emergency Tips
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
                                'While you wait',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppTheme.darkBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          _TipItem(text: 'Stay at your current location'),
                          _TipItem(text: 'Keep your phone nearby'),
                          _TipItem(text: 'If life-threatening, call 911 now'),
                          _TipItem(text: 'Responder may call you for directions'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Actions
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (_responderStatus == 'arrived') ...[
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _markResolved,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.successGreen,
                          ),
                          child: const Text('Mark Emergency Resolved'),
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: _cancelAlert,
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: AppTheme.primaryRed),
                          foregroundColor: AppTheme.primaryRed,
                        ),
                        child: const Text('Cancel Alert'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TipItem extends StatelessWidget {
  final String text;

  const _TipItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(color: AppTheme.accentBlue, fontSize: 16)),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppTheme.darkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
