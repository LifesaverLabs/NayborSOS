# Naybor SOS - Flutter Mobile App

**Cross-platform emergency response mobile application for iOS and Android.**

---

## 🚀 Quick Start for New Developers

**⚠️ IMPORTANT:** This project uses **mise** to manage Flutter. Don't try to use a system-installed Flutter - it won't work without the setup below!

### Prerequisites

⚠️ **REALITY CHECK:** `mise` makes Flutter SDK installation easier, but you still need platform-specific tools for Android/iOS development!

**What mise handles:**
- ✅ Downloads and installs Flutter SDK
- ✅ Manages Flutter versions per project
- ✅ No conflicts with system Flutter

**What mise does NOT handle:**
- ❌ Android Studio + Android SDK + emulator setup
- ❌ Xcode + iOS simulator setup (macOS only)
- ❌ Platform-specific dependencies

**📖 For complete platform setup:** [Flutter Official Setup Guide](https://docs.flutter.dev/get-started/install)

**🌟 Quick Start Tip:** Use web platform first! Just needs Chrome - no Android/iOS setup required.

---

### 📚 New to Flutter?

You don't need years of Flutter experience to contribute! With basic Flutter knowledge plus AI coding support (Claude Code, GitHub Copilot, Cursor), you can build real features from day one.

**Free Learning Resources:**

- **[Official Flutter Docs](https://docs.flutter.dev/)** - Start here for comprehensive guides
- **[Flutter Codelabs](https://docs.flutter.dev/codelabs)** - Hands-on interactive tutorials
- **[Dart Language Tour](https://dart.dev/language)** - Learn Dart syntax in ~30 minutes
- **[DartPad](https://dartpad.dev/)** - Practice Flutter in your browser without installing anything
- **[Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)** - Browse all available UI components
- **[Flutter Cookbook](https://docs.flutter.dev/cookbook)** - Recipes for common tasks

**Free Video Courses:**

- **[Fireship - Flutter in 100 Seconds](https://www.youtube.com/watch?v=lHhRhPV--G0)** - Perfect overview
- **[The Net Ninja - Flutter Tutorial](https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ)** - Complete beginner series
- **[freeCodeCamp - Flutter Course](https://www.youtube.com/watch?v=VPvVD8t02U8)** - 37-hour deep dive
- **[Flutter Official YouTube](https://www.youtube.com/flutterdev)** - Widget of the Week series

**🤖 AI-Assisted Development:**

Modern AI coding assistants (Claude Code, GitHub Copilot, Cursor) dramatically accelerate Flutter learning:
- Ask questions about Flutter widgets and APIs
- Get code suggestions as you type
- Debug errors with AI explanations
- Learn patterns by reviewing AI-generated code

**💡 Recommended Approach:** Complete 2-3 Flutter codelabs, then start contributing with AI assistance. You'll learn faster building real features than studying alone!

---

1. **Install mise** (version manager):
   ```bash
   # macOS:
   brew install mise

   # Linux:
   curl https://mise.run | sh

   # Windows: See https://mise.jdx.dev/getting-started.html
   ```

2. **Verify mise is installed:**
   ```bash
   mise --version
   ```

### One-Time Setup (10-20 minutes)

```bash
# 1. Navigate to the Flutter app directory
cd flutter_crossplatform_mobile_app

# 2. Trust the mise configuration
mise trust

# 3. Install Flutter SDK via mise
mise install
# ⏰ Downloads Flutter SDK (~1GB, takes 5-15 min)
# This installs Flutter but NOT Android Studio, Xcode, etc!

# 4. Check what else you need for your target platform
mise exec -- flutter doctor -v
# This will show what's missing (Android Studio, Xcode, etc.)
# See: https://docs.flutter.dev/get-started/install for platform setup

# 5. Quick test - run on web (no extra setup needed!)
mise exec -- flutter run -d chrome
```

**If `flutter doctor` shows issues:**
- 📱 **For Android:** [Android Setup Guide](https://docs.flutter.dev/get-started/install/macos#android-setup)
- 🍎 **For iOS:** [iOS Setup Guide](https://docs.flutter.dev/get-started/install/macos#ios-setup) (macOS only)
- 🌐 **For Web:** Just needs Chrome - should work immediately!

### Choose Your Developer Experience

**You MUST choose one of these options or you'll have to type `mise exec --` before every command!**

---

#### 🌟 OPTION 1: mise activate (RECOMMENDED - 30 seconds to configure)

**Best for:** Everyone. Works globally for all mise-managed projects.

**⚠️ IMPORTANT:** This does NOT install Flutter! You must run `mise install` first (see above).

**What it does:** Makes `flutter` commands work without typing `mise exec --` every time.

Add **ONE LINE** to your shell config:

**For zsh (default on macOS):**
```bash
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
source ~/.zshrc
```

**For bash:**
```bash
echo 'eval "$(mise activate bash)"' >> ~/.bashrc
source ~/.bashrc
```

**For fish:**
```bash
echo 'mise activate fish | source' >> ~/.config/fish/config.fish
```

**That's it!** Now `flutter` commands just work:
```bash
flutter pub get
flutter run
flutter test
# etc - no mise exec needed!
```

---

#### ⚡ OPTION 2: direnv (Project-Specific - 1 minute)

**Best for:** People who work on multiple projects with different Flutter versions.

1. **Install direnv:**
   ```bash
   # macOS:
   brew install direnv

   # Add to shell config:
   echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc  # or bash
   source ~/.zshrc
   ```

2. **Create `.envrc` in this directory:**
   ```bash
   cd flutter_crossplatform_mobile_app
   echo 'export PATH="$(mise bin-paths):$PATH"' > .envrc
   direnv allow
   ```

**Now Flutter is automatically available when you `cd` into this directory!**

---

#### 🔧 OPTION 3: Shell Aliases (2 minutes)

**Best for:** People who want explicit shortcuts without global activation.

Add to your `~/.zshrc` (or `~/.bashrc`):

```bash
# Naybor SOS Flutter aliases
alias flutter='mise exec -- flutter'
alias fl='mise exec -- flutter'
alias frun='mise exec -- flutter run'
alias ftest='mise exec -- flutter test'
alias fget='mise exec -- flutter pub get'
alias fanalyze='mise exec -- flutter analyze'
alias fdoctor='mise exec -- flutter doctor -v'
alias fclean='mise exec -- flutter clean'
```

Then reload:
```bash
source ~/.zshrc  # or ~/.bashrc
```

Now use the shortcuts:
```bash
fget      # Instead of: mise exec -- flutter pub get
frun      # Instead of: mise exec -- flutter run
ftest     # Instead of: mise exec -- flutter test
```

---

#### 📦 OPTION 4: mise run Tasks (No Setup)

**Best for:** Quick testing without any shell configuration.

Use built-in tasks defined in `mise.toml`:

```bash
mise run build    # Get dependencies
mise run test     # Run tests
mise run lint     # Analyze code
mise run clean    # Clean build
mise run doctor   # Check Flutter setup
```

**Downside:** Only works for predefined tasks, not for `flutter run` or other commands.

---

### After Setup: First Run

```bash
# 1. Get dependencies
flutter pub get

# 2. Generate localization files (for internationalization)
flutter gen-l10n

# 3. Check what devices are available
flutter devices

# 4. Run the app!
flutter run

# Or run on a specific device:
flutter run -d chrome    # Web browser
flutter run -d ios       # iOS simulator
flutter run -d android   # Android emulator
```

---

## 📱 Project Structure

```
flutter_crossplatform_mobile_app/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── l10n/                        # Internationalization
│   │   ├── app_en.arb              # English translations
│   │   └── app_es.arb              # Spanish translations
│   ├── models/                      # Data models
│   │   ├── emergency_type.dart     # Emergency type definitions
│   │   ├── locale_config.dart      # Language configuration
│   │   └── user_profile.dart
│   ├── screens/                     # UI screens
│   │   ├── onboarding/             # Phone verification, profile setup
│   │   ├── home/                   # Home screen with availability toggle
│   │   ├── alert/                  # Alert creation and response
│   │   └── profile/                # User profile and settings
│   ├── services/                    # Business logic
│   │   └── location_service.dart   # VPN-resistant GPS
│   ├── widgets/                     # Reusable components
│   │   └── language_picker.dart    # Language selection UI
│   └── theme/                       # App styling
│       └── app_theme.dart
├── test/                            # Unit tests
├── pubspec.yaml                     # Dependencies
├── l10n.yaml                        # Localization config
├── mise.toml                        # mise configuration
├── README.md                        # This file
├── QUICK_START.md                   # Detailed setup guide
├── INTERNATIONALIZATION.md          # i18n documentation
├── LOCATION_AND_LANGUAGE.md         # GPS & PSAP language guide
└── LANGUAGE_AND_LOCATION_SUMMARY.md # Quick reference
```

---

## 🌍 Internationalization (i18n)

This app supports multiple languages using Flutter's official i18n system:

- ✅ **English (en)** - Complete
- ✅ **Spanish (es)** - Complete
- 🔜 **French, Portuguese, Chinese** - ARB files needed

**How to add a language:**
1. Copy `lib/l10n/app_en.arb` to `lib/l10n/app_[locale].arb`
2. Translate all values (keep keys unchanged)
3. Run `flutter gen-l10n`

**See:** [INTERNATIONALIZATION.md](INTERNATIONALIZATION.md) for complete guide

---

## 📍 Location Services

This app uses **VPN-resistant GPS** for accurate emergency location:

- GPS/GNSS operates at hardware level (not affected by VPN)
- Cross-validates with network location to detect VPN usage
- Dual-language system: User language + PSAP dispatch language

**See:** [LOCATION_AND_LANGUAGE.md](LOCATION_AND_LANGUAGE.md) for technical details

---

## 🧪 Testing the App

### Test the UI Flow

1. **Phone Verification** → Enter any number → "Send Verification Code"
2. **Profile Setup** → Fill in name and address
3. **Capability Selection** → Choose what emergencies you can help with
4. **Home Screen** → Toggle availability ON
5. **Create Alert** → Tap "REQUEST HELP" → Select emergency type
6. **Test Incoming Alert:**
   - Go to "Alerts" tab
   - Tap "Simulate Incoming Alert"
   - Accept or decline
7. **Profile** → View settings, alert schedule, capabilities

### Run Tests

```bash
flutter test
```

### Analyze Code

```bash
flutter analyze
```

---

## 🔧 Common Tasks

### Get Dependencies
```bash
flutter pub get
```

### Clean Build
```bash
flutter clean
flutter pub get
```

### Generate Localization Files
```bash
flutter gen-l10n
```

### Check Flutter Setup
```bash
flutter doctor -v
```

### List Available Devices
```bash
flutter devices
```

### Build Release
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

---

## 🐛 Troubleshooting

### "command not found: flutter"

**Problem:** You haven't set up mise activation or aliases.

**Solution:** Go back to "Choose Your Developer Experience" above and pick an option.

**Quick fix:**
```bash
mise exec -- flutter [command]
```

### "AppLocalizations not found"

**Problem:** Localization files haven't been generated.

**Solution:**
```bash
flutter pub get  # This triggers gen-l10n automatically
# Or explicitly:
flutter gen-l10n
```

### "No devices found"

**Problem:** No emulator/simulator is running.

**Solutions:**
- **Web:** `flutter run -d chrome` (easiest - no emulator needed!)
- **iOS:** Open Xcode → Xcode > Open Developer Tool > Simulator (macOS only)
- **Android:** Open Android Studio → Tools > Device Manager → Create/Start device

**First time setup?** See [Flutter's device setup guide](https://docs.flutter.dev/get-started/install)

### Platform-Specific Issues

**Android issues?** See [Android troubleshooting](https://docs.flutter.dev/get-started/install/macos#android-setup)

**iOS issues?** See [iOS troubleshooting](https://docs.flutter.dev/get-started/install/macos#ios-setup)

**Still stuck?** Run `flutter doctor -v` and follow its suggestions, or check [Flutter docs](https://docs.flutter.dev/)

### "mise: command not found"

**Problem:** mise isn't installed.

**Solution:**
```bash
# macOS:
brew install mise

# Linux:
curl https://mise.run | sh
```

### Check mise Status
```bash
mise doctor     # Verify mise is working
mise list       # See what's installed
mise current    # See tools in current directory
```

---

## 📚 Key Documentation

| Document | Purpose |
|----------|---------|
| [QUICK_START.md](QUICK_START.md) | Detailed setup with all options |
| [INTERNATIONALIZATION.md](INTERNATIONALIZATION.md) | Complete i18n guide |
| [LOCATION_AND_LANGUAGE.md](LOCATION_AND_LANGUAGE.md) | GPS & PSAP language architecture |
| [LANGUAGE_AND_LOCATION_SUMMARY.md](LANGUAGE_AND_LOCATION_SUMMARY.md) | Quick reference |

---

## 🏗️ Technology Stack

- **Framework:** Flutter 3.19+
- **Language:** Dart 3.9+
- **State Management:** StatefulWidget (may add Riverpod/Bloc later)
- **Localization:** flutter_gen with ARB files
- **Backend:** Firebase (planned)
- **Maps:** Google Maps / OpenStreetMap (planned)
- **Version Manager:** mise

---

## 🤝 Contributing

1. Read [CONTRIBUTING.md](../docs/Contributing.md)
2. Set up your development environment (this guide)
3. Create a feature branch: `git checkout -b feature/my-feature`
4. Make changes and test thoroughly
5. Run `flutter analyze` to check for issues
6. Commit: `git commit -m "Add feature: description"`
7. Push and create a Pull Request

---

## 📞 Support

**Issues with setup?**
- Check [QUICK_START.md](QUICK_START.md) for detailed troubleshooting
- Ask in [Discord](https://discord.gg/sNdCsNmK)
- Post on [r/neighbor911](https://www.reddit.com/r/neighbor911/)
- Email: team@lifesaverlabs.org

**Found a bug?**
- Open a [GitHub Issue](https://github.com/LifesaverLabs/NayborSOS/issues)

---

## 📄 License

MIT License - See [LICENSE](../LICENSE) for details

---

**Built with ❤️ by [Lifesaver Labs Public Benefit Corporation](https://lifesaverlabs.org)**

*When neighbors help neighbors, everyone goes home.*
