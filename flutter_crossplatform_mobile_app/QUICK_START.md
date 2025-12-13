# 🚀 Quick Start Guide - Naybor SOS Flutter App

> **📖 New to this project?** Start with [README.md](README.md) for a complete setup guide!

---

## ✅ **Flutter is Managed by mise**

This project uses **`mise`** (version manager) to install and manage Flutter, ensuring everyone uses the same version.

**Why mise?**
- ✅ Consistent Flutter version across all developers
- ✅ No conflicts with system-installed Flutter
- ✅ Automatic installation of correct version
- ✅ Works alongside other mise-managed projects

---

## ⚡ **TL;DR - Choose Your Setup Method**

**New developers:** Pick ONE of these options to avoid typing `mise exec -- flutter` constantly:

| Method | Setup Time | Convenience | Recommendation |
|--------|-----------|-------------|----------------|
| **mise activate** | 30 seconds | ⭐⭐⭐⭐⭐ | Best for power users |
| **direnv** | 1 minute | ⭐⭐⭐⭐ | Best for this project |
| **Shell aliases** | 2 minutes | ⭐⭐⭐ | Good for multi-project |
| **mise run tasks** | 0 seconds | ⭐⭐ | No setup needed |
| **Verbose commands** | 0 seconds | ⭐ | You'll hate this |

**Quick Setup (Recommended):**

```bash
# Option 1: mise activate (best)
echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
source ~/.zshrc
# Now: flutter run

# Option 2: direnv (project-specific)
echo 'export PATH="$(mise bin-paths):$PATH"' > .envrc
direnv allow
# Now: flutter run

# Option 3: Aliases (simple)
# See detailed instructions below
```

---

## 🎯 **RECOMMENDED: Create Shell Aliases**

Typing `mise exec -- flutter` repeatedly will drive you crazy. Add these aliases to your shell config:

### For Zsh (add to `~/.zshrc`):

```bash
# Naybor SOS Flutter aliases (when in project directory)
alias flutter='mise exec -- flutter'
alias fl='mise exec -- flutter'
alias frun='mise exec -- flutter run'
alias ftest='mise exec -- flutter test'
alias fget='mise exec -- flutter pub get'
alias fanalyze='mise exec -- flutter analyze'
alias fdoctor='mise exec -- flutter doctor -v'
alias fclean='mise exec -- flutter clean'
alias fdevices='mise exec -- flutter devices'
```

### For Bash (add to `~/.bashrc` or `~/.bash_profile`):

```bash
# Naybor SOS Flutter aliases (when in project directory)
alias flutter='mise exec -- flutter'
alias fl='mise exec -- flutter'
alias frun='mise exec -- flutter run'
alias ftest='mise exec -- flutter test'
alias fget='mise exec -- flutter pub get'
alias fanalyze='mise exec -- flutter analyze'
alias fdoctor='mise exec -- flutter doctor -v'
alias fclean='mise exec -- flutter clean'
alias fdevices='mise exec -- flutter devices'
```

### Reload your shell:

```bash
source ~/.zshrc    # or ~/.bashrc
```

### ⚡ **EVEN BETTER: Project-Specific Aliases with direnv**

If you use `direnv` (works great with mise), create a `.envrc` file in this directory:

```bash
# .envrc (in flutter_crossplatform_mobile_app/)
export PATH="$(mise bin-paths):$PATH"
```

Then run:
```bash
direnv allow
```

Now `flutter` commands just work automatically when you're in this directory! No `mise exec` needed:

```bash
flutter run          # Just works!
flutter test         # Just works!
flutter pub get      # Just works!
```

This is the cleanest solution - the mise-managed Flutter becomes available automatically when you `cd` into the project.

### 🔧 **Option 3: mise activate (Global)**

If you want mise-managed tools to be available globally, add this to your `~/.zshrc`:

```bash
# Activate mise globally (one-time setup)
eval "$(mise activate zsh)"
```

After reloading your shell, mise will automatically shim all tools defined in any `mise.toml`, so `flutter` commands work in this directory without any prefix!

**Which option should I use?**
- **Best for this project only:** direnv (automatic when you `cd` here)
- **Best for convenience:** Shell aliases (works everywhere)
- **Best for power users:** `mise activate` (automatic for all mise projects)
- **Best for simplicity:** `mise run` tasks (no setup needed)

---

### Now you can use simple commands:

```bash
# Get dependencies
fget

# Run the app
frun

# Run on specific device
frun -d chrome

# Run tests
ftest

# Analyze code
fanalyze

# Clean build
fclean && fget
```

---

## Alternative: Use `mise` Tasks (No Aliases Needed)

If you don't want aliases, use the built-in mise tasks:

```bash
# Get dependencies
mise run build

# Run tests
mise run test

# Analyze code
mise run lint

# Clean
mise run clean

# Check Flutter
mise run doctor
```

---

## Running Without Aliases (Verbose Mode)

If you haven't set up aliases yet, use the full commands:

```bash
# Get dependencies
mise exec -- flutter pub get

# Run the app
mise exec -- flutter run

# Run tests
mise exec -- flutter test

# Analyze code
mise exec -- flutter analyze
```

## First Time Setup

1. **Trust the mise configuration** (already done):
   ```bash
   mise trust
   ```

2. **Install Flutter via mise** (already done):
   ```bash
   mise install
   ```

3. **Get dependencies**:
   ```bash
   mise exec -- flutter pub get
   ```

4. **Run the app**:
   ```bash
   mise exec -- flutter run
   ```

## Why `mise exec`?

The `mise.toml` file in this directory tells mise to use Flutter. When you run `mise exec -- flutter`, it automatically uses the Flutter version specified in `mise.toml` (currently "latest").

This is the same approach used in the `safeword_flutter` project.

## Testing the App

### Run on a Device/Simulator

```bash
# List available devices
mise exec -- flutter devices

# Run on Chrome (web)
mise exec -- flutter run -d chrome

# Run on iOS Simulator
mise exec -- flutter run -d ios

# Run on Android Emulator
mise exec -- flutter run -d android
```

### Test the UI Flow

1. Start app → Phone verification (enter any number)
2. Create profile → Select capabilities
3. Toggle availability ON
4. Test incoming alert: Alerts tab → "Simulate Incoming Alert"
5. Accept alert → See navigation screen
6. Go to Profile → Alert Schedule (complex scheduling)

## Troubleshooting

### "command not found: flutter"

Use `mise exec -- flutter` instead of just `flutter`.

### Check mise status

```bash
# Verify mise is working
mise doctor

# See what's installed
mise list

# See current directory tools
mise current
```

### Install Flutter manually

If mise isn't working:
```bash
mise install flutter@latest
```

## Build Status

✅ **All tests pass** - Flutter app builds successfully
✅ **No errors** - Only minor deprecation warnings (safe to ignore)
✅ **Ready to run** - All 11+ screens implemented

## Next Steps

Once Flutter Doctor shows everything is ready:
```bash
mise exec -- flutter doctor -v
```

You can run the app on any connected device:
```bash
mise exec -- flutter run
```

---

**Note:** The `build.sh` script doesn't use mise yet. Use `mise exec -- flutter` commands instead for now.
