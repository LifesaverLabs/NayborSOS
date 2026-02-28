import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../data/services/auth_service.dart';
import '../../data/repositories/user_repository.dart';
import '../screens/splash_screen.dart';
import '../screens/onboarding/welcome_screen.dart';
import '../screens/onboarding/phone_verification_screen.dart';
import '../screens/onboarding/otp_verification_screen.dart';
import '../screens/onboarding/profile_setup_screen.dart';
import '../screens/onboarding/capability_selection_screen.dart';
import '../screens/onboarding/terms_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/home/main_shell.dart';
import '../screens/alerts/create_alert_screen.dart';
import '../screens/alerts/alert_status_screen.dart';
import '../screens/alerts/incoming_alert_screen.dart';
import '../screens/alerts/navigation_screen.dart';
import '../screens/alerts/on_scene_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/profile/settings_screen.dart';
import '../screens/profile/alert_schedule_screen.dart';
import '../screens/profile/capabilities_screen.dart';

/// Route names for the app
class AppRoutes {
  // Auth & Onboarding
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String phoneVerification = '/phone-verification';
  static const String otpVerification = '/otp-verification';
  static const String profileSetup = '/profile-setup';
  static const String capabilitySelection = '/capability-selection';
  static const String terms = '/terms';

  // Main App
  static const String home = '/home';
  static const String alerts = '/alerts';
  static const String profile = '/profile';

  // Alert Flow
  static const String createAlert = '/create-alert';
  static const String alertStatus = '/alert-status/:alertId';
  static const String incomingAlert = '/incoming-alert/:alertId';
  static const String navigation = '/navigation/:alertId';
  static const String onScene = '/on-scene/:alertId';

  // Profile & Settings
  static const String settings = '/settings';
  static const String alertSchedule = '/alert-schedule';
  static const String capabilities = '/capabilities';

  // Helper methods
  static String alertStatusPath(String alertId) => '/alert-status/$alertId';
  static String incomingAlertPath(String alertId) => '/incoming-alert/$alertId';
  static String navigationPath(String alertId) => '/navigation/$alertId';
  static String onScenePath(String alertId) => '/on-scene/$alertId';
}

/// App router configuration
final appRouterProvider = Provider<GoRouter>((ref) {
  final authService = ref.watch(authServiceProvider);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: true,
    refreshListenable: GoRouterRefreshStream(authService.authStateChanges),
    redirect: (context, state) async {
      final isAuthenticated = authService.isAuthenticated;
      final isAuthRoute = state.matchedLocation == AppRoutes.splash ||
          state.matchedLocation == AppRoutes.welcome ||
          state.matchedLocation == AppRoutes.phoneVerification ||
          state.matchedLocation.startsWith('/otp-verification') ||
          state.matchedLocation == AppRoutes.profileSetup ||
          state.matchedLocation == AppRoutes.capabilitySelection ||
          state.matchedLocation == AppRoutes.terms;

      // If not authenticated and trying to access protected route
      if (!isAuthenticated && !isAuthRoute) {
        return AppRoutes.welcome;
      }

      // If authenticated but on splash, check if profile is complete
      if (isAuthenticated && state.matchedLocation == AppRoutes.splash) {
        // Check if user has completed profile setup
        final userRepo = ref.read(userRepositoryProvider);
        final user = await userRepo.getUser(authService.currentUser!.uid);

        if (user == null) {
          return AppRoutes.profileSetup;
        } else if (!user.termsAccepted) {
          return AppRoutes.terms;
        } else {
          return AppRoutes.home;
        }
      }

      return null;
    },
    routes: [
      // Splash
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),

      // Onboarding
      GoRoute(
        path: AppRoutes.welcome,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.phoneVerification,
        builder: (context, state) => const PhoneVerificationScreen(),
      ),
      GoRoute(
        path: AppRoutes.otpVerification,
        builder: (context, state) {
          final phoneNumber = state.uri.queryParameters['phone'] ?? '';
          return OtpVerificationScreen(phoneNumber: phoneNumber);
        },
      ),
      GoRoute(
        path: AppRoutes.profileSetup,
        builder: (context, state) => const ProfileSetupScreen(),
      ),
      GoRoute(
        path: AppRoutes.capabilitySelection,
        builder: (context, state) => const CapabilitySelectionScreen(),
      ),
      GoRoute(
        path: AppRoutes.terms,
        builder: (context, state) => const TermsScreen(),
      ),

      // Main App Shell
      ShellRoute(
        builder: (context, state, child) => MainShell(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: HomeScreen(),
            ),
          ),
          GoRoute(
            path: AppRoutes.profile,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ProfileScreen(),
            ),
          ),
        ],
      ),

      // Alert Flow (outside shell for full-screen experience)
      GoRoute(
        path: AppRoutes.createAlert,
        builder: (context, state) => const CreateAlertScreen(),
      ),
      GoRoute(
        path: '/alert-status/:alertId',
        builder: (context, state) {
          final alertId = state.pathParameters['alertId']!;
          return AlertStatusScreen(alertId: alertId);
        },
      ),
      GoRoute(
        path: '/incoming-alert/:alertId',
        builder: (context, state) {
          final alertId = state.pathParameters['alertId']!;
          final distanceMeters = double.tryParse(
            state.uri.queryParameters['distance'] ?? '0',
          ) ?? 0;
          return IncomingAlertScreen(
            alertId: alertId,
            distanceMeters: distanceMeters,
          );
        },
      ),
      GoRoute(
        path: '/navigation/:alertId',
        builder: (context, state) {
          final alertId = state.pathParameters['alertId']!;
          return NavigationScreen(alertId: alertId);
        },
      ),
      GoRoute(
        path: '/on-scene/:alertId',
        builder: (context, state) {
          final alertId = state.pathParameters['alertId']!;
          return OnSceneScreen(alertId: alertId);
        },
      ),

      // Settings
      GoRoute(
        path: AppRoutes.settings,
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: AppRoutes.alertSchedule,
        builder: (context, state) => const AlertScheduleScreen(),
      ),
      GoRoute(
        path: AppRoutes.capabilities,
        builder: (context, state) => const CapabilitiesScreen(),
      ),
    ],
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
  );
});

/// Helper class to refresh router on auth changes
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

/// Error screen for invalid routes
class ErrorScreen extends StatelessWidget {
  final Exception? error;

  const ErrorScreen({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              error?.toString() ?? 'Page not found',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go(AppRoutes.home),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
