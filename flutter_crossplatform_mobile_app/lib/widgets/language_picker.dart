import 'package:flutter/material.dart';
import '../models/locale_config.dart';
import '../theme/app_theme.dart';

/// Language selection widget for user onboarding and settings
class LanguagePicker extends StatelessWidget {
  final String? selectedLanguageCode;
  final Function(SupportedLanguage) onLanguageSelected;
  final bool showFlags;
  final bool compactMode;

  const LanguagePicker({
    super.key,
    this.selectedLanguageCode,
    required this.onLanguageSelected,
    this.showFlags = true,
    this.compactMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return compactMode ? _buildCompactPicker() : _buildFullPicker(context);
  }

  Widget _buildFullPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: SupportedLanguage.all.map((language) {
        final isSelected = language.code == selectedLanguageCode;

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          elevation: isSelected ? 4 : 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: isSelected ? AppTheme.accentBlue : Colors.transparent,
              width: 2,
            ),
          ),
          child: InkWell(
            onTap: () => onLanguageSelected(language),
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  if (showFlags) ...[
                    Text(
                      _getFlagEmoji(language.code),
                      style: const TextStyle(fontSize: 32),
                    ),
                    const SizedBox(width: 16),
                  ],
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          language.nativeName,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                              ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          language.englishName,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: AppTheme.textSecondary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  if (isSelected)
                    const Icon(
                      Icons.check_circle,
                      color: AppTheme.accentBlue,
                      size: 28,
                    ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCompactPicker() {
    return DropdownButtonFormField<SupportedLanguage>(
      initialValue: SupportedLanguage.all.firstWhere(
        (lang) => lang.code == selectedLanguageCode,
        orElse: () => SupportedLanguage.all.first,
      ),
      decoration: InputDecoration(
        labelText: 'Language / Idioma',
        prefixIcon: const Icon(Icons.language),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      items: SupportedLanguage.all.map((language) {
        return DropdownMenuItem(
          value: language,
          child: Row(
            children: [
              if (showFlags) ...[
                Text(
                  _getFlagEmoji(language.code),
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 12),
              ],
              Text(language.nativeName),
            ],
          ),
        );
      }).toList(),
      onChanged: (language) {
        if (language != null) {
          onLanguageSelected(language);
        }
      },
    );
  }

  String _getFlagEmoji(String languageCode) {
    // Map language codes to flag emojis
    // Using country flags as proxies for languages
    switch (languageCode) {
      case 'en':
        return '🇺🇸'; // US flag for English
      case 'es':
        return '🇪🇸'; // Spanish flag
      case 'fr':
        return '🇫🇷'; // French flag
      case 'de':
        return '🇩🇪'; // German flag
      case 'zh':
        return '🇨🇳'; // Chinese flag
      case 'ja':
        return '🇯🇵'; // Japanese flag
      case 'ko':
        return '🇰🇷'; // Korean flag
      case 'pt':
        return '🇧🇷'; // Portuguese (Brazil)
      case 'it':
        return '🇮🇹'; // Italian flag
      case 'ru':
        return '🇷🇺'; // Russian flag
      case 'ar':
        return '🇸🇦'; // Arabic (Saudi Arabia)
      case 'hi':
        return '🇮🇳'; // Hindi (India)
      default:
        return '🌐'; // Globe for unknown
    }
  }
}

/// Dialog to show language picker
class LanguagePickerDialog extends StatefulWidget {
  final String? currentLanguageCode;

  const LanguagePickerDialog({
    super.key,
    this.currentLanguageCode,
  });

  @override
  State<LanguagePickerDialog> createState() => _LanguagePickerDialogState();
}

class _LanguagePickerDialogState extends State<LanguagePickerDialog> {
  String? _selectedLanguageCode;

  @override
  void initState() {
    super.initState();
    _selectedLanguageCode = widget.currentLanguageCode;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Row(
        children: [
          Icon(Icons.language, color: AppTheme.accentBlue),
          SizedBox(width: 12),
          Text('Select Language'),
        ],
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: LanguagePicker(
          selectedLanguageCode: _selectedLanguageCode,
          onLanguageSelected: (language) {
            setState(() {
              _selectedLanguageCode = language.code;
            });
          },
          showFlags: true,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _selectedLanguageCode != null
              ? () {
                  final selectedLanguage = SupportedLanguage.fromCode(_selectedLanguageCode!);
                  Navigator.of(context).pop(selectedLanguage);
                }
              : null,
          child: const Text('Confirm'),
        ),
      ],
    );
  }
}
