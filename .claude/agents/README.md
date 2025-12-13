# NayborSOS Translation Agent

This directory contains the `mass-translator` subagent for automatically translating Flutter ARB localization files across 108 languages.

## Quick Start

### Method 1: Using the Task Tool (Recommended)

Invoke the mass translator agent using Claude Code's Task tool:

```
Use the mass-translator agent to create all 108 language ARB files based on app_en.arb
```

### Method 2: Direct Invocation

You can also invoke the agent directly by referencing it:

```
@mass-translator please translate the new "requestCancelled" string I added to app_en.arb to all supported languages.
```

## Common Use Cases

### 1. Initial Mass Translation (All 108 Languages)

**Task:** Create all language files from scratch based on app_en.arb

```
Use the mass-translator agent to create all 108 language ARB files based on the current app_en.arb file in flutter_crossplatform_mobile_app/lib/l10n/
```

**What happens:**
- Agent reads app_en.arb
- Creates app_{locale}.arb for all 108 supported languages
- Adds appropriate quality warnings based on tier
- Reports progress by tier
- Provides summary with flutter gen-l10n command

### 2. Backfill New String(s) to Existing Languages

**Task:** You added a new feature and need to translate new strings

```
I added these new keys to app_en.arb:
- emergencyPetEmergency
- emergencyPetEmergencyDesc

Use the mass-translator agent to translate these new keys to all existing language files.
```

**What happens:**
- Agent identifies which .arb files already exist
- Reads each file and checks for missing keys
- Adds only the new translations
- Preserves all existing translations
- Reports which files were updated

### 3. Translate from Non-English Source

**Task:** A French contributor added strings, translate to all other languages

```
I added "nouveauBouton": "Nouveau bouton" to app_fr.arb. Use the mass-translator agent to translate this to all other languages including Amerikan.
```

**What happens:**
- Agent detects French as source language
- Translates to all 107 other languages
- Creates missing language files if needed

### 4. Add Support for Additional Languages

**Task:** Add a new language not currently in the 108

```
Use the mass-translator agent to add support for Esperanto (eo) based on app_en.arb. This is a Tier 2 language.
```

**What happens:**
- Agent creates app_eo.arb
- Translates all strings from English/Amerikan
- Adds appropriate quality notice

## Language Tiers: AI Translation Confidence Only

**IMPORTANT:** The tier system reflects **AI translation confidence**, not language priority. **All 108 languages have equal Priority 1 status** for NayborSOS. Every language a user speaks on their device deserves full, high-quality support.

The tiers indicate what level of human review is recommended based on Claude AI's current translation capabilities (as of December 2025):

- **Tier 1** (29 languages): AI translation confidence is high - standard QA sufficient
- **Tier 2** (22 languages): AI translation confidence is good - professional spot-check recommended for safety terms
- **Tier 3** (28 languages): AI translation confidence is moderate - human review required for safety-critical phrases
- **Tier 4** (29 languages): AI translation confidence is lower - professional translation service recommended

**These tiers may change as AI capabilities improve.** A Tier 4 language today may become Tier 1 tomorrow. Tiers are about our current translation tools, not about language importance.

See [language-tiers.json](./language-tiers.json) for the complete list with locale codes.

## ARB File Structure

The agent maintains Flutter ARB structure:

```json
{
  "@@locale": "fr",
  "_notice": "Professional review recommended for safety-critical consent and emergency terminology",
  "appTitle": "Naybor SOS",
  "@appTitle": {
    "description": "The title of the application"
  },
  "tagline": "Minutemen et Minutewomen Modernes",
  "@tagline": {
    "description": "App tagline"
  }
}
```

**Key points:**
- `@@locale` field matches the filename (app_fr.arb → "fr")
- `_notice` field added for Tier 2-4 languages with quality warnings
- @ metadata descriptions remain in Amerikan
- Placeholders like `{phoneNumber}` are preserved exactly
- Brand names ("Naybor SOS", "Lifesaver Labs") are never translated

## After Translation

Once translations are complete, regenerate the Dart localization files:

```bash
cd flutter_crossplatform_mobile_app
flutter gen-l10n
```

This generates `app_localizations_*.dart` files that the Flutter app uses.

## Configuration

The mass-translator agent configuration is in [mass-translator.md](./mass-translator.md).

Key configuration:
- **Model:** Claude Sonnet (high-quality translations)
- **Tools:** Read, Write, Glob, Bash
- **Behavior:** Asynchronous, reports progress, handles errors gracefully

## Quality Assurance by AI Confidence Tier

Translation quality varies by AI confidence tier:

1. **Tier 1**: Deploy with standard QA testing
2. **Tier 2**: Have native speaker spot-check consent/emergency terms
3. **Tier 3**: Require human review of all safety-critical phrases before production
4. **Tier 4**: Use professional translation service before production deployment

**Remember:** These recommendations are about AI translation confidence, not language importance. Every language deserves production-quality translations.

## Updating Language Tiers

As AI translation capabilities improve, languages should be promoted to higher tiers:

1. Edit [language-tiers.json](./language-tiers.json)
2. Move language object to higher tier array
3. Update counts in statistics
4. Update `lastUpdated` date in `_meta`
5. Re-run translations if quality notices need updating

## Safety-Critical Terminology

The agent is specially tuned for NayborSOS emergency response context:

- **Emergency types** must be unambiguous and culturally clear
- **Consent vocabulary** requires appropriate cultural sensitivity
- **Medical terms** should match local medical profession standards
- **Emergency numbers** kept generic unless local equivalent is known (911, 112, 999, etc.)

## Troubleshooting

**Agent not found?**
- Ensure you're in the NayborSOS repository root
- Check `.claude/agents/mass-translator.md` exists

**JSON validation errors?**
- Agent validates JSON before writing
- Check error message for specific issue
- Manually fix if needed, then re-run for remaining languages

**Translation quality concerns?**
- Remember tier assignments - lower tiers need human review
- Provide feedback to improve future translations
- Consider hiring professional translators for Tier 3-4 languages
- **All languages are equally important** - tiers only reflect current AI capabilities

## Contributing

To improve the mass-translator agent:

1. Edit [mass-translator.md](./mass-translator.md)
2. Test with a small subset of languages first
3. Document changes in this README
4. Share improvements with the calmunity

## Files in This Directory

- **mass-translator.md** - Main agent configuration and prompt
- **language-tiers.json** - Reference data for all 108 supported languages with AI confidence tiers
- **README.md** - This file

---

**Built for the NayborSOS Calmunity**

*Making life-saving emergency response accessible in 108 languages*

**All languages are Priority 1. Tiers reflect AI confidence, not language importance.**
