import 'package:flutter/material.dart';
import 'package:NayborSOS/generated/l10n/app_localizations.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../theme/app_theme.dart';
import 'profile_setup_screen.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({super.key});

  @override
  State<PhoneVerificationScreen> createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();
  bool _codeSent = false;
  bool _isLoading = false;
  PhoneNumber _phoneNumber = PhoneNumber(isoCode: 'US');
  bool _isValidPhone = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  void _sendCode() {
    if (!_isValidPhone) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.pleaseEnterPhoneNumber)),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    // Simulate sending code
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _codeSent = true;
        _isLoading = false;
      });
    });
  }

  void _verifyCode() {
    if (_codeController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.pleaseEnterVerificationCode)),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    // Simulate verification
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const ProfileSetupScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // Logo/Header
              Center(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: AppTheme.primaryRed,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      '🚨',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.appTitle,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.tagline,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 48),

              // Main Content
              if (!_codeSent) ...[
                Text(
                  AppLocalizations.of(context)!.signUpToHelp,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context)!.enterPhoneNumber,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    setState(() {
                      _phoneNumber = number;
                    });
                  },
                  onInputValidated: (bool value) {
                    setState(() {
                      _isValidPhone = value;
                    });
                  },
                  selectorConfig: const SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    useBottomSheetSafeArea: true,
                    setSelectorButtonAsPrefixIcon: true,
                    leadingPadding: 20,
                    trailingSpace: false,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  selectorTextStyle: const TextStyle(color: Colors.black),
                  initialValue: _phoneNumber,
                  textFieldController: _phoneController,
                  formatInput: true,
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: false,
                    decimal: false,
                  ),
                  inputDecoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.phoneNumberLabel,
                    border: const OutlineInputBorder(),
                  ),
                  onSaved: (PhoneNumber number) {
                    _phoneNumber = number;
                  },
                ),
              ] else ...[
                Text(
                  AppLocalizations.of(context)!.enterVerificationCode,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  AppLocalizations.of(context)!.verificationCodeSent(_phoneNumber.phoneNumber ?? _phoneController.text),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                TextField(
                  controller: _codeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.verificationCodeLabel,
                    hintText: AppLocalizations.of(context)!.verificationCodeHint,
                    prefixIcon: const Icon(Icons.lock),
                  ),
                ),
              ],

              const Spacer(),

              // Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : (_codeSent ? _verifyCode : _sendCode),
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : Text(_codeSent
                          ? AppLocalizations.of(context)!.verifyAndContinue
                          : AppLocalizations.of(context)!.sendVerificationCode),
                ),
              ),

              if (_codeSent) ...[
                const SizedBox(height: 16),
                Center(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _codeSent = false;
                        _codeController.clear();
                      });
                    },
                    child: Text(AppLocalizations.of(context)!.changePhoneNumber),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
