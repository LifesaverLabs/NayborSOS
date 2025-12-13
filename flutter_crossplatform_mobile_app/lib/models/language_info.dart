import 'package:flutter/material.dart';

/// Language information including native names (endonyms) and AI translation confidence tiers
class LanguageInfo {
  final String code;
  final String endonym; // Native name of the language
  final String englishName;
  final ConfidenceTier tier;
  final bool isTranslated; // Whether translation is complete (vs English placeholder)

  const LanguageInfo({
    required this.code,
    required this.endonym,
    required this.englishName,
    required this.tier,
    required this.isTranslated,
  });

  String get confidenceNotice {
    switch (tier) {
      case ConfidenceTier.tier1:
        return 'This translation was AI-generated with high confidence. Professional review recommended for production use.';
      case ConfidenceTier.tier2:
        return 'This translation was AI-generated with good confidence. Professional review recommended for safety-critical consent and emergency terminology.';
      case ConfidenceTier.tier3:
        return '⚠️ This translation requires human review for safety-critical emergency phrases before production use.';
      case ConfidenceTier.tier4:
        return '⚠️ This is a draft translation only. Professional translation required before production use.';
    }
  }

  String get tierLabel {
    switch (tier) {
      case ConfidenceTier.tier1:
        return 'High AI Confidence';
      case ConfidenceTier.tier2:
        return 'Good AI Confidence';
      case ConfidenceTier.tier3:
        return 'Moderate AI Confidence';
      case ConfidenceTier.tier4:
        return 'Lower AI Confidence';
    }
  }

  Color get tierColor {
    switch (tier) {
      case ConfidenceTier.tier1:
        return const Color(0xFF10B981); // Green
      case ConfidenceTier.tier2:
        return const Color(0xFF3B82F6); // Blue
      case ConfidenceTier.tier3:
        return const Color(0xFFF59E0B); // Amber
      case ConfidenceTier.tier4:
        return const Color(0xFFEF4444); // Red
    }
  }
}

enum ConfidenceTier {
  tier1, // High confidence (professional or AI with extensive corpora)
  tier2, // Good confidence (professional spot-check recommended)
  tier3, // Moderate confidence (human review required for safety-critical)
  tier4, // Lower confidence (professional translation required)
}

/// All supported languages with native names (endonyms)
/// Organized alphabetically: Latin script first, then non-Latin scripts
class SupportedLanguages {
  static const List<LanguageInfo> all = [
    // === LATIN SCRIPT LANGUAGES (Alphabetized by endonym) ===
    LanguageInfo(code: 'af', endonym: 'Afrikaans', englishName: 'Afrikaans', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'sq', endonym: 'Shqip', englishName: 'Albanian', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'az', endonym: 'Azərbaycan', englishName: 'Azerbaijani', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'eu', endonym: 'Euskara', englishName: 'Basque', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'bs', endonym: 'Bosanski', englishName: 'Bosnian', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'ca', endonym: 'Català', englishName: 'Catalan', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'ceb', endonym: 'Sinugbuanong Binisaya', englishName: 'Cebuano', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'ny', endonym: 'Chichewa', englishName: 'Chichewa', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'hr', endonym: 'Hrvatski', englishName: 'Croatian', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'cs', endonym: 'Čeština', englishName: 'Czech', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'da', endonym: 'Dansk', englishName: 'Danish', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'nl', endonym: 'Nederlands', englishName: 'Dutch', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'en', endonym: 'English', englishName: 'English', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'et', endonym: 'Eesti', englishName: 'Estonian', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'tl', endonym: 'Filipino', englishName: 'Filipino/Tagalog', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'fi', endonym: 'Suomi', englishName: 'Finnish', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'fr', endonym: 'Français', englishName: 'French', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'gl', endonym: 'Galego', englishName: 'Galician', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'de', endonym: 'Deutsch', englishName: 'German', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'ht', endonym: 'Kreyòl Ayisyen', englishName: 'Haitian Creole', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'ha', endonym: 'Hausa', englishName: 'Hausa', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'hu', endonym: 'Magyar', englishName: 'Hungarian', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'is', endonym: 'Íslenska', englishName: 'Icelandic', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'ig', endonym: 'Igbo', englishName: 'Igbo', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'id', endonym: 'Bahasa Indonesia', englishName: 'Indonesian', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'ga', endonym: 'Gaeilge', englishName: 'Irish', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'it', endonym: 'Italiano', englishName: 'Italian', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'jv', endonym: 'Basa Jawa', englishName: 'Javanese', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'rw', endonym: 'Kinyarwanda', englishName: 'Kinyarwanda', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'ku', endonym: 'Kurdî', englishName: 'Kurdish', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'lv', endonym: 'Latviešu', englishName: 'Latvian', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'lt', endonym: 'Lietuvių', englishName: 'Lithuanian', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'lg', endonym: 'Luganda', englishName: 'Luganda', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'lb', endonym: 'Lëtzebuergesch', englishName: 'Luxembourgish', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'mk', endonym: 'Македонски', englishName: 'Macedonian', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'mg', endonym: 'Malagasy', englishName: 'Malagasy', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'ms', endonym: 'Bahasa Melayu', englishName: 'Malay', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'mt', endonym: 'Malti', englishName: 'Maltese', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'no', endonym: 'Norsk', englishName: 'Norwegian', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'om', endonym: 'Oromoo', englishName: 'Oromo', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'pl', endonym: 'Polski', englishName: 'Polish', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'pt', endonym: 'Português', englishName: 'Portuguese', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'qu', endonym: 'Runasimi', englishName: 'Quechua', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'ro', endonym: 'Română', englishName: 'Romanian', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'sn', endonym: 'chiShona', englishName: 'Shona', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'sk', endonym: 'Slovenčina', englishName: 'Slovak', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'sl', endonym: 'Slovenščina', englishName: 'Slovenian', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'so', endonym: 'Soomaali', englishName: 'Somali', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'es', endonym: 'Español', englishName: 'Spanish', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'su', endonym: 'Basa Sunda', englishName: 'Sundanese', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'sw', endonym: 'Kiswahili', englishName: 'Swahili', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'sv', endonym: 'Svenska', englishName: 'Swedish', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'bo', endonym: 'བོད་སྐད་', englishName: 'Tibetan', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'tr', endonym: 'Türkçe', englishName: 'Turkish', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'tk', endonym: 'Türkmen', englishName: 'Turkmen', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'uz', endonym: "O'zbek", englishName: 'Uzbek', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'vi', endonym: 'Tiếng Việt', englishName: 'Vietnamese', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'cy', endonym: 'Cymraeg', englishName: 'Welsh', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'xh', endonym: 'isiXhosa', englishName: 'Xhosa', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'yo', endonym: 'Yorùbá', englishName: 'Yoruba', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'zu', endonym: 'isiZulu', englishName: 'Zulu', tier: ConfidenceTier.tier4, isTranslated: false),

    // === NON-LATIN SCRIPT LANGUAGES (Alphabetized by English name for consistency) ===
    LanguageInfo(code: 'am', endonym: 'አማርኛ', englishName: 'Amharic', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'ar', endonym: 'العربية', englishName: 'Arabic', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'hy', endonym: 'Հայերեն', englishName: 'Armenian', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'as', endonym: 'অসমীয়া', englishName: 'Assamese', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'be', endonym: 'Беларуская', englishName: 'Belarusian', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'bn', endonym: 'বাংলা', englishName: 'Bengali', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'bho', endonym: 'भोजपुरी', englishName: 'Bhojpuri', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'bg', endonym: 'Български', englishName: 'Bulgarian', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'my', endonym: 'မြန်မာဘာသာ', englishName: 'Burmese', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'yue', endonym: '粵語', englishName: 'Cantonese', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'zh', endonym: '中文', englishName: 'Chinese (Mandarin)', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'ka', endonym: 'ქართული', englishName: 'Georgian', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'el', endonym: 'Ελληνικά', englishName: 'Greek', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'gu', endonym: 'ગુજરાતી', englishName: 'Gujarati', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'he', endonym: 'עברית', englishName: 'Hebrew', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'hi', endonym: 'हिन्दी', englishName: 'Hindi', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'ja', endonym: '日本語', englishName: 'Japanese', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'kn', endonym: 'ಕನ್ನಡ', englishName: 'Kannada', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'kk', endonym: 'Қазақ', englishName: 'Kazakh', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'km', endonym: 'ភាសាខ្មែរ', englishName: 'Khmer', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'ko', endonym: '한국어', englishName: 'Korean', tier: ConfidenceTier.tier1, isTranslated: true),
    LanguageInfo(code: 'ky', endonym: 'Кыргызча', englishName: 'Kyrgyz', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'lo', endonym: 'ລາວ', englishName: 'Lao', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'mai', endonym: 'मैथिली', englishName: 'Maithili', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'ml', endonym: 'മലയാളം', englishName: 'Malayalam', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'mr', endonym: 'मराठी', englishName: 'Marathi', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'mn', endonym: 'Монгол', englishName: 'Mongolian', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'ne', endonym: 'नेपाली', englishName: 'Nepali', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'or', endonym: 'ଓଡ଼ିଆ', englishName: 'Odia/Oriya', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'ps', endonym: 'پښتو', englishName: 'Pashto', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'fa', endonym: 'فارسی', englishName: 'Persian/Farsi', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'pa', endonym: 'ਪੰਜਾਬੀ', englishName: 'Punjabi', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'ru', endonym: 'Русский', englishName: 'Russian', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'sr', endonym: 'Српски', englishName: 'Serbian', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'sd', endonym: 'سنڌي', englishName: 'Sindhi', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'si', endonym: 'සිංහල', englishName: 'Sinhala', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'tg', endonym: 'Тоҷикӣ', englishName: 'Tajik', tier: ConfidenceTier.tier3, isTranslated: false),
    LanguageInfo(code: 'ta', endonym: 'தமிழ்', englishName: 'Tamil', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'tt', endonym: 'Татарча', englishName: 'Tatar', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'te', endonym: 'తెలుగు', englishName: 'Telugu', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'th', endonym: 'ไทย', englishName: 'Thai', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'ti', endonym: 'ትግርኛ', englishName: 'Tigrinya', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'uk', endonym: 'Українська', englishName: 'Ukrainian', tier: ConfidenceTier.tier1, isTranslated: false),
    LanguageInfo(code: 'ur', endonym: 'اردو', englishName: 'Urdu', tier: ConfidenceTier.tier2, isTranslated: false),
    LanguageInfo(code: 'ug', endonym: 'ئۇيغۇرچە', englishName: 'Uyghur', tier: ConfidenceTier.tier4, isTranslated: false),
    LanguageInfo(code: 'yi', endonym: 'ייִדיש', englishName: 'Yiddish', tier: ConfidenceTier.tier4, isTranslated: false),
  ];

  static LanguageInfo? findByCode(String code) {
    try {
      return all.firstWhere((lang) => lang.code == code);
    } catch (e) {
      return null;
    }
  }

  static List<LanguageInfo> get translated => all.where((lang) => lang.isTranslated).toList();
  static List<LanguageInfo> get untranslated => all.where((lang) => !lang.isTranslated).toList();
}
