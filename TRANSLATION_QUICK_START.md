# Translation Quick Start Guide

## What Was Generated

**108 language ARB files** have been created for Naybor SOS, organized in 3 tiers:
- **Tier 1:** 20 major global languages (4.5B+ speakers)
- **Tier 2:** 40 regional languages
- **Tier 3:** 48 additional languages for extended coverage

**Total:** 109 files (108 translations + English base)

## File Location

All ARB files are located at:
```
/flutter_crossplatform_mobile_app/lib/l10n/
```

## File Naming Convention

- **English (base):** `app_en.arb`
- **Spanish:** `app_es.arb`
- **Chinese:** `app_zh.arb`
- **Pattern:** `app_{locale_code}.arb`

## Current Status

### ✓ Translated (4 languages)
- **English (en):** Complete - Source language
- **Spanish (es):** Complete with professional translations
- **French (fr):** Complete with AI-generated translations (professional review recommended)
- **Chinese/Mandarin (zh):** Complete with AI-generated translations (professional review recommended)

### ⚠️ Needs Translation (105 languages)
All other language files use English text as placeholders. They have:
- Correct ARB structure ✓
- Proper locale identifiers ✓
- All metadata preserved ✓
- Valid JSON format ✓
- Ready for professional translation ✓

**Translation Progress:** 4/109 languages (3.7%)

## How to Use

### 1. Generate Localization Code
```bash
cd flutter_crossplatform_mobile_app
flutter gen-l10n
```

This command:
- Reads all ARB files
- Generates Dart localization classes
- Creates type-safe translation accessors
- Works with all 109 languages

### 2. Test in App
The app will automatically:
- Detect device locale
- Load appropriate translations
- Fall back to English if translation unavailable

### 3. Add Professional Translations

**For each language file:**

1. Open `flutter_crossplatform_mobile_app/lib/l10n/app_{locale}.arb`
2. Replace English text with native translations
3. Keep all `@` metadata keys unchanged
4. Preserve placeholders: `{phoneNumber}`, `{count}`, `{distance}`, etc.
5. Run `flutter gen-l10n` to regenerate

**Example - Translating French (app_fr.arb):**
```json
{
  "@@locale": "fr",
  "appTitle": "Naybor SOS",  // Keep brand name
  "tagline": "Minutemen et Minutewomen Modernes",  // Translate
  "signUpToHelp": "Inscrivez-vous pour aider vos voisins",  // Translate
  "@signUpToHelp": {
    "description": "Sign up header text"  // Keep metadata
  },
  ...
}
```

## Priority Translation Order

### Phase 1: High-Impact Languages (Tier 1)
Start with these 20 languages for maximum reach:
```
zh (Chinese), hi (Hindi), es (Spanish - DONE), fr (French),
ar (Arabic), bn (Bengali), pt (Portuguese), ru (Russian),
ja (Japanese), pa (Punjabi), de (German), jv (Javanese),
ko (Korean), te (Telugu), vi (Vietnamese), mr (Marathi),
ta (Tamil), tr (Turkish), it (Italian), ur (Urdu)
```

### Phase 2: Regional Focus (Tier 2)
Select based on target markets - 40 languages available

### Phase 3: Complete Coverage (Tier 3)
Add remaining 48 languages as budget allows

## Translation Services

### Recommended Platforms
- **Crowdin** - Collaborative translation platform
- **Lokalise** - Developer-friendly localization
- **POEditor** - Simple translation management
- **OneSky** - Professional translation services

### DIY Translation
- Use native speakers from your community
- Have medical professionals review emergency terminology
- Test with actual users from each locale

## Testing Translations

### Validation Checklist
- [ ] All 93 strings translated
- [ ] Placeholders preserved correctly
- [ ] Text fits in UI components
- [ ] Emergency terminology is accurate
- [ ] Cultural appropriateness verified
- [ ] Native speaker reviewed
- [ ] JSON format validated

### Testing RTL Languages
These languages require right-to-left layout:
- Arabic (ar)
- Hebrew (he)
- Persian (fa)
- Urdu (ur)
- Yiddish (yi)
- Pashto (ps)
- Sindhi (sd)
- Uyghur (ug)

Test RTL support in Flutter app settings.

## Common Issues & Solutions

### Issue: Text Overflow
**Solution:** Some languages are more verbose. Adjust UI to accommodate or use abbreviations.

### Issue: Missing Characters
**Solution:** Ensure app includes fonts supporting all Unicode characters for the language.

### Issue: Incorrect Locale
**Solution:** Verify `@@locale` matches the two-letter ISO 639-1 code.

### Issue: Placeholder Not Working
**Solution:** Ensure placeholders like `{phoneNumber}` are preserved exactly in translations.

## Files Reference

### Core Files
- **Generator Script:** `/generate_translations.py`
- **Full Report:** `/TRANSLATION_REPORT.md`
- **This Guide:** `/TRANSLATION_QUICK_START.md`

### Configuration
- **Flutter L10n Config:** `/flutter_crossplatform_mobile_app/l10n.yaml`
- **Pubspec:** `/flutter_crossplatform_mobile_app/pubspec.yaml` (has `generate: true`)

## Need Help?

### Regenerate All Files
If you need to regenerate all translation files:
```bash
python3 generate_translations.py
```

This will:
- Read the English base file
- Regenerate all 108 language files
- Preserve Spanish translations
- Use English placeholders for others

### Add New Strings
1. Add to `app_en.arb` first
2. Run generator to propagate to all languages
3. Commission translations for new strings
4. Update all language files

### Verify File Integrity
```bash
# Count files (should be 109)
ls flutter_crossplatform_mobile_app/lib/l10n/app_*.arb | wc -l

# Validate all JSON
for file in flutter_crossplatform_mobile_app/lib/l10n/app_*.arb; do
  python3 -m json.tool "$file" > /dev/null || echo "Invalid: $file"
done
```

## Next Steps

1. **Immediate:** Run `flutter gen-l10n` to generate Dart code
2. **Short-term:** Translate Tier 1 languages (20 languages)
3. **Medium-term:** Add regional languages based on target markets
4. **Long-term:** Complete all 108 languages for global coverage

## Success Metrics

Track these for each language:
- Translation completion percentage
- Native speaker review status
- User adoption in that locale
- Error/issue reports from users

---

**Generated:** December 13, 2025
**Last Updated:** December 13, 2025
**Status:** Translation in progress (4/109 complete)
**Files:** 109 ARB files (all valid JSON)
