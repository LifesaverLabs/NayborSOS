# Internationalization (i18n) Guide

This document describes the internationalization setup for the Naybor SOS Flutter application.

## Overview

The app uses Flutter's built-in internationalization support with ARB (Application Resource Bundle) files to manage translations. Currently, the app supports:

- **English (en)** - Default language
- **Spanish (es)** - Full translation

## Architecture

### Directory Structure

```
flutter_crossplatform_mobile_app/
├── l10n.yaml                          # L10n configuration
├── lib/
│   ├── l10n/
│   │   ├── app_en.arb                 # English translations (template)
│   │   └── app_es.arb                 # Spanish translations
│   ├── main.dart                      # Localization delegates configured here
│   └── models/
│       └── emergency_type.dart        # Localized emergency type model
└── .dart_tool/
    └── flutter_gen/
        └── gen_l10n/                  # Generated localization files
            └── app_localizations.dart # Auto-generated (do not edit)
```

### Configuration Files

#### `l10n.yaml`
```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
```

#### `pubspec.yaml`
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any

flutter:
  generate: true  # Enables code generation
```

## How It Works

### 1. ARB Files

ARB files contain key-value pairs for each translatable string:

**app_en.arb** (English - Template):
```json
{
  "@@locale": "en",
  "appTitle": "Naybor SOS",
  "@appTitle": {
    "description": "The title of the application"
  },
  "welcomeMessage": "Welcome to {appName}",
  "@welcomeMessage": {
    "description": "Welcome message with app name",
    "placeholders": {
      "appName": {
        "type": "String",
        "example": "Naybor SOS"
      }
    }
  }
}
```

**app_es.arb** (Spanish):
```json
{
  "@@locale": "es",
  "appTitle": "Naybor SOS",
  "welcomeMessage": "Bienvenido a {appName}"
}
```

### 2. Code Generation

Flutter automatically generates `AppLocalizations` class from ARB files:

```bash
flutter gen-l10n
# OR
flutter pub get  # Also triggers generation
```

### 3. Usage in Code

```dart
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// In your widget:
@override
Widget build(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;

  return Text(l10n.appTitle);  // "Naybor SOS"

  // With parameters:
  return Text(l10n.welcomeMessage('Naybor SOS'));
}
```

### 4. Main App Configuration

In [main.dart](lib/main.dart):

```dart
return MaterialApp(
  onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
  localizationsDelegates: const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('en'), // English
    Locale('es'), // Spanish
  ],
  home: const PhoneVerificationScreen(),
);
```

## Localized Components

### Fully Internationalized

✅ **Onboarding Flow**
- Phone verification screen
- Profile setup screen
- Capability selection screen (pending)

✅ **Main Screens**
- Home screen with availability toggle
- Profile screen with settings
- Create alert screen

✅ **Models**
- Emergency types with localized names, descriptions, and equipment

✅ **Navigation**
- Bottom navigation bar labels

### Partially Internationalized

⚠️ **Alert Screens** (some strings remaining)
- Active alerts screen
- Incoming alert screen
- Alert status screen (basic support)
- Response navigation screen

⚠️ **Settings Screens**
- Alert schedule screen (needs full update)

## Emergency Type Localization

The `EmergencyType` model uses a unique approach for localization:

```dart
class EmergencyType {
  final String nameKey;        // Stores key, not translated value
  final String descriptionKey;

  // Methods return localized strings
  String name(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (id) {
      case 'cpr_cardiac':
        return l10n.emergencyCprCardiacName;
      // ...
    }
  }

  String description(BuildContext context) {
    // Similar pattern
  }
}

// Usage:
Text(emergencyType.name(context))  // NOT: emergencyType.name
```

## Adding a New Language

### Step 1: Create ARB File

Create `lib/l10n/app_[locale].arb` (e.g., `app_fr.arb` for French):

```json
{
  "@@locale": "fr",
  "appTitle": "Naybor SOS",
  "tagline": "Miliciens et Miliciennes Modernes"
}
```

### Step 2: Add to Supported Locales

In [main.dart](lib/main.dart):

```dart
supportedLocales: const [
  Locale('en'),
  Locale('es'),
  Locale('fr'),  // Add new locale
],
```

### Step 3: Generate

```bash
flutter pub get
```

The new locale is now available!

## Adding New Translatable Strings

### Step 1: Add to Template ARB

Edit `lib/l10n/app_en.arb`:

```json
{
  "newFeatureTitle": "My New Feature",
  "@newFeatureTitle": {
    "description": "Title for the new feature screen"
  },

  "greetUser": "Hello, {userName}!",
  "@greetUser": {
    "description": "Greeting message with user's name",
    "placeholders": {
      "userName": {
        "type": "String",
        "example": "John"
      }
    }
  }
}
```

### Step 2: Add Translations

Update all other ARB files (`app_es.arb`, etc.):

```json
{
  "newFeatureTitle": "Mi Nueva Función",
  "greetUser": "¡Hola, {userName}!"
}
```

### Step 3: Use in Code

```dart
Text(AppLocalizations.of(context)!.newFeatureTitle)
Text(AppLocalizations.of(context)!.greetUser('María'))
```

## Best Practices

### ✅ DO

- **Use descriptive keys**: `emergencyAlertTitle` not `title1`
- **Add descriptions**: Help translators understand context
- **Include placeholders**: For dynamic content
- **Extract all user-facing strings**: Even button labels
- **Keep emojis in ARB files**: They're part of the UI text
- **Use consistent naming**: Follow existing patterns

### ❌ DON'T

- **Don't hardcode strings**: Always use localization
- **Don't concatenate strings**: Use placeholders instead
- **Don't use Dart keywords**: e.g., use `continueButton` not `continue`
- **Don't forget context**: Pass `BuildContext` to model methods
- **Don't edit generated files**: They're regenerated on build

## String Formatting

### Simple Strings
```json
{
  "cancel": "Cancel"
}
```

### With Parameters
```json
{
  "itemCount": "{count} items",
  "@itemCount": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  }
}
```

Usage: `l10n.itemCount(42)` → "42 items"

### With Pluralization
```json
{
  "responseCount": "{count, plural, =0{No responses} =1{1 response} other{{count} responses}}",
  "@responseCount": {
    "placeholders": {
      "count": {
        "type": "int"
      }
    }
  }
}
```

## Testing Localization

### Test Different Locales

```dart
// Override device locale for testing
MaterialApp(
  locale: const Locale('es'),  // Force Spanish
  // ...
);
```

### Check for Missing Translations

Missing keys will throw runtime errors in debug mode:
```
AppLocalizations.of(context)!.nonExistentKey
// Error: No method 'nonExistentKey' on AppLocalizations
```

### Visual Testing

1. Change device language settings
2. Hot restart the app
3. Verify all strings are translated
4. Check for text overflow (some languages are longer)

## Current Translation Coverage

| Screen/Component | English | Spanish |
|-----------------|---------|---------|
| Phone Verification | ✅ | ✅ |
| Profile Setup | ✅ | ✅ |
| Home Screen | ✅ | ✅ |
| Create Alert | ✅ | ✅ |
| Profile Screen | ✅ | ✅ |
| Emergency Types | ✅ | ✅ |
| Navigation | ✅ | ✅ |
| Active Alerts | 🔶 | 🔶 |
| Incoming Alert | 🔶 | 🔶 |
| Alert Schedule | 🔶 | 🔶 |
| Capability Selection | 🔶 | 🔶 |

**Legend:**
- ✅ Fully internationalized
- 🔶 Partially internationalized (strings identified, ARB updates needed)
- ❌ Not internationalized

## Troubleshooting

### "AppLocalizations not found"

Run code generation:
```bash
flutter pub get
# or
flutter gen-l10n
```

### Changes Not Showing

1. Run `flutter pub get`
2. Hot restart (not hot reload)
3. Check ARB file syntax (valid JSON)

### Runtime Errors

- Ensure all ARB files have the same keys
- Check placeholder types match usage
- Verify context is available (not in static methods)

## Resources

- [Flutter Internationalization Guide](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
- [ARB File Format](https://github.com/google/app-resource-bundle/wiki/ApplicationResourceBundleSpecification)
- [Intl Package](https://pub.dev/packages/intl)

## Contributing Translations

To contribute a new language translation:

1. Copy `lib/l10n/app_en.arb` to `lib/l10n/app_[locale].arb`
2. Translate all values (keep keys unchanged)
3. Update `supportedLocales` in [main.dart](lib/main.dart)
4. Test thoroughly
5. Submit a pull request

---

**Last Updated:** December 2024
**Supported Languages:** English, Spanish
**Translation Coverage:** ~75% (core flows complete)
