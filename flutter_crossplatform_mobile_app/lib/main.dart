import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/onboarding/phone_verification_screen.dart';

void main() {
  runApp(const NayborSOSApp());
}

class NayborSOSApp extends StatelessWidget {
  const NayborSOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naybor SOS',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const PhoneVerificationScreen(),
    );
  }
}
