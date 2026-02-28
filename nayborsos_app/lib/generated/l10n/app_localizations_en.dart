// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Naybor SOS';

  @override
  String get tagline => 'Neighbors helping neighbors in minutes';

  @override
  String get getStarted => 'Get Started';

  @override
  String get continueButton => 'Continue';

  @override
  String get cancelButton => 'Cancel';

  @override
  String get saveButton => 'Save';

  @override
  String get doneButton => 'Done';

  @override
  String get skipButton => 'Skip';

  @override
  String get backButton => 'Back';

  @override
  String get phoneVerificationTitle => 'Verify Your Phone';

  @override
  String get phoneVerificationSubtitle =>
      'We\'ll send you a verification code to confirm your identity';

  @override
  String get phoneNumberLabel => 'Phone Number';

  @override
  String get phoneNumberHint => 'Enter your phone number';

  @override
  String get sendCodeButton => 'Send Verification Code';

  @override
  String get verificationCodeTitle => 'Enter Verification Code';

  @override
  String verificationCodeSubtitle(String phoneNumber) {
    return 'Enter the 6-digit code sent to $phoneNumber';
  }

  @override
  String get verificationCodeHint => 'Enter 6-digit code';

  @override
  String get verifyButton => 'Verify';

  @override
  String get resendCodeButton => 'Resend Code';

  @override
  String resendCodeIn(int seconds) {
    return 'Resend code in ${seconds}s';
  }

  @override
  String get profileSetupTitle => 'Create Your Profile';

  @override
  String get profileSetupSubtitle => 'Tell us a little about yourself';

  @override
  String get firstNameLabel => 'First Name';

  @override
  String get firstNameHint => 'Enter your first name';

  @override
  String get lastNameLabel => 'Last Name';

  @override
  String get lastNameHint => 'Enter your last name';

  @override
  String get ageLabel => 'Age (optional)';

  @override
  String get ageHint => 'Enter your age';

  @override
  String get addressTitle => 'Your Location';

  @override
  String get addressSubtitle =>
      'We only store your city to connect you with nearby emergencies';

  @override
  String get cityLabel => 'City';

  @override
  String get cityHint => 'Enter your city';

  @override
  String get stateLabel => 'State/Province';

  @override
  String get stateHint => 'Enter your state or province';

  @override
  String get zipCodeLabel => 'ZIP/Postal Code';

  @override
  String get zipCodeHint => 'Enter your ZIP code';

  @override
  String get countryLabel => 'Country';

  @override
  String get capabilitySelectionTitle => 'How Can You Help?';

  @override
  String get capabilitySelectionSubtitle =>
      'Select the types of emergencies you\'re willing and able to respond to';

  @override
  String get lifeThreatening => 'Life-Threatening';

  @override
  String get securitySafety => 'Security & Safety';

  @override
  String get urgentTimeSensitive => 'Urgent & Time-Sensitive';

  @override
  String get nonLifeThreatening => 'Non-Life-Threatening';

  @override
  String get alertCardiacArrest => 'Cardiac Arrest / CPR';

  @override
  String get alertCardiacArrestDesc => 'Provide CPR and use AED if available';

  @override
  String get alertAed => 'AED Delivery';

  @override
  String get alertAedDesc => 'Bring your AED to someone in cardiac arrest';

  @override
  String get alertOverdose => 'Overdose / Naloxone';

  @override
  String get alertOverdoseDesc => 'Administer naloxone and provide support';

  @override
  String get alertChoking => 'Choking / Heimlich';

  @override
  String get alertChokingDesc => 'Perform Heimlich maneuver';

  @override
  String get alertDrowning => 'Drowning Response';

  @override
  String get alertDrowningDesc => 'Water rescue and CPR if needed';

  @override
  String get alertFire => 'Fire / Evacuation';

  @override
  String get alertFireDesc => 'Help with evacuation and fire response';

  @override
  String get alertConsentEmergency => 'Consent Emergency';

  @override
  String get alertConsentEmergencyDesc =>
      'Interrupt a potentially non-consensual situation';

  @override
  String get alertActiveBystander => 'Active Bystander';

  @override
  String get alertActiveBystanderDesc =>
      'Witness and document concerning situations';

  @override
  String get alertDomesticAbuse => 'Domestic Abuse';

  @override
  String get alertDomesticAbuseDesc => 'De-escalate and provide safe presence';

  @override
  String get alertWellnessCheck => 'Wellness Check';

  @override
  String get alertWellnessCheckDesc => 'Check on someone who may need help';

  @override
  String get alertMentalHealth => 'Mental Health Crisis';

  @override
  String get alertMentalHealthDesc => 'Provide calming presence and support';

  @override
  String get alertQuitCompanion => 'Quit Companion';

  @override
  String get alertQuitCompanionDesc =>
      'Support someone trying to quit substances';

  @override
  String get alertCompanionship => 'Companionship';

  @override
  String get alertCompanionshipDesc =>
      'Provide company to someone who is lonely';

  @override
  String get alert911Coordination => '911 Coordination';

  @override
  String get alert911CoordinationDesc =>
      'Help coordinate with emergency services';

  @override
  String get alertMissingPet => 'Missing Pet';

  @override
  String get alertMissingPetDesc => 'Help search for a lost pet';

  @override
  String get termsTitle => 'Terms & Safety';

  @override
  String get termsSubtitle => 'Please review and accept to continue';

  @override
  String get liabilityWaiverTitle => 'Liability Waiver';

  @override
  String get liabilityWaiverText =>
      'I understand that by responding to emergencies, I am voluntarily providing assistance. I agree to act in good faith and to the best of my abilities. I understand that Good Samaritan laws may provide legal protection for my actions.';

  @override
  String get termsOfServiceTitle => 'Terms of Service';

  @override
  String get termsOfServiceText =>
      'I agree to use this app responsibly and to help my community in times of need. I will not misuse the alert system.';

  @override
  String get iAgreeToTerms => 'I agree to the terms and conditions';

  @override
  String get viewFullTerms => 'View full terms';

  @override
  String get homeTitle => 'Home';

  @override
  String get alertsTitle => 'Alerts';

  @override
  String get profileTitle => 'Profile';

  @override
  String get availableNow => 'Available Now';

  @override
  String get availableNowSubtitle =>
      'You will receive alerts for emergencies near you';

  @override
  String get notAvailable => 'Not Available';

  @override
  String get notAvailableSubtitle =>
      'Turn on to start receiving emergency alerts';

  @override
  String get requestHelpButton => 'REQUEST HELP';

  @override
  String get myCapabilities => 'My Capabilities';

  @override
  String get communityStats => 'Community Stats';

  @override
  String neighborsReady(int count) {
    return '$count neighbors ready to help';
  }

  @override
  String responsesThisMonth(int count) {
    return '$count responses this month';
  }

  @override
  String avgResponseTime(String minutes) {
    return 'Avg response: $minutes min';
  }

  @override
  String get createAlertTitle => 'What\'s the Emergency?';

  @override
  String get createAlertSubtitle => 'Select the type of help you need';

  @override
  String get descriptionLabel => 'Description (optional)';

  @override
  String get descriptionHint => 'Any additional details that might help';

  @override
  String get locationLabel => 'Location';

  @override
  String get currentLocation => 'Current Location';

  @override
  String get changeLocation => 'Change Location';

  @override
  String get sendAlertButton => 'SEND ALERT';

  @override
  String get call911First => 'CALL 911 FIRST';

  @override
  String get call911Message =>
      'For life-threatening emergencies, professional EMS is essential. Neighbors will help until they arrive.';

  @override
  String get alertSentTitle => 'Alert Sent';

  @override
  String alertSentMessage(int count) {
    return 'Reaching out to $count nearby neighbors';
  }

  @override
  String get waitingForResponse => 'Waiting for response...';

  @override
  String responderAccepted(String name) {
    return '$name is on the way!';
  }

  @override
  String responderArrived(String name) {
    return '$name has arrived';
  }

  @override
  String get emergencyResolved => 'Emergency Resolved';

  @override
  String get cancelAlertButton => 'Cancel Alert';

  @override
  String get callResponderButton => 'Call Responder';

  @override
  String get incomingAlertTitle => 'EMERGENCY NEARBY';

  @override
  String distanceAway(String distance) {
    return '$distance away';
  }

  @override
  String respondInSeconds(int seconds) {
    return 'Respond in $seconds seconds';
  }

  @override
  String get acceptAlertButton => 'ACCEPT - I\'M ON MY WAY';

  @override
  String get declineAlertButton => 'DECLINE - FIND SOMEONE ELSE';

  @override
  String get alertAcceptedTitle => 'Alert Accepted';

  @override
  String get rememberToGrab => 'Remember to grab:';

  @override
  String get yourAed => 'Your AED';

  @override
  String get yourPhone => 'Your phone';

  @override
  String get flashlight => 'Flashlight (if dark)';

  @override
  String get naloxoneKit => 'Naloxone kit';

  @override
  String get startNavigationButton => 'START NAVIGATION';

  @override
  String get navigationTitle => 'Navigate to Emergency';

  @override
  String get etaLabel => 'ETA';

  @override
  String minutesAbbrev(int minutes) {
    return '$minutes min';
  }

  @override
  String get arrivedButton => 'I\'VE ARRIVED';

  @override
  String get onSceneTitle => 'You\'ve Arrived';

  @override
  String get quickTips => 'Quick Tips';

  @override
  String get viewFullInstructions => 'View Full Instructions';

  @override
  String get call911Button => 'CALL 911';

  @override
  String get markResolvedButton => 'MARK EMERGENCY RESOLVED';

  @override
  String get cprTip1 => 'Check responsiveness and breathing';

  @override
  String get cprTip2 => 'Call out for help';

  @override
  String get cprTip3 => 'Start chest compressions (100-120/min)';

  @override
  String get cprTip4 => 'Apply AED pads as shown';

  @override
  String get cprTip5 => 'Follow AED voice instructions';

  @override
  String get overdoseTip1 => 'Check for responsiveness';

  @override
  String get overdoseTip2 => 'Call 911 immediately';

  @override
  String get overdoseTip3 => 'Administer naloxone if available';

  @override
  String get overdoseTip4 => 'Start rescue breathing if needed';

  @override
  String get overdoseTip5 => 'Stay with the person until help arrives';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get alertScheduleTitle => 'Alert Schedule';

  @override
  String get alertScheduleSubtitle =>
      'Choose when you receive different types of alerts';

  @override
  String get lifeThreatening24_7 => 'Life-threatening alerts: Always on (24/7)';

  @override
  String get lifeThreatening24_7Subtitle =>
      'These alerts cannot be disabled as they may save lives';

  @override
  String get securityAlertsTitle => 'Security & Safety Alerts';

  @override
  String get nonCriticalAlertsTitle => 'Non-Critical Alerts';

  @override
  String get scheduleOption24_7 => 'Always (24/7)';

  @override
  String get scheduleOptionScheduled => 'During my schedule';

  @override
  String get scheduleOptionOff => 'Off';

  @override
  String get weeklyScheduleTitle => 'Weekly Schedule';

  @override
  String get monday => 'Monday';

  @override
  String get tuesday => 'Tuesday';

  @override
  String get wednesday => 'Wednesday';

  @override
  String get thursday => 'Thursday';

  @override
  String get friday => 'Friday';

  @override
  String get saturday => 'Saturday';

  @override
  String get sunday => 'Sunday';

  @override
  String get weeklyLimitTitle => 'Weekly Alert Limit';

  @override
  String get weeklyLimitSubtitle =>
      'Maximum non-critical alerts per week (to prevent burnout)';

  @override
  String get noLimit => 'No limit';

  @override
  String alertsPerWeek(int count) {
    return '$count alerts per week';
  }

  @override
  String get gentleHoursTitle => 'Gentle Hours';

  @override
  String get gentleHoursSubtitle =>
      'Receive softer notifications during sleeping hours';

  @override
  String get disableInboundTitle => 'Disable All Inbound Alerts';

  @override
  String get disableInboundSubtitle =>
      'You can still send alerts for help, but won\'t receive alerts from others';

  @override
  String get temporarySuspensionTitle => 'Temporary Suspension';

  @override
  String get temporarySuspensionSubtitle =>
      'Pause receiving alerts temporarily';

  @override
  String get suspensionReasonHospitalized => 'Hospitalized';

  @override
  String get suspensionReasonImmobilized => 'Recovering from injury';

  @override
  String get suspensionReasonCustody => 'In custody';

  @override
  String get suspensionReasonOther => 'Other temporary reason';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get enableNotifications => 'Enable Notifications';

  @override
  String get criticalAlertSound => 'Critical Alert Sound';

  @override
  String get languageTitle => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get accountTitle => 'Account';

  @override
  String get signOutButton => 'Sign Out';

  @override
  String get deleteAccountButton => 'Delete Account';

  @override
  String get deleteAccountConfirmation =>
      'Are you sure you want to delete your account? This action cannot be undone.';

  @override
  String get errorGeneric => 'Something went wrong. Please try again.';

  @override
  String get errorNoInternet =>
      'No internet connection. Please check your network.';

  @override
  String get errorInvalidPhone => 'Please enter a valid phone number.';

  @override
  String get errorInvalidCode => 'Invalid verification code. Please try again.';

  @override
  String get errorLocationPermission =>
      'Location permission is required to send and receive alerts.';

  @override
  String get errorNotificationPermission =>
      'Notification permission is required to receive emergency alerts.';

  @override
  String get loadingText => 'Loading...';

  @override
  String get noActiveAlerts => 'No active alerts';

  @override
  String get noActiveAlertsSubtitle =>
      'When emergencies occur nearby, they will appear here';

  @override
  String activeAlertsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'alerts',
      one: 'alert',
    );
    return '$count active $_temp0';
  }

  @override
  String get responseHistoryTitle => 'Response History';

  @override
  String get noResponseHistory => 'No responses yet';

  @override
  String totalResponses(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'responses',
      one: 'response',
    );
    return '$count total $_temp0';
  }

  @override
  String get aboutTitle => 'About Naybor SOS';

  @override
  String get aboutText =>
      'Naybor SOS connects neighbors to help each other during emergencies. When someone needs help, we alert nearby neighbors who can arrive in minutes while professional EMS is en route.';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get privacyPolicyButton => 'Privacy Policy';

  @override
  String get helpButton => 'Help & Support';

  @override
  String get feedbackButton => 'Send Feedback';
}
