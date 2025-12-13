# Claude Code Development Guidelines for Naybor SOS

**Last Updated:** 2025-12-13
**Purpose:** Critical reminders and guidelines for AI-assisted development
**Organization:** Lifesaver Labs Public Benefit Corporation

---

## 🚨 CRITICAL RULE #1: NEVER HARDCODE DISPLAY STRINGS

**ZERO TOLERANCE. THIS IS NON-NEGOTIABLE.**

### The Rule

Every single user-facing string MUST use `AppLocalizations.of(context)!` and be defined in ARB files.

### Why This Matters

- This is a **global lifesaving app** supporting 109 languages
- Hardcoded strings lock out 99% of the world's population
- During emergencies, people need their native language
- Hardcoded strings create massive technical debt
- It violates our core value of inclusive accessibility

### What Must Be Localized

**EVERYTHING users see:**
- ✅ All `Text()` widget content
- ✅ All `hintText` values
- ✅ All `labelText` values
- ✅ All AppBar `title` values
- ✅ All button labels
- ✅ All error messages
- ✅ All status messages
- ✅ All dialog content
- ✅ All tooltips
- ✅ All placeholder text
- ✅ Even "temporary" or "prototype" strings

### What Can Stay Hardcoded

**ONLY these things:**
- ❌ Debug console logs (not visible to users)
- ❌ Enum values / constants (internal identifiers)
- ❌ API keys / configuration (not display text)
- ❌ Test fixture data (test files only)

### Examples

```dart
// ❌ ABSOLUTELY FORBIDDEN
Text('Select Language / Seleccionar idioma')
Text('Continue / Continuar')
Text('Search languages...')
hintText: 'Enter your name'
title: const Text('Settings')
'Translation Quality: ${tier}'
'Help improve this translation!'

// ✅ CORRECT AND MANDATORY
Text(AppLocalizations.of(context)!.selectLanguage)
Text(AppLocalizations.of(context)!.continueButton)
Text(AppLocalizations.of(context)!.searchLanguagesHint)
hintText: AppLocalizations.of(context)!.enterNameHint
title: Text(AppLocalizations.of(context)!.settings)
AppLocalizations.of(context)!.translationQuality(tier)
Text(AppLocalizations.of(context)!.helpImproveTranslation)
```

### Pre-Code Checklist

Before writing ANY `Text()` widget:
1. ✅ Is this visible to users? → MUST use AppLocalizations
2. ✅ Does the string exist in app_en.arb? → If not, add it first
3. ✅ Does the method need BuildContext? → Pass it as parameter if needed

### Pre-Commit Checklist

Run these commands before EVERY commit:

```bash
# Should find ZERO matches (except in test files and comments)
grep -r "Text('" lib/ --include="*.dart" | grep -v "// "
grep -r 'hintText:.*"' lib/ --include="*.dart"
grep -r "title:.*Text('" lib/ --include="*.dart"
```

If you find hardcoded strings:
1. Add them to `lib/l10n/app_en.arb` first
2. Regenerate localizations: `flutter gen-l10n`
3. Replace hardcoded string with `AppLocalizations.of(context)!.yourKey`
4. Commit both the ARB file AND the code changes together

### File Structure

```
lib/
├── l10n/
│   ├── app_en.arb          # English strings (source of truth)
│   ├── app_es.arb          # Spanish translations
│   ├── app_fr.arb          # French translations
│   └── app_*.arb           # 106 more languages
├── generated/
│   └── l10n/
│       └── app_localizations.dart  # Generated - DO NOT EDIT
```

### Adding New Strings

**Process:**
1. Add to `lib/l10n/app_en.arb`:
```json
{
  "yourNewKey": "Your English text here",
  "@yourNewKey": {
    "description": "Clear description for translators"
  }
}
```

2. Regenerate: `flutter gen-l10n`

3. Use in code: `AppLocalizations.of(context)!.yourNewKey`

### Common Mistakes

```dart
// ❌ MISTAKE: Multilingual hardcoded string
Text('Welcome / Bienvenido / Bienvenue')
// Why wrong: Still hardcoded, not scalable to 109 languages
// ✅ FIX: AppLocalizations.of(context)!.welcome

// ❌ MISTAKE: Concatenating localized + hardcoded
Text('Status: ${AppLocalizations.of(context)!.active}')
// Why wrong: "Status: " is hardcoded English
// ✅ FIX: AppLocalizations.of(context)!.statusLabel(status)

// ❌ MISTAKE: Hardcoded with TODO comment
Text('Confirm')  // TODO: localize this later
// Why wrong: "Later" never comes, creates technical debt
// ✅ FIX: Do it now, not later
```

---

## 🚨 CRITICAL RULE #2: Privacy-Preserving Location

Never store exact GPS coordinates in user profiles. See `prompts/PROMPT.md` for details.

---

## 🚨 CRITICAL RULE #3: Lives Over Features

This is emergency response software. Poor execution can kill people. Every line of code matters.

---

## Quick Reference

**Key Files:**
- `prompts/PROMPT.md` - Full development guidelines
- `lib/l10n/app_en.arb` - English localization strings
- `l10n.yaml` - Localization configuration

**Key Commands:**
```bash
# Regenerate localizations after editing ARB files
flutter gen-l10n

# Check for hardcoded strings (should be zero)
grep -r "Text('" lib/ --include="*.dart" | grep -v "//"

# Run the app
flutter run

# Analyze code quality
flutter analyze
```

**Getting Help:**
- Documentation: `docs/` directory
- Issues: https://github.com/LifesaverLabs/NayborSOS/issues
- Team: team@lifesaverlabs.org

---

## Remember

**Every hardcoded string is a bug.**
**Every untranslated feature locks out billions of people.**
**Every privacy violation could expose someone in danger.**
**Every life-or-death feature requires supreme care.**

When in doubt, ask. Never ship hardcoded strings.
