import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Authentication service for phone-based verification
class AuthService {
  final FirebaseAuth _auth;

  AuthService({FirebaseAuth? auth}) : _auth = auth ?? FirebaseAuth.instance;

  /// Current authenticated user
  User? get currentUser => _auth.currentUser;

  /// Stream of auth state changes
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  /// Check if user is authenticated
  bool get isAuthenticated => currentUser != null;

  /// Phone verification state holder
  String? _verificationId;
  int? _resendToken;

  /// Send verification code to phone number
  ///
  /// [phoneNumber] should be in E.164 format (e.g., +15551234567)
  Future<void> sendVerificationCode({
    required String phoneNumber,
    required Function(String verificationId, int? resendToken) onCodeSent,
    required Function(PhoneAuthCredential credential) onVerificationCompleted,
    required Function(FirebaseAuthException error) onVerificationFailed,
    required Function(String verificationId) onCodeAutoRetrievalTimeout,
    int? forceResendingToken,
  }) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      forceResendingToken: forceResendingToken ?? _resendToken,
      verificationCompleted: (PhoneAuthCredential credential) {
        onVerificationCompleted(credential);
      },
      verificationFailed: (FirebaseAuthException error) {
        onVerificationFailed(error);
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        _resendToken = resendToken;
        onCodeSent(verificationId, resendToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
        onCodeAutoRetrievalTimeout(verificationId);
      },
    );
  }

  /// Verify the SMS code entered by user
  Future<UserCredential> verifyCode({
    required String smsCode,
    String? verificationId,
  }) async {
    final vId = verificationId ?? _verificationId;
    if (vId == null) {
      throw FirebaseAuthException(
        code: 'no-verification-id',
        message: 'No verification ID found. Please request a new code.',
      );
    }

    final credential = PhoneAuthProvider.credential(
      verificationId: vId,
      smsCode: smsCode,
    );

    return await _auth.signInWithCredential(credential);
  }

  /// Sign in with a phone auth credential (for auto-verification)
  Future<UserCredential> signInWithCredential(
      PhoneAuthCredential credential) async {
    return await _auth.signInWithCredential(credential);
  }

  /// Sign out the current user
  Future<void> signOut() async {
    _verificationId = null;
    _resendToken = null;
    await _auth.signOut();
  }

  /// Delete the current user's account
  Future<void> deleteAccount() async {
    final user = _auth.currentUser;
    if (user != null) {
      await user.delete();
    }
    _verificationId = null;
    _resendToken = null;
  }

  /// Get the resend token for resending verification code
  int? get resendToken => _resendToken;

  /// Get the current verification ID
  String? get verificationId => _verificationId;
}

/// Provider for AuthService
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});

/// Provider for current Firebase user
final currentUserProvider = StreamProvider<User?>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges;
});

/// Provider for auth state (authenticated or not)
final isAuthenticatedProvider = Provider<bool>((ref) {
  final userAsync = ref.watch(currentUserProvider);
  return userAsync.whenOrNull(data: (user) => user != null) ?? false;
});
