import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:NayborSOS/generated/l10n/app_localizations.dart';
import 'theme/app_theme.dart';
import 'screens/onboarding/langauge_selection_screen.dart';
import 'models/language_info.dart';

void main() {
  runApp(const NayborSOSApp());
}

class NayborSOSApp extends StatefulWidget {
  const NayborSOSApp({super.key});

  @override
  State<NayborSOSApp> createState() => NayborSOSAppState();

  static NayborSOSAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<NayborSOSAppState>();
  }
}

class NayborSOSAppState extends State<NayborSOSApp> {
  Locale? _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      locale: _locale,
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
