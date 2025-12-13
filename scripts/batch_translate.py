#!/usr/bin/env python3
"""
Batch translation script for NayborSOS ARB localization files.
Translates app_en.arb into 108 languages using Claude API with appropriate quality tiers.
"""

import json
import os
import sys
from pathlib import Path
from anthropic import Anthropic

# Language tier configuration (based on .claude/agents/language-tiers.json)
TIER_CONFIG = {
    "tier1": {
        "languages": ["ar", "zh", "cs", "da", "nl", "fi", "fr", "de", "el", "he", "hi", "hu", "id", "it", "ja", "ko", "ms", "no", "pl", "pt", "ro", "ru", "es", "sv", "th", "tr", "uk", "vi"],
        "notice": None  # No notice needed for Tier 1
    },
    "tier2": {
        "languages": ["af", "bn", "bg", "ca", "hr", "et", "tl", "gu", "kn", "lv", "lt", "ml", "mr", "fa", "pa", "sr", "sk", "sl", "sw", "ta", "te", "ur"],
        "notice": "Professional review recommended for safety-critical consent and emergency terminology"
    },
    "tier3": {
        "languages": ["sq", "am", "hy", "az", "eu", "be", "bs", "my", "yue", "ka", "ha", "is", "ga", "kk", "km", "ky", "lo", "mk", "mn", "ne", "or", "ps", "si", "so", "tg", "uz", "cy", "yo"],
        "notice": "⚠️ HUMAN REVIEW REQUIRED for safety-critical emergency phrases before production use"
    },
    "tier4": {
        "languages": ["as", "bho", "ceb", "ny", "gl", "ht", "ig", "jv", "rw", "ku", "lg", "lb", "mai", "mg", "mt", "om", "qu", "sn", "sd", "su", "tt", "bo", "ti", "tk", "ug", "wo", "xh", "yi", "zu"],
        "notice": "⚠️ PROFESSIONAL TRANSLATION REQUIRED - This is a draft translation only. Do not use for production without professional review."
    }
}

LANGUAGE_NAMES = {
    "ar": "Arabic", "zh": "Chinese (Mandarin)", "cs": "Czech", "da": "Danish", "nl": "Dutch",
    "fi": "Finnish", "fr": "French", "de": "German", "el": "Greek", "he": "Hebrew",
    "hi": "Hindi", "hu": "Hungarian", "id": "Indonesian", "it": "Italian", "ja": "Japanese",
    "ko": "Korean", "ms": "Malay", "no": "Norwegian", "pl": "Polish", "pt": "Portuguese",
    "ro": "Romanian", "ru": "Russian", "es": "Spanish", "sv": "Swedish", "th": "Thai",
    "tr": "Turkish", "uk": "Ukrainian", "vi": "Vietnamese", "af": "Afrikaans", "bn": "Bengali",
    "bg": "Bulgarian", "ca": "Catalan", "hr": "Croatian", "et": "Estonian", "tl": "Filipino/Tagalog",
    "gu": "Gujarati", "kn": "Kannada", "lv": "Latvian", "lt": "Lithuanian", "ml": "Malayalam",
    "mr": "Marathi", "fa": "Persian/Farsi", "pa": "Punjabi", "sr": "Serbian", "sk": "Slovak",
    "sl": "Slovenian", "sw": "Swahili", "ta": "Tamil", "te": "Telugu", "ur": "Urdu",
    "sq": "Albanian", "am": "Amharic", "hy": "Armenian", "az": "Azerbaijani", "eu": "Basque",
    "be": "Belarusian", "bs": "Bosnian", "my": "Burmese", "yue": "Cantonese", "ka": "Georgian",
    "ha": "Hausa", "is": "Icelandic", "ga": "Irish", "kk": "Kazakh", "km": "Khmer",
    "ky": "Kyrgyz", "lo": "Lao", "mk": "Macedonian", "mn": "Mongolian", "ne": "Nepali",
    "or": "Odia/Oriya", "ps": "Pashto", "si": "Sinhala", "so": "Somali", "tg": "Tajik",
    "uz": "Uzbek", "cy": "Welsh", "yo": "Yoruba", "as": "Assamese", "bho": "Bhojpuri",
    "ceb": "Cebuano", "ny": "Chichewa", "gl": "Galician", "ht": "Haitian Creole",
    "ig": "Igbo", "jv": "Javanese", "rw": "Kinyarwanda", "ku": "Kurdish", "lg": "Luganda",
    "lb": "Luxembourgish", "mai": "Maithili", "mg": "Malagasy", "mt": "Maltese", "om": "Oromo",
    "qu": "Quechua", "sn": "Shona", "sd": "Sindhi", "su": "Sundanese", "tt": "Tatar",
    "bo": "Tibetan", "ti": "Tigrinya", "tk": "Turkmen", "ug": "Uyghur", "wo": "Wolof",
    "xh": "Xhosa", "yi": "Yiddish", "zu": "Zulu"
}


def load_source_arb(source_path):
    """Load the source ARB file (app_en.arb)"""
    with open(source_path, 'r', encoding='utf-8') as f:
        return json.load(f)


def extract_translatable_strings(arb_data):
    """Extract only translatable string values (not @ metadata keys)"""
    translatable = {}
    for key, value in arb_data.items():
        if not key.startswith('@') and key != '@@locale':
            translatable[key] = value
    return translatable


def translate_to_language(client, source_strings, locale_code, language_name, tier_notice):
    """Use Claude API to translate strings to target language"""

    # Build the translation prompt
    strings_json = json.dumps(source_strings, indent=2, ensure_ascii=False)

    prompt = f"""Translate the following English/Amerikan app strings to {language_name} ({locale_code}).

CRITICAL RULES:
1. NEVER translate "Naybor SOS" or "Lifesaver Labs" (brand names)
2. Preserve ALL placeholders EXACTLY: {{phoneNumber}}, {{count}}, {{distance}}, {{version}}, {{emergencyType}}
3. Use culturally appropriate emergency and medical terminology
4. Maintain urgency levels (🔴 life-threatening vs 🟢 non-life-threatening)
5. Use formal/informal pronouns as culturally appropriate for emergency situations
6. Keep emergency numbers generic ("emergency services") unless local equivalent is widely known

Context: This is a life-saving emergency response app. Translations must be clear and unambiguous, especially for:
- Emergency types (CPR, AED, overdose, etc.)
- Consent-related terminology
- Safety instructions

Source strings in JSON format:
{strings_json}

Respond with ONLY a valid JSON object containing the translated strings. Use the same keys, translate only the values. Ensure proper JSON formatting with escaped quotes where needed."""

    response = client.messages.create(
        model="claude-sonnet-4-20250514",
        max_tokens=4000,
        messages=[{"role": "user", "content": prompt}]
    )

    # Extract JSON from response
    response_text = response.content[0].text.strip()

    # Try to parse JSON (handle potential markdown code blocks)
    if response_text.startswith("```"):
        # Extract JSON from code block
        lines = response_text.split('\n')
        json_lines = []
        in_json = False
        for line in lines:
            if line.strip().startswith("```"):
                if in_json:
                    break
                in_json = True
                continue
            if in_json:
                json_lines.append(line)
        response_text = '\n'.join(json_lines)

    return json.loads(response_text)


def create_arb_file(locale_code, translated_strings, source_arb, tier_notice, output_dir):
    """Create complete ARB file with translations and metadata"""

    arb = {
        "@@locale": locale_code
    }

    # Add tier notice if applicable
    if tier_notice:
        arb["_notice"] = tier_notice

    # Add translated strings with their @ metadata
    for key, value in source_arb.items():
        if key.startswith('@') or key == '@@locale':
            # Skip metadata keys and locale in source, we'll handle separately
            continue

        # Add the translated string
        arb[key] = translated_strings.get(key, value)  # Fallback to English if translation missing

        # Add the @ metadata (keep in Amerikan)
        metadata_key = f"@{key}"
        if metadata_key in source_arb:
            arb[metadata_key] = source_arb[metadata_key]

    # Write to file
    output_path = output_dir / f"app_{locale_code}.arb"
    with open(output_path, 'w', encoding='utf-8') as f:
        json.dump(arb, f, indent=2, ensure_ascii=False)
        f.write('\n')  # Add trailing newline

    return output_path


def main():
    # Setup paths
    repo_root = Path(__file__).parent.parent
    l10n_dir = repo_root / "flutter_crossplatform_mobile_app" / "lib" / "l10n"
    source_arb_path = l10n_dir / "app_en.arb"

    # Check for API key
    api_key = os.environ.get("ANTHROPIC_API_KEY")
    if not api_key:
        print("ERROR: ANTHROPIC_API_KEY environment variable not set")
        print("Set it with: export ANTHROPIC_API_KEY='your-api-key'")
        sys.exit(1)

    # Initialize Claude client
    client = Anthropic(api_key=api_key)

    # Load source ARB
    print(f"Loading source ARB from {source_arb_path}...")
    source_arb = load_source_arb(source_arb_path)
    source_strings = extract_translatable_strings(source_arb)
    print(f"Found {len(source_strings)} translatable strings\n")

    # Get list of already translated languages (skip these)
    already_translated = {"en", "es"}  # English is source, Spanish already done
    if (l10n_dir / "app_zh.arb").exists():
        with open(l10n_dir / "app_zh.arb", 'r', encoding='utf-8') as f:
            zh_data = json.load(f)
            if zh_data.get("tagline") != "Modern-Day Minutemen & Minutewomen":
                already_translated.add("zh")
    if (l10n_dir / "app_fr.arb").exists():
        with open(l10n_dir / "app_fr.arb", 'r', encoding='utf-8') as f:
            fr_data = json.load(f)
            if fr_data.get("tagline") != "Modern-Day Minutemen & Minutewomen":
                already_translated.add("fr")

    print(f"Already translated: {', '.join(sorted(already_translated))}\n")

    # Process each tier
    total_translated = 0
    tier_counts = {}

    for tier_name, tier_config in TIER_CONFIG.items():
        tier_langs = [lang for lang in tier_config["languages"] if lang not in already_translated]
        if not tier_langs:
            print(f"\n{tier_name.upper()}: All languages already translated, skipping\n")
            continue

        print(f"\n{'='*60}")
        print(f"{tier_name.upper()}: {len(tier_langs)} languages")
        print(f"{'='*60}\n")

        tier_count = 0
        for locale in tier_langs:
            lang_name = LANGUAGE_NAMES.get(locale, locale)
            try:
                print(f"  Translating {lang_name} ({locale})...", end=" ", flush=True)

                # Translate
                translated = translate_to_language(
                    client,
                    source_strings,
                    locale,
                    lang_name,
                    tier_config["notice"]
                )

                # Create ARB file
                output_path = create_arb_file(
                    locale,
                    translated,
                    source_arb,
                    tier_config["notice"],
                    l10n_dir
                )

                print(f"✓ Done")
                tier_count += 1
                total_translated += 1

            except Exception as e:
                print(f"✗ ERROR: {str(e)}")
                continue

        tier_counts[tier_name] = tier_count
        print(f"\n{tier_name.upper()} complete: {tier_count} languages translated")

    # Final summary
    print(f"\n{'='*60}")
    print("TRANSLATION SUMMARY")
    print(f"{'='*60}")
    for tier_name, count in tier_counts.items():
        print(f"  {tier_name.upper()}: {count} languages")
    print(f"\n  TOTAL: {total_translated} new languages translated")
    print(f"  TOTAL FILES: {total_translated + len(already_translated)} (including already translated)")
    print(f"\n{'='*60}")
    print("\nNext steps:")
    print("  1. Validate JSON files are well-formed")
    print("  2. Run: cd flutter_crossplatform_mobile_app && flutter gen-l10n")
    print("  3. Test app with multiple languages")
    print("  4. Arrange professional review for Tier 2-4 languages before production\n")


if __name__ == "__main__":
    main()
