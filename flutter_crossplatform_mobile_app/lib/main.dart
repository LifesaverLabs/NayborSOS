import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'theme/app_theme.dart';
import 'screens/onboarding/language_selection_screen.dart';
import 'models/language_info.dart';

void main() {
  runApp(const NayborSOSApp());
}

class NayborSOSApp extends StatelessWidget {
  const NayborSOSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: SupportedLanguages.all.map((lang) => Locale(lang.code)).toList(),
      home: const LanguageSelectionScreen(),
    );
  }
}
