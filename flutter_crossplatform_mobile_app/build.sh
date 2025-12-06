#!/bin/bash

# Naybor SOS Flutter App Build Script
# Usage: ./build.sh [platform]
# Platforms: ios, android, web, macos, all

set -e

echo "🚨 Naybor SOS - Build Script"
echo "=============================="

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter SDK not found in PATH"
    echo ""
    echo "Please install Flutter:"
    echo "  https://docs.flutter.dev/get-started/install"
    echo ""
    echo "Or add Flutter to your PATH:"
    echo "  export PATH=\"\$PATH:/path/to/flutter/bin\""
    exit 1
fi

echo "✅ Flutter SDK found: $(flutter --version | head -n 1)"
echo ""

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get
echo ""

# Check for syntax errors
echo "🔍 Analyzing code..."
flutter analyze
if [ $? -ne 0 ]; then
    echo "❌ Analysis found issues. Please fix them before building."
    exit 1
fi
echo "✅ No analysis issues found"
echo ""

# Determine what to build
PLATFORM="${1:-help}"

case "$PLATFORM" in
    ios)
        echo "🍎 Building for iOS..."
        flutter build ios --release
        echo "✅ iOS build complete!"
        ;;
    android)
        echo "🤖 Building for Android..."
        flutter build apk --release
        echo "✅ Android APK created at: build/app/outputs/flutter-apk/app-release.apk"
        ;;
    web)
        echo "🌐 Building for Web..."
        flutter build web --release
        echo "✅ Web build complete at: build/web/"
        ;;
    macos)
        echo "💻 Building for macOS..."
        flutter build macos --release
        echo "✅ macOS build complete!"
        ;;
    all)
        echo "🌍 Building for all platforms..."
        flutter build web --release
        flutter build apk --release
        if [[ "$OSTYPE" == "darwin"* ]]; then
            flutter build ios --release
            flutter build macos --release
        fi
        echo "✅ All builds complete!"
        ;;
    test)
        echo "🧪 Running tests..."
        flutter test
        ;;
    run)
        echo "🚀 Running app..."
        flutter run
        ;;
    clean)
        echo "🧹 Cleaning build artifacts..."
        flutter clean
        flutter pub get
        echo "✅ Clean complete!"
        ;;
    help|*)
        echo "Usage: ./build.sh [command]"
        echo ""
        echo "Commands:"
        echo "  ios       Build for iOS (requires macOS + Xcode)"
        echo "  android   Build APK for Android"
        echo "  web       Build for web deployment"
        echo "  macos     Build for macOS (requires macOS)"
        echo "  all       Build for all platforms"
        echo "  test      Run tests"
        echo "  run       Run app on connected device"
        echo "  clean     Clean build artifacts"
        echo "  help      Show this help message"
        echo ""
        echo "Examples:"
        echo "  ./build.sh android    # Build Android APK"
        echo "  ./build.sh run        # Run on connected device"
        echo "  ./build.sh clean      # Clean and reset"
        ;;
esac
