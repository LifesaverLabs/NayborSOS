import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// The name of the application
  ///
  /// In en, this message translates to:
  /// **'Naybor SOS'**
  String get appName;

  /// App tagline shown on splash/welcome screens
  ///
  /// In en, this message translates to:
  /// **'Neighbors helping neighbors in minutes'**
  String get tagline;

  /// Button to start onboarding
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// Generic continue button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Generic cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// Generic save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButton;

  /// Generic done button
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get doneButton;

  /// Generic skip button
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skipButton;

  /// Generic back button
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get backButton;

  /// Title for phone verification screen
  ///
  /// In en, this message translates to:
  /// **'Verify Your Phone'**
  String get phoneVerificationTitle;

  /// Subtitle explaining phone verification
  ///
  /// In en, this message translates to:
  /// **'We\'ll send you a verification code to confirm your identity'**
  String get phoneVerificationSubtitle;

  /// Label for phone number input
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumberLabel;

  /// Hint text for phone number input
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get phoneNumberHint;

  /// Button to send SMS verification code
  ///
  /// In en, this message translates to:
  /// **'Send Verification Code'**
  String get sendCodeButton;

  /// Title for OTP entry screen
  ///
  /// In en, this message translates to:
  /// **'Enter Verification Code'**
  String get verificationCodeTitle;

  /// Subtitle showing where code was sent
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code sent to {phoneNumber}'**
  String verificationCodeSubtitle(String phoneNumber);

  /// Hint for verification code input
  ///
  /// In en, this message translates to:
  /// **'Enter 6-digit code'**
  String get verificationCodeHint;

  /// Button to verify the code
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verifyButton;

  /// Button to resend verification code
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCodeButton;

  /// Countdown until code can be resent
  ///
  /// In en, this message translates to:
  /// **'Resend code in {seconds}s'**
  String resendCodeIn(int seconds);

  /// Title for profile setup screen
  ///
  /// In en, this message translates to:
  /// **'Create Your Profile'**
  String get profileSetupTitle;

  /// Subtitle for profile setup
  ///
  /// In en, this message translates to:
  /// **'Tell us a little about yourself'**
  String get profileSetupSubtitle;

  /// Label for first name input
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstNameLabel;

  /// Hint for first name input
  ///
  /// In en, this message translates to:
  /// **'Enter your first name'**
  String get firstNameHint;

  /// Label for last name input
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastNameLabel;

  /// Hint for last name input
  ///
  /// In en, this message translates to:
  /// **'Enter your last name'**
  String get lastNameHint;

  /// Label for age input
  ///
  /// In en, this message translates to:
  /// **'Age (optional)'**
  String get ageLabel;

  /// Hint for age input
  ///
  /// In en, this message translates to:
  /// **'Enter your age'**
  String get ageHint;

  /// Title for address section
  ///
  /// In en, this message translates to:
  /// **'Your Location'**
  String get addressTitle;

  /// Privacy explanation for address
  ///
  /// In en, this message translates to:
  /// **'We only store your city to connect you with nearby emergencies'**
  String get addressSubtitle;

  /// Label for city input
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get cityLabel;

  /// Hint for city input
  ///
  /// In en, this message translates to:
  /// **'Enter your city'**
  String get cityHint;

  /// Label for state input
  ///
  /// In en, this message translates to:
  /// **'State/Province'**
  String get stateLabel;

  /// Hint for state input
  ///
  /// In en, this message translates to:
  /// **'Enter your state or province'**
  String get stateHint;

  /// Label for zip code input
  ///
  /// In en, this message translates to:
  /// **'ZIP/Postal Code'**
  String get zipCodeLabel;

  /// Hint for zip code input
  ///
  /// In en, this message translates to:
  /// **'Enter your ZIP code'**
  String get zipCodeHint;

  /// Label for country input
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get countryLabel;

  /// Title for capability selection screen
  ///
  /// In en, this message translates to:
  /// **'How Can You Help?'**
  String get capabilitySelectionTitle;

  /// Subtitle explaining capability selection
  ///
  /// In en, this message translates to:
  /// **'Select the types of emergencies you\'re willing and able to respond to'**
  String get capabilitySelectionSubtitle;

  /// Category label for life-threatening emergencies
  ///
  /// In en, this message translates to:
  /// **'Life-Threatening'**
  String get lifeThreatening;

  /// Category label for security emergencies
  ///
  /// In en, this message translates to:
  /// **'Security & Safety'**
  String get securitySafety;

  /// Category label for urgent emergencies
  ///
  /// In en, this message translates to:
  /// **'Urgent & Time-Sensitive'**
  String get urgentTimeSensitive;

  /// Category label for non-life-threatening situations
  ///
  /// In en, this message translates to:
  /// **'Non-Life-Threatening'**
  String get nonLifeThreatening;

  /// Emergency type: Cardiac arrest requiring CPR
  ///
  /// In en, this message translates to:
  /// **'Cardiac Arrest / CPR'**
  String get alertCardiacArrest;

  /// Description of cardiac arrest response
  ///
  /// In en, this message translates to:
  /// **'Provide CPR and use AED if available'**
  String get alertCardiacArrestDesc;

  /// Emergency type: AED delivery
  ///
  /// In en, this message translates to:
  /// **'AED Delivery'**
  String get alertAed;

  /// Description of AED delivery
  ///
  /// In en, this message translates to:
  /// **'Bring your AED to someone in cardiac arrest'**
  String get alertAedDesc;

  /// Emergency type: Drug overdose
  ///
  /// In en, this message translates to:
  /// **'Overdose / Naloxone'**
  String get alertOverdose;

  /// Description of overdose response
  ///
  /// In en, this message translates to:
  /// **'Administer naloxone and provide support'**
  String get alertOverdoseDesc;

  /// Emergency type: Choking
  ///
  /// In en, this message translates to:
  /// **'Choking / Heimlich'**
  String get alertChoking;

  /// Description of choking response
  ///
  /// In en, this message translates to:
  /// **'Perform Heimlich maneuver'**
  String get alertChokingDesc;

  /// Emergency type: Drowning
  ///
  /// In en, this message translates to:
  /// **'Drowning Response'**
  String get alertDrowning;

  /// Description of drowning response
  ///
  /// In en, this message translates to:
  /// **'Water rescue and CPR if needed'**
  String get alertDrowningDesc;

  /// Emergency type: Fire
  ///
  /// In en, this message translates to:
  /// **'Fire / Evacuation'**
  String get alertFire;

  /// Description of fire response
  ///
  /// In en, this message translates to:
  /// **'Help with evacuation and fire response'**
  String get alertFireDesc;

  /// Emergency type: Bedroom consent emergency
  ///
  /// In en, this message translates to:
  /// **'Consent Emergency'**
  String get alertConsentEmergency;

  /// Description of consent emergency response
  ///
  /// In en, this message translates to:
  /// **'Interrupt a potentially non-consensual situation'**
  String get alertConsentEmergencyDesc;

  /// Emergency type: Active bystander witness
  ///
  /// In en, this message translates to:
  /// **'Active Bystander'**
  String get alertActiveBystander;

  /// Description of active bystander role
  ///
  /// In en, this message translates to:
  /// **'Witness and document concerning situations'**
  String get alertActiveBystanderDesc;

  /// Emergency type: Domestic abuse intervention
  ///
  /// In en, this message translates to:
  /// **'Domestic Abuse'**
  String get alertDomesticAbuse;

  /// Description of domestic abuse response
  ///
  /// In en, this message translates to:
  /// **'De-escalate and provide safe presence'**
  String get alertDomesticAbuseDesc;

  /// Emergency type: Wellness check
  ///
  /// In en, this message translates to:
  /// **'Wellness Check'**
  String get alertWellnessCheck;

  /// Description of wellness check
  ///
  /// In en, this message translates to:
  /// **'Check on someone who may need help'**
  String get alertWellnessCheckDesc;

  /// Emergency type: Mental health crisis
  ///
  /// In en, this message translates to:
  /// **'Mental Health Crisis'**
  String get alertMentalHealth;

  /// Description of mental health response
  ///
  /// In en, this message translates to:
  /// **'Provide calming presence and support'**
  String get alertMentalHealthDesc;

  /// Emergency type: Addiction support
  ///
  /// In en, this message translates to:
  /// **'Quit Companion'**
  String get alertQuitCompanion;

  /// Description of quit companion role
  ///
  /// In en, this message translates to:
  /// **'Support someone trying to quit substances'**
  String get alertQuitCompanionDesc;

  /// Emergency type: Loneliness/companionship
  ///
  /// In en, this message translates to:
  /// **'Companionship'**
  String get alertCompanionship;

  /// Description of companionship response
  ///
  /// In en, this message translates to:
  /// **'Provide company to someone who is lonely'**
  String get alertCompanionshipDesc;

  /// Emergency type: 911 coordination
  ///
  /// In en, this message translates to:
  /// **'911 Coordination'**
  String get alert911Coordination;

  /// Description of 911 coordination
  ///
  /// In en, this message translates to:
  /// **'Help coordinate with emergency services'**
  String get alert911CoordinationDesc;

  /// Emergency type: Missing pet search
  ///
  /// In en, this message translates to:
  /// **'Missing Pet'**
  String get alertMissingPet;

  /// Description of missing pet search
  ///
  /// In en, this message translates to:
  /// **'Help search for a lost pet'**
  String get alertMissingPetDesc;

  /// Title for terms acceptance screen
  ///
  /// In en, this message translates to:
  /// **'Terms & Safety'**
  String get termsTitle;

  /// Subtitle for terms screen
  ///
  /// In en, this message translates to:
  /// **'Please review and accept to continue'**
  String get termsSubtitle;

  /// Title for liability waiver section
  ///
  /// In en, this message translates to:
  /// **'Liability Waiver'**
  String get liabilityWaiverTitle;

  /// Liability waiver text
  ///
  /// In en, this message translates to:
  /// **'I understand that by responding to emergencies, I am voluntarily providing assistance. I agree to act in good faith and to the best of my abilities. I understand that Good Samaritan laws may provide legal protection for my actions.'**
  String get liabilityWaiverText;

  /// Title for terms of service
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfServiceTitle;

  /// Terms of service summary
  ///
  /// In en, this message translates to:
  /// **'I agree to use this app responsibly and to help my community in times of need. I will not misuse the alert system.'**
  String get termsOfServiceText;

  /// Checkbox label for terms agreement
  ///
  /// In en, this message translates to:
  /// **'I agree to the terms and conditions'**
  String get iAgreeToTerms;

  /// Link to view full terms
  ///
  /// In en, this message translates to:
  /// **'View full terms'**
  String get viewFullTerms;

  /// Title for home screen/tab
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// Title for alerts screen/tab
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get alertsTitle;

  /// Title for profile screen/tab
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// Toggle label for availability
  ///
  /// In en, this message translates to:
  /// **'Available Now'**
  String get availableNow;

  /// Explanation when available
  ///
  /// In en, this message translates to:
  /// **'You will receive alerts for emergencies near you'**
  String get availableNowSubtitle;

  /// Status when not available
  ///
  /// In en, this message translates to:
  /// **'Not Available'**
  String get notAvailable;

  /// Explanation when not available
  ///
  /// In en, this message translates to:
  /// **'Turn on to start receiving emergency alerts'**
  String get notAvailableSubtitle;

  /// Large button to request emergency help
  ///
  /// In en, this message translates to:
  /// **'REQUEST HELP'**
  String get requestHelpButton;

  /// Section header for user's capabilities
  ///
  /// In en, this message translates to:
  /// **'My Capabilities'**
  String get myCapabilities;

  /// Section header for community statistics
  ///
  /// In en, this message translates to:
  /// **'Community Stats'**
  String get communityStats;

  /// Count of available responders
  ///
  /// In en, this message translates to:
  /// **'{count} neighbors ready to help'**
  String neighborsReady(int count);

  /// Count of responses this month
  ///
  /// In en, this message translates to:
  /// **'{count} responses this month'**
  String responsesThisMonth(int count);

  /// Average response time
  ///
  /// In en, this message translates to:
  /// **'Avg response: {minutes} min'**
  String avgResponseTime(String minutes);

  /// Title for create alert screen
  ///
  /// In en, this message translates to:
  /// **'What\'s the Emergency?'**
  String get createAlertTitle;

  /// Subtitle for create alert screen
  ///
  /// In en, this message translates to:
  /// **'Select the type of help you need'**
  String get createAlertSubtitle;

  /// Label for emergency description
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get descriptionLabel;

  /// Hint for description input
  ///
  /// In en, this message translates to:
  /// **'Any additional details that might help'**
  String get descriptionHint;

  /// Label for location section
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get locationLabel;

  /// Using current GPS location
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get currentLocation;

  /// Button to change location
  ///
  /// In en, this message translates to:
  /// **'Change Location'**
  String get changeLocation;

  /// Button to send the emergency alert
  ///
  /// In en, this message translates to:
  /// **'SEND ALERT'**
  String get sendAlertButton;

  /// Warning to call 911 for life-threatening emergencies
  ///
  /// In en, this message translates to:
  /// **'CALL 911 FIRST'**
  String get call911First;

  /// Message explaining 911 primacy
  ///
  /// In en, this message translates to:
  /// **'For life-threatening emergencies, professional EMS is essential. Neighbors will help until they arrive.'**
  String get call911Message;

  /// Title when alert is sent
  ///
  /// In en, this message translates to:
  /// **'Alert Sent'**
  String get alertSentTitle;

  /// Message showing alert is being sent
  ///
  /// In en, this message translates to:
  /// **'Reaching out to {count} nearby neighbors'**
  String alertSentMessage(int count);

  /// Status while waiting for responder
  ///
  /// In en, this message translates to:
  /// **'Waiting for response...'**
  String get waitingForResponse;

  /// Status when responder accepts
  ///
  /// In en, this message translates to:
  /// **'{name} is on the way!'**
  String responderAccepted(String name);

  /// Status when responder arrives
  ///
  /// In en, this message translates to:
  /// **'{name} has arrived'**
  String responderArrived(String name);

  /// Status when emergency is resolved
  ///
  /// In en, this message translates to:
  /// **'Emergency Resolved'**
  String get emergencyResolved;

  /// Button to cancel an alert
  ///
  /// In en, this message translates to:
  /// **'Cancel Alert'**
  String get cancelAlertButton;

  /// Button to call the responding neighbor
  ///
  /// In en, this message translates to:
  /// **'Call Responder'**
  String get callResponderButton;

  /// Title for incoming alert screen
  ///
  /// In en, this message translates to:
  /// **'EMERGENCY NEARBY'**
  String get incomingAlertTitle;

  /// Distance to emergency
  ///
  /// In en, this message translates to:
  /// **'{distance} away'**
  String distanceAway(String distance);

  /// Countdown to respond
  ///
  /// In en, this message translates to:
  /// **'Respond in {seconds} seconds'**
  String respondInSeconds(int seconds);

  /// Button to accept emergency alert
  ///
  /// In en, this message translates to:
  /// **'ACCEPT - I\'M ON MY WAY'**
  String get acceptAlertButton;

  /// Button to decline emergency alert
  ///
  /// In en, this message translates to:
  /// **'DECLINE - FIND SOMEONE ELSE'**
  String get declineAlertButton;

  /// Title when alert is accepted
  ///
  /// In en, this message translates to:
  /// **'Alert Accepted'**
  String get alertAcceptedTitle;

  /// Header for equipment reminder
  ///
  /// In en, this message translates to:
  /// **'Remember to grab:'**
  String get rememberToGrab;

  /// Equipment reminder: AED
  ///
  /// In en, this message translates to:
  /// **'Your AED'**
  String get yourAed;

  /// Equipment reminder: phone
  ///
  /// In en, this message translates to:
  /// **'Your phone'**
  String get yourPhone;

  /// Equipment reminder: flashlight
  ///
  /// In en, this message translates to:
  /// **'Flashlight (if dark)'**
  String get flashlight;

  /// Equipment reminder: naloxone
  ///
  /// In en, this message translates to:
  /// **'Naloxone kit'**
  String get naloxoneKit;

  /// Button to start GPS navigation
  ///
  /// In en, this message translates to:
  /// **'START NAVIGATION'**
  String get startNavigationButton;

  /// Title for navigation screen
  ///
  /// In en, this message translates to:
  /// **'Navigate to Emergency'**
  String get navigationTitle;

  /// Label for estimated time of arrival
  ///
  /// In en, this message translates to:
  /// **'ETA'**
  String get etaLabel;

  /// Minutes abbreviation
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String minutesAbbrev(int minutes);

  /// Button to mark arrival
  ///
  /// In en, this message translates to:
  /// **'I\'VE ARRIVED'**
  String get arrivedButton;

  /// Title for on-scene screen
  ///
  /// In en, this message translates to:
  /// **'You\'ve Arrived'**
  String get onSceneTitle;

  /// Header for emergency tips
  ///
  /// In en, this message translates to:
  /// **'Quick Tips'**
  String get quickTips;

  /// Link to detailed instructions
  ///
  /// In en, this message translates to:
  /// **'View Full Instructions'**
  String get viewFullInstructions;

  /// Button to call 911
  ///
  /// In en, this message translates to:
  /// **'CALL 911'**
  String get call911Button;

  /// Button to mark emergency as resolved
  ///
  /// In en, this message translates to:
  /// **'MARK EMERGENCY RESOLVED'**
  String get markResolvedButton;

  /// CPR tip 1
  ///
  /// In en, this message translates to:
  /// **'Check responsiveness and breathing'**
  String get cprTip1;

  /// CPR tip 2
  ///
  /// In en, this message translates to:
  /// **'Call out for help'**
  String get cprTip2;

  /// CPR tip 3
  ///
  /// In en, this message translates to:
  /// **'Start chest compressions (100-120/min)'**
  String get cprTip3;

  /// CPR tip 4
  ///
  /// In en, this message translates to:
  /// **'Apply AED pads as shown'**
  String get cprTip4;

  /// CPR tip 5
  ///
  /// In en, this message translates to:
  /// **'Follow AED voice instructions'**
  String get cprTip5;

  /// Overdose tip 1
  ///
  /// In en, this message translates to:
  /// **'Check for responsiveness'**
  String get overdoseTip1;

  /// Overdose tip 2
  ///
  /// In en, this message translates to:
  /// **'Call 911 immediately'**
  String get overdoseTip2;

  /// Overdose tip 3
  ///
  /// In en, this message translates to:
  /// **'Administer naloxone if available'**
  String get overdoseTip3;

  /// Overdose tip 4
  ///
  /// In en, this message translates to:
  /// **'Start rescue breathing if needed'**
  String get overdoseTip4;

  /// Overdose tip 5
  ///
  /// In en, this message translates to:
  /// **'Stay with the person until help arrives'**
  String get overdoseTip5;

  /// Title for settings screen
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Title for alert schedule settings
  ///
  /// In en, this message translates to:
  /// **'Alert Schedule'**
  String get alertScheduleTitle;

  /// Subtitle for alert schedule
  ///
  /// In en, this message translates to:
  /// **'Choose when you receive different types of alerts'**
  String get alertScheduleSubtitle;

  /// Life-threatening alerts are always on
  ///
  /// In en, this message translates to:
  /// **'Life-threatening alerts: Always on (24/7)'**
  String get lifeThreatening24_7;

  /// Explanation for always-on life-threatening alerts
  ///
  /// In en, this message translates to:
  /// **'These alerts cannot be disabled as they may save lives'**
  String get lifeThreatening24_7Subtitle;

  /// Title for security alert settings
  ///
  /// In en, this message translates to:
  /// **'Security & Safety Alerts'**
  String get securityAlertsTitle;

  /// Title for non-critical alert settings
  ///
  /// In en, this message translates to:
  /// **'Non-Critical Alerts'**
  String get nonCriticalAlertsTitle;

  /// Schedule option: always on
  ///
  /// In en, this message translates to:
  /// **'Always (24/7)'**
  String get scheduleOption24_7;

  /// Schedule option: scheduled hours only
  ///
  /// In en, this message translates to:
  /// **'During my schedule'**
  String get scheduleOptionScheduled;

  /// Schedule option: disabled
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get scheduleOptionOff;

  /// Title for weekly schedule section
  ///
  /// In en, this message translates to:
  /// **'Weekly Schedule'**
  String get weeklyScheduleTitle;

  /// Day of week
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// Day of week
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// Day of week
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// Day of week
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// Day of week
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// Day of week
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;

  /// Day of week
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// Title for weekly limit setting
  ///
  /// In en, this message translates to:
  /// **'Weekly Alert Limit'**
  String get weeklyLimitTitle;

  /// Explanation for weekly limit
  ///
  /// In en, this message translates to:
  /// **'Maximum non-critical alerts per week (to prevent burnout)'**
  String get weeklyLimitSubtitle;

  /// Option for no weekly limit
  ///
  /// In en, this message translates to:
  /// **'No limit'**
  String get noLimit;

  /// Weekly limit display
  ///
  /// In en, this message translates to:
  /// **'{count} alerts per week'**
  String alertsPerWeek(int count);

  /// Title for gentle hours setting (70+ users)
  ///
  /// In en, this message translates to:
  /// **'Gentle Hours'**
  String get gentleHoursTitle;

  /// Explanation of gentle hours
  ///
  /// In en, this message translates to:
  /// **'Receive softer notifications during sleeping hours'**
  String get gentleHoursSubtitle;

  /// Title for disabling inbound alerts (80+ users)
  ///
  /// In en, this message translates to:
  /// **'Disable All Inbound Alerts'**
  String get disableInboundTitle;

  /// Explanation of disabling inbound
  ///
  /// In en, this message translates to:
  /// **'You can still send alerts for help, but won\'t receive alerts from others'**
  String get disableInboundSubtitle;

  /// Title for temporary suspension setting
  ///
  /// In en, this message translates to:
  /// **'Temporary Suspension'**
  String get temporarySuspensionTitle;

  /// Explanation of temporary suspension
  ///
  /// In en, this message translates to:
  /// **'Pause receiving alerts temporarily'**
  String get temporarySuspensionSubtitle;

  /// Suspension reason: in hospital
  ///
  /// In en, this message translates to:
  /// **'Hospitalized'**
  String get suspensionReasonHospitalized;

  /// Suspension reason: recovering
  ///
  /// In en, this message translates to:
  /// **'Recovering from injury'**
  String get suspensionReasonImmobilized;

  /// Suspension reason: in custody
  ///
  /// In en, this message translates to:
  /// **'In custody'**
  String get suspensionReasonCustody;

  /// Suspension reason: other
  ///
  /// In en, this message translates to:
  /// **'Other temporary reason'**
  String get suspensionReasonOther;

  /// Title for notification settings
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsTitle;

  /// Toggle to enable notifications
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  /// Setting for critical alert sound
  ///
  /// In en, this message translates to:
  /// **'Critical Alert Sound'**
  String get criticalAlertSound;

  /// Title for language setting
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageTitle;

  /// Prompt to select language
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Title for account section
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountTitle;

  /// Button to sign out
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOutButton;

  /// Button to delete account
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccountButton;

  /// Confirmation message for account deletion
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? This action cannot be undone.'**
  String get deleteAccountConfirmation;

  /// Generic error message
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get errorGeneric;

  /// Error message for no internet
  ///
  /// In en, this message translates to:
  /// **'No internet connection. Please check your network.'**
  String get errorNoInternet;

  /// Error for invalid phone number
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number.'**
  String get errorInvalidPhone;

  /// Error for invalid OTP code
  ///
  /// In en, this message translates to:
  /// **'Invalid verification code. Please try again.'**
  String get errorInvalidCode;

  /// Error for missing location permission
  ///
  /// In en, this message translates to:
  /// **'Location permission is required to send and receive alerts.'**
  String get errorLocationPermission;

  /// Error for missing notification permission
  ///
  /// In en, this message translates to:
  /// **'Notification permission is required to receive emergency alerts.'**
  String get errorNotificationPermission;

  /// Generic loading text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loadingText;

  /// Message when there are no active alerts
  ///
  /// In en, this message translates to:
  /// **'No active alerts'**
  String get noActiveAlerts;

  /// Subtitle for no active alerts
  ///
  /// In en, this message translates to:
  /// **'When emergencies occur nearby, they will appear here'**
  String get noActiveAlertsSubtitle;

  /// Count of active alerts
  ///
  /// In en, this message translates to:
  /// **'{count} active {count, plural, =1{alert} other{alerts}}'**
  String activeAlertsCount(int count);

  /// Title for response history
  ///
  /// In en, this message translates to:
  /// **'Response History'**
  String get responseHistoryTitle;

  /// Message when no response history
  ///
  /// In en, this message translates to:
  /// **'No responses yet'**
  String get noResponseHistory;

  /// Total response count
  ///
  /// In en, this message translates to:
  /// **'{count} total {count, plural, =1{response} other{responses}}'**
  String totalResponses(int count);

  /// Title for about section
  ///
  /// In en, this message translates to:
  /// **'About Naybor SOS'**
  String get aboutTitle;

  /// About text for the app
  ///
  /// In en, this message translates to:
  /// **'Naybor SOS connects neighbors to help each other during emergencies. When someone needs help, we alert nearby neighbors who can arrive in minutes while professional EMS is en route.'**
  String get aboutText;

  /// App version display
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String version(String version);

  /// Button to view privacy policy
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyButton;

  /// Button to access help
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpButton;

  /// Button to send feedback
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get feedbackButton;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
