// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Modern-Day Minutemen & Minutewomen';

  @override
  String get signUpToHelp => 'Sign up to help your neighbors';

  @override
  String get enterPhoneNumber => 'Enter your phone number to get started';

  @override
  String get phoneNumberLabel => 'Phone Number';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Send Verification Code';

  @override
  String get enterVerificationCode => 'Enter verification code';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'We sent a code to $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Verification Code';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verify & Continue';

  @override
  String get changePhoneNumber => 'Change phone number';

  @override
  String get pleaseEnterPhoneNumber => 'Please enter your phone number';

  @override
  String get pleaseEnterVerificationCode =>
      'Please enter the verification code';

  @override
  String get createProfile => 'Create Profile';

  @override
  String get tellUsAboutYourself => 'Tell us about yourself';

  @override
  String get profileSetupDescription =>
      'This information helps us connect you with neighbors who need help';

  @override
  String get addPhotoOptional => 'Add photo (optional)';

  @override
  String get fullNameLabel => 'Full Name *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Home Address *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'Used for proximity matching only';

  @override
  String get ageOptionalLabel => 'Age (optional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Ages 70+ can set gentle alert hours';

  @override
  String get yourPrivacyMatters => 'Your privacy matters';

  @override
  String get privacyNotice =>
      'Your location is only queried during active emergencies and never stored long-term.';

  @override
  String get continueButton => 'Continue';

  @override
  String get pleaseFillRequiredFields => 'Please fill in all required fields';

  @override
  String get home => 'Home';

  @override
  String get alerts => 'Alerts';

  @override
  String get profile => 'Profile';

  @override
  String get availableToRespond => 'Available to Respond';

  @override
  String get notAvailable => 'Not Available';

  @override
  String get youllReceiveEmergencyAlerts =>
      'You\'ll receive emergency alerts nearby';

  @override
  String get toggleOnWhenReady => 'Toggle on when ready to help';

  @override
  String get youreNowAvailable => 'You\'re now available to respond';

  @override
  String get youWontReceiveAlerts => 'You won\'t receive alerts';

  @override
  String get lifeThreatening247Info =>
      'Life-threatening alerts will notify you 24/7. Non-urgent alerts respect your schedule.';

  @override
  String get requestHelp => 'REQUEST HELP';

  @override
  String get yourImpact => 'Your Impact';

  @override
  String get responses => 'Responses';

  @override
  String get avgTime => 'Avg Time';

  @override
  String get yourCapabilities => 'Your Capabilities';

  @override
  String get edit => 'Edit';

  @override
  String get communityNetwork => 'Community Network';

  @override
  String get nearbyResponders => 'Nearby Responders';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count available';
  }

  @override
  String get coverageRadius => 'Coverage Radius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance miles';
  }

  @override
  String get activeAlerts => 'Active Alerts';

  @override
  String get none => 'None';

  @override
  String get yourLocation => 'Your Location';

  @override
  String get whatDoYouNeedHelpWith => 'What do you need help with?';

  @override
  String get additionalDetailsOptional => 'Additional Details (optional)';

  @override
  String get describeSituation => 'Describe the situation...';

  @override
  String get alertTrustedRespondersFirst => 'Alert my trusted responders first';

  @override
  String get trustedRespondersDescription =>
      'Your selected friends/family will be notified before the general community';

  @override
  String sendingAlert(String emergencyType) {
    return 'Sending alert: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SEND ALERT NOW';

  @override
  String get pleaseSelectEmergencyType => 'Please select an emergency type';

  @override
  String get categoryLifeThreatening => '🔴 Life-Threatening';

  @override
  String get categorySecuritySafety => '🟠 Security/Safety';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent Time-Sensitive';

  @override
  String get categoryNonLifeThreatening => '🟢 Non-Life-Threatening';

  @override
  String get emergencyCprCardiacName => 'CPR / Cardiac Arrest';

  @override
  String get emergencyCprCardiacDesc =>
      'Person is unresponsive and not breathing';

  @override
  String get emergencyAedName => 'AED Delivery';

  @override
  String get emergencyAedDesc => 'Need an AED immediately';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxone';

  @override
  String get emergencyOverdoseDesc => 'Suspected drug overdose, need naloxone';

  @override
  String get emergencyChokingName => 'Choking / Heimlich';

  @override
  String get emergencyChokingDesc => 'Person is choking and cannot breathe';

  @override
  String get emergencyFireName => 'Fire / Evacuation';

  @override
  String get emergencyFireDesc => 'Fire emergency, need evacuation help';

  @override
  String get emergencyConsentName => 'Bedroom Consent Emergency';

  @override
  String get emergencyConsentDesc => 'Safeword called, need witness';

  @override
  String get emergencyBystanderName => 'Active Bystander Witness';

  @override
  String get emergencyBystanderDesc => 'Need presence to de-escalate conflict';

  @override
  String get emergencyMissingPetName => 'Missing Pet';

  @override
  String get emergencyMissingPetDesc =>
      'Pet is lost or ran away, need search party';

  @override
  String get emergencyWellnessCheckName => 'Wellness Check';

  @override
  String get emergencyWellnessCheckDesc => 'Check on someone who may need help';

  @override
  String get emergencyQuitCompanionName => 'Quit Companion';

  @override
  String get emergencyQuitCompanionDesc => 'Fighting craving, need support';

  @override
  String get emergencyCompanionshipName => 'Companionship';

  @override
  String get emergencyCompanionshipDesc => 'Feeling lonely or isolated';

  @override
  String get emergency911CoordinationName => '911 Coordination';

  @override
  String get emergency911CoordinationDesc =>
      'Need help calling and coordinating 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'My Capabilities';

  @override
  String capabilitiesSelected(int count) {
    return '$count selected';
  }

  @override
  String get alertSchedule => 'Alert Schedule';

  @override
  String get setAvailabilityHours => 'Set your availability hours';

  @override
  String get trustedResponders => 'Trusted Responders';

  @override
  String get responseHistory => 'Response History';

  @override
  String get privacyAndSafety => 'Privacy & Safety';

  @override
  String get helpAndSupport => 'Help & Support';

  @override
  String get aboutNayborSos => 'About Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Terms & Privacy Policy';

  @override
  String get signOut => 'Sign Out';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS connects neighbors in emergencies, creating a network of rapid responders who can provide critical aid before professional first responders arrive.';

  @override
  String get aboutDialogContent2 =>
      'Everyone can be a hero. You don\'t need special training to save a life. Sometimes the most powerful intervention is simply showing up.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Close';

  @override
  String get signOutQuestion => 'Sign Out?';

  @override
  String get signOutConfirm => 'Are you sure you want to sign out?';

  @override
  String get cancel => 'Cancel';

  @override
  String get signedOutSuccessfully => 'Signed out successfully';

  @override
  String get settings => 'Settings';

  @override
  String get capabilityWellnessCheck => 'Wellness Check';

  @override
  String get capabilityQuitCompanion => 'Quit Companion';

  @override
  String get capabilityActiveBystander => 'Active Bystander';

  @override
  String get translationTier1Label => 'ഉയർന്ന വിശ്വാസ്യത AI വിവർത്തനം';

  @override
  String get translationTier2Label => 'നല്ല വിശ്വാസ്യത AI വിവർത്തനം';

  @override
  String get translationTier3Label => 'ഇടത്തരം-വിശ്വാസ്യത AI വിവർത്തനം';

  @override
  String get translationTier4Label => 'കുറഞ്ഞ വിശ്വാസ്യത AI വിവർത്തനം';

  @override
  String get translationTier1Notice =>
      'ഈ വിവർത്തനം ഉയർന്ന വിശ്വാസ്യതയോടെ AI സൃഷ്ടിച്ചതാണ്. ഉൽപ്പാദന ഉപയോഗത്തിന് പ്രൊഫഷണൽ അവലോകനം ശുപാർശ ചെയ്യുന്നു.';

  @override
  String get translationTier2Notice =>
      'ഈ വിവർത്തനം നല്ല വിശ്വാസ്യതയോടെ AI സൃഷ്ടിച്ചതാണ്. സുരക്ഷാ-നിർണായക സമ്മത, അടിയന്തര പദാവലികൾക്ക് പ്രൊഫഷണൽ അവലോകനം ശുപാർശ ചെയ്യുന്നു.';

  @override
  String get translationTier3Notice =>
      '⚠️ ഈ വിവർത്തനത്തിന് ഉൽപ്പാദന ഉപയോഗത്തിന് മുമ്പ് സുരക്ഷാ-നിർണായക അടിയന്തര പദസമുച്ചയങ്ങൾക്ക് മനുഷ്യ അവലോകനം ആവശ്യമാണ്.';

  @override
  String get translationTier4Notice =>
      '⚠️ ഇത് ഒരു കരട് വിവർത്തനം മാത്രമാണ്. ഉൽപ്പാദന ഉപയോഗത്തിന് മുമ്പ് പ്രൊഫഷണൽ വിവർത്തനം ആവശ്യമാണ്.';

  @override
  String get selectLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get searchLanguagesHint => 'ഭാഷകൾ തിരയുക';

  @override
  String translationQualityLabel(String quality) {
    return 'വിവർത്തന നിലവാരം: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'വിവർത്തനങ്ങൾ മെച്ചപ്പെടുത്താൻ സഹായിക്കുക - പ്രശ്നങ്ങൾ റിപ്പോർട്ട് ചെയ്യുക അല്ലെങ്കിൽ മെച്ചപ്പെട്ട വിവർത്തനങ്ങൾ സംഭാവന ചെയ്യുക!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
