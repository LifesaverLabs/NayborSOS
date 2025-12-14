import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../theme/app_theme.dart';
import '../../models/language_info.dart';
import 'phone_verification_screen.dart';

/// Language selection screen for onboarding flow.
///
/// TRANSLATION STRATEGY:
/// This app supports 109 languages, but translations are managed in BATCHES
/// rather than continuously. During active development:
///
/// - All new features are developed in American English
/// - Proper localization keys are added to app_en.arb immediately
/// - Full translation to 108+ languages happens in batches:
///   * Before major release candidates
///   * When volunteer translators contribute
///   * During country-specific launch pushes
///
/// This batch approach maintains development velocity while ensuring proper
/// i18n architecture. Incremental translation of 109 languages at every step
/// would significantly slow development. Features stabilize first, then get
/// fully translated during release preparation.
///
/// See INTERNATIONALIZATION.md for complete translation workflow.
class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _searchQuery = '';
  LanguageInfo? _selectedLanguage;

  List<LanguageInfo> get _filteredLanguages {
    if (_searchQuery.isEmpty) {
      return SupportedLanguages.all;
    }
    final query = _searchQuery.toLowerCase();
    return SupportedLanguages.all.where((lang) {
      return lang.endonym.toLowerCase().contains(query) ||
          lang.englishName.toLowerCase().contains(query) ||
          lang.code.toLowerCase().contains(query);
    }).toList();
  }

  void _onLanguageSelected(LanguageInfo language) {
    setState(() {
      _selectedLanguage = language;
    });
  }

  void _continue() {
    if (_selectedLanguage != null) {
      // TODO: Persist selected language to shared preferences
      // TODO: Update app locale

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const PhoneVerificationScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Language / Seleccionar idioma'),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Translation confidence notice (if language selected and not English)
          if (_selectedLanguage != null && _selectedLanguage!.code != 'en')
            _buildConfidenceNotice(),

          // Search bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search languages / Buscar idiomas',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _searchQuery = '';
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),

          // Language list
          Expanded(
            child: ListView.builder(
              itemCount: _filteredLanguages.length,
              itemBuilder: (context, index) {
                final language = _filteredLanguages[index];
                final isSelected = _selectedLanguage?.code == language.code;

                return ListTile(
                  leading: Radio<String>(
                    value: language.code,
                    groupValue: _selectedLanguage?.code,
                    onChanged: (value) => _onLanguageSelected(language),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          language.endonym,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              ),
                        ),
                      ),
                      if (!language.isTranslated)
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppTheme.backgroundColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'EN',
                            style: TextStyle(
                              fontSize: 10,
                              color: AppTheme.textDisabled,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Expanded(
                        child: Text(
                          language.englishName,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: language.tierColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: language.tierColor,
                            width: 1,
                          ),
                        ),
                        child: Text(
                          language.tierLabel,
                          style: TextStyle(
                            fontSize: 10,
                            color: language.tierColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () => _onLanguageSelected(language),
                  selected: isSelected,
                  selectedTileColor: AppTheme.lightBlue.withOpacity(0.3),
                );
              },
            ),
          ),

          // Continue button
          if (_selectedLanguage != null)
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _continue,
                    child: Text(
                      'Continue / Continuar',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildConfidenceNotice() {
    final language = _selectedLanguage!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: language.tierColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: language.tierColor,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                language.tier == ConfidenceTier.tier1
                    ? Icons.check_circle
                    : language.tier == ConfidenceTier.tier2
                        ? Icons.info
                        : Icons.warning,
                color: language.tierColor,
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Translation Quality: ${language.tierLabel}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: language.tierColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            language.confidenceNotice,
            style: TextStyle(
              fontSize: 12,
              color: AppTheme.darkBlue,
              height: 1.4,
            ),
          ),
          if (language.tier.index >= 1) // Tier 2 or lower
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Icon(Icons.translate, size: 14, color: language.tierColor),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'Help improve translations - report issues or contribute better translations!',
                      style: TextStyle(
                        fontSize: 11,
                        fontStyle: FontStyle.italic,
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
