# Naybor SOS Flutter App - MVP UI Prototype

## Overview

This is a comprehensive UI prototype for the Naybor SOS mobile application, built with Flutter for cross-platform deployment (iOS, Android, Web, Desktop).

**Status:** UI Mockup / Prototype (not connected to backend)

## What's Included

### 🎨 Design System
- **Brand Colors:** Emergency red (#DC2626), Trust blue (#2563EB), with success green and warning amber
- **Emergency Categories:** Color-coded system for life-threatening (🔴), security/safety (🟠), urgent time-sensitive (🟡), and non-life-threatening (🟢) alerts
- **Modern UI:** Material Design 3 with custom theme, consistent spacing, and polished components

### 📱 Screens Implemented (16 Dart Files)

#### Onboarding Flow
1. **Phone Verification Screen** - SMS-based authentication
2. **Profile Setup Screen** - Name, address, age, photo
3. **Capability Selection Screen** - Choose emergency types to respond to

#### Main App
4. **Home Screen** - Availability toggle, quick stats, request help button
5. **Active Alerts Screen** - View incoming emergency alerts (with test button)
6. **Profile Screen** - User profile, stats, settings navigation

#### Alert Flow (Requesting Help)
7. **Create Alert Screen** - Select emergency type, add details, send alert
8. **Alert Status Screen** - Track responder acceptance and arrival

#### Response Flow (Helping Others)
9. **Incoming Alert Screen** - 30-second countdown to accept/decline
10. **Response Navigation Screen** - Navigation, on-scene tips, status updates

#### Settings
11. **Alert Schedule Screen** - Configure availability hours by day/time

### 📦 Data Models
- **EmergencyType** - 12+ emergency types with categories, icons, descriptions
- **UserProfile** - User info, capabilities, alert schedule preferences
- **EmergencyAlert** - Alert details, status tracking, timestamps
- **AlertSchedule** - Complex scheduling system with age-based policies

### ✨ Key Features Demonstrated

1. **Smart Alert Scheduling**
   - Life-threatening alerts: Always notify 24/7
   - Security/safety alerts: Configurable 24/7 or schedule-based
   - Non-urgent alerts: Respect weekly schedule
   - Age-based policies: Gentle hours for 70+, opt-out for 80+

2. **Emergency Type System**
   - 🔴 Life-Threatening: CPR, AED, Overdose, Choking, Fire
   - 🟠 Security/Safety: Consent emergencies, Active bystander
   - 🟡 Urgent Time-Sensitive: Missing pet
   - 🟢 Non-Life-Threatening: Wellness check, Quit companion, Companionship, 911 coordination

3. **Responder Flow**
   - Accept/Decline with 30-second timer
   - Equipment reminders for AED, naloxone
   - Turn-by-turn navigation integration
   - On-scene tips specific to emergency type
   - Status updates (On my way, Arrived, Resolved)

4. **Alert Originator Flow**
   - Quick emergency type selection
   - Optional details and trusted responders
   - Real-time status tracking
   - Call responder button
   - Cancel alert option

## Project Structure

```
lib/
├── main.dart                          # App entry point
├── theme/
│   └── app_theme.dart                 # Design system & theme
├── models/
│   ├── emergency_type.dart            # Emergency type definitions
│   ├── emergency_alert.dart           # Alert data model
│   └── user_profile.dart              # User & schedule models
├── screens/
│   ├── onboarding/
│   │   ├── phone_verification_screen.dart
│   │   ├── profile_setup_screen.dart
│   │   └── capability_selection_screen.dart
│   ├── home/
│   │   └── home_screen.dart
│   ├── alert/
│   │   ├── create_alert_screen.dart
│   │   ├── alert_status_screen.dart
│   │   ├── active_alerts_screen.dart
│   │   ├── incoming_alert_screen.dart
│   │   └── response_navigation_screen.dart
│   └── profile/
│       ├── profile_screen.dart
│       └── alert_schedule_screen.dart
├── widgets/                           # (Empty - ready for shared components)
├── services/                          # (Empty - ready for backend integration)
└── utils/                             # (Empty - ready for utilities)
```

## Running the App

### Prerequisites
- Flutter SDK (3.9.2 or higher)
- Dart SDK
- iOS Simulator / Android Emulator / Chrome (for web)

### Commands
```bash
# Get dependencies
flutter pub get

# Run on connected device/simulator
flutter run

# Run on specific platform
flutter run -d chrome        # Web
flutter run -d ios           # iOS Simulator
flutter run -d android       # Android Emulator
flutter run -d macos         # macOS Desktop

# Build for release
flutter build apk            # Android APK
flutter build ipa            # iOS (requires Mac + Xcode)
flutter build web            # Web deployment
```

## Testing the Prototype

1. **Start the app** - You'll see the phone verification screen
2. **Enter any phone number** - Simulated verification (no real SMS)
3. **Create profile** - Enter name and address
4. **Select capabilities** - Choose emergency types you can help with
5. **Home screen** - Toggle availability on/off
6. **Request help** - Tap big red button to create an emergency alert
7. **Test incoming alert** - Go to Alerts tab → "Simulate Incoming Alert" button
8. **Explore profile** - View capabilities, alert schedule, settings

## What's NOT Included (Ready for Backend Integration)

- ❌ Firebase Authentication (phone verification is mocked)
- ❌ Real-time location services (GPS mocked)
- ❌ Push notifications (alerts are mocked)
- ❌ Database integration (no data persistence)
- ❌ Bluetooth proximity detection
- ❌ Maps integration (shows buttons, doesn't open maps)
- ❌ Phone dialer integration
- ❌ Photo upload functionality
- ❌ User management/admin panel
- ❌ Analytics/crash reporting

## Next Steps for Production

### Phase 1: Backend Integration
1. Set up Firebase project
2. Implement phone authentication (Firebase Auth)
3. Set up Firestore database
4. Integrate Google Maps / Apple Maps
5. Configure push notifications (FCM)
6. Add location services

### Phase 2: Core Features
1. Real-time alert dispatch system
2. Bluetooth homing/proximity detection
3. SMS fallback notifications
4. Background location tracking
5. In-app messaging

### Phase 3: Polish
1. Training videos & quizzes
2. Equipment verification (photo upload)
3. Response history & analytics
4. Performance optimization
5. Error handling & edge cases

## Design Decisions

### Why Flutter?
- Single codebase for iOS, Android, Web, Desktop
- Fast development with hot reload
- Native performance
- Rich widget library
- Growing ecosystem

### Architecture Approach
- **Simple & Flat:** No complex state management (Provider, Bloc, Riverpod) yet
- **StatefulWidgets:** Direct state management for rapid prototyping
- **Ready to Scale:** Clear separation of models, screens, services
- **Easy Migration:** Can add Provider/Bloc/Riverpod when needed

### UI/UX Principles
- **Emergency-First:** Red for urgent, clear CTAs, high contrast
- **Accessibility:** Large touch targets, clear labels, color + text
- **Trust:** Blue accents, privacy notices, transparent information
- **Simplicity:** Minimal steps, clear navigation, sensible defaults

## Roadmap Alignment

This prototype implements the **Phase 0 MVP** screens as outlined in the project roadmap:

✅ Registration & Onboarding
✅ Capability Selection (honor system, no training yet)
✅ Availability Toggle
✅ Alert Scheduling (full implementation with age policies)
✅ Alert Creation UI
✅ Alert Status Tracking
✅ Accept/Decline Flow
✅ Basic Navigation UI
✅ On-Scene Support Tips
✅ Profile Management

## Contributing

When adding new features:
1. Follow existing naming conventions
2. Add new screens to `lib/screens/[category]/`
3. Create models in `lib/models/`
4. Use `AppTheme` colors for consistency
5. Test on both iOS and Android simulators
6. Update this README

## License

MIT License - See LICENSE file in root directory

---

**Built with ❤️ for Lifesaver Labs Public Benefit Corporation**

*Modern-Day Minutemen & Minutewomen*
