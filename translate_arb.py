#!/usr/bin/env python3
"""
ARB Translation Script for Naybor SOS
Translates all string values in ARB files while preserving structure and placeholders.
"""

import json
import os
import re
import time
import argparse
from pathlib import Path
from googletrans import Translator

L10N_DIR = Path("flutter_crossplatform_mobile_app/lib/l10n")
BASE_ARB_FILE = L10N_DIR / "app_en.arb"

LANGUAGES_TO_SKIP = [
    "en",
    "es",
    "zh",
]

LOCALE_MAP = {
    "zh": "zh-CN",
    "he": "iw",
}

def get_untranslated_files():
    """Returns a list of ARB files that need translation."""
    files = []
    for f in sorted(L10N_DIR.glob("app_*.arb")):
        locale = f.stem.split("_")[1]
        if locale not in LANGUAGES_TO_SKIP:
            files.append(f)
    return files

def translate_text(translator, text, dest_language):
    """Translates a single string, handling placeholders."""
    if not text or text.isspace():
        return text

    placeholders = re.findall(r"\{(\w+)\}", text)

    # Wrap placeholders in a notranslate span
    temp_text = text
    for p in placeholders:
        temp_text = temp_text.replace(f"{{{p}}}", f'<span class="notranslate">{{{p}}}</span>')

    try:
        translated_text = translator.translate(temp_text, dest=dest_language).text

        # Restore the original placeholders
        for p in placeholders:
            translated_text = translated_text.replace(f'<span class="notranslate">{{{p}}}</span>', f"{{{p}}}")
            translated_text = translated_text.replace(f'</span>', '')
            translated_text = translated_text.replace(f'<span class="notranslate">', '')


        return translated_text
    except Exception as e:
        print(f"    - Error translating '{text}': {e}")
        return text

def main():
    """Main translation function."""
    parser = argparse.ArgumentParser(description="Translate ARB files.")
    parser.add_argument("--start", type=int, default=0, help="Starting index of files to process.")
    parser.add_argument("--end", type=int, help="Ending index of files to process.")
    args = parser.parse_args()

    print("Starting ARB translation process...")

    untranslated_files = get_untranslated_files()
    print(f"Total untranslated files: {len(untranslated_files)}")

    if args.end is None:
        args.end = len(untranslated_files)

    files_to_process = untranslated_files[args.start:args.end]

    if not files_to_process:
        print("No files to translate in the specified range. Exiting.")
        return

    print(f"Found {len(files_to_process)} files to translate in the range {args.start}-{args.end}.")

    with open(BASE_ARB_FILE, "r", encoding="utf-8") as f:
        english_data = json.load(f)

    translator = Translator()
    translator.raise_Exception = True

    for arb_file in files_to_process:
        locale = arb_file.stem.split("_")[1]
        dest_language = LOCALE_MAP.get(locale, locale)
        print(f"\nProcessing {arb_file.name} (locale: {locale}, dest: {dest_language})...")

        with open(arb_file, "r", encoding="utf-8") as f:
            target_data = json.load(f)

        keys_to_translate = [k for k in english_data if not k.startswith("@@") and not k.startswith("@")]

        translated_count = 0
        for key in keys_to_translate:
            english_value = english_data.get(key)
            current_value = target_data.get(key)

            if english_value and english_value == current_value:
                print(f"  - Translating '{key}'...")
                translated_value = translate_text(translator, english_value, dest_language)
                target_data[key] = translated_value
                translated_count += 1
                time.sleep(5)

        if translated_count > 0:
            with open(arb_file, "w", encoding="utf-8") as f:
                json.dump(target_data, f, ensure_ascii=False, indent=2)
            print(f"  -> Successfully translated {translated_count} strings in {arb_file.name}")
        else:
            print(f"  -> No strings needed translation in {arb_file.name}")

    print("\nTranslation process complete.")

if __name__ == "__main__":
    main()
