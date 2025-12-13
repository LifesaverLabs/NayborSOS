import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'Naybor SOS'**
  String get appTitle;

  /// App tagline
  ///
  /// In en, this message translates to:
  /// **'Modern-Day Minutemen & Minutewomen'**
  String get tagline;

  /// Sign up header text
  ///
  /// In en, this message translates to:
  /// **'Sign up to help your neighbors'**
  String get signUpToHelp;

  /// Phone number entry instruction
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number to get started'**
  String get enterPhoneNumber;

  /// Phone number field label
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumberLabel;

  /// Phone number field hint
  ///
  /// In en, this message translates to:
  /// **'(555) 123-4567'**
  String get phoneNumberHint;

  /// Button to send verification code
  ///
  /// In en, this message translates to:
  /// **'Send Verification Code'**
  String get sendVerificationCode;

  /// Verification code header
  ///
  /// In en, this message translates to:
  /// **'Enter verification code'**
  String get enterVerificationCode;

  /// Message showing where code was sent
  ///
  /// In en, this message translates to:
  /// **'We sent a code to {phoneNumber}'**
  String verificationCodeSent(String phoneNumber);

  /// Verification code field label
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verificationCodeLabel;

  /// Verification code field hint
  ///
  /// In en, this message translates to:
  /// **'123456'**
  String get verificationCodeHint;

  /// Button to verify code and continue
  ///
  /// In en, this message translates to:
  /// **'Verify & Continue'**
  String get verifyAndContinue;

  /// Button to change phone number
  ///
  /// In en, this message translates to:
  /// **'Change phone number'**
  String get changePhoneNumber;

  /// Error message for empty phone number
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number'**
  String get pleaseEnterPhoneNumber;

  /// Error message for empty verification code
  ///
  /// In en, this message translates to:
  /// **'Please enter the verification code'**
  String get pleaseEnterVerificationCode;

  /// Create profile screen title
  ///
  /// In en, this message translates to:
  /// **'Create Profile'**
  String get createProfile;

  /// Profile setup header
  ///
  /// In en, this message translates to:
  /// **'Tell us about yourself'**
  String get tellUsAboutYourself;

  /// Profile setup description
  ///
  /// In en, this message translates to:
  /// **'This information helps us connect you with neighbors who need help'**
  String get profileSetupDescription;

  /// Add photo text
  ///
  /// In en, this message translates to:
  /// **'Add photo (optional)'**
  String get addPhotoOptional;

  /// Full name field label
  ///
  /// In en, this message translates to:
  /// **'Full Name *'**
  String get fullNameLabel;

  /// Full name field hint
  ///
  /// In en, this message translates to:
  /// **'John Smith'**
  String get fullNameHint;

  /// Home address field label
  ///
  /// In en, this message translates to:
  /// **'Home Address *'**
  String get homeAddressLabel;

  /// Home address field hint
  ///
  /// In en, this message translates to:
  /// **'123 Main St, Apt 4B'**
  String get homeAddressHint;

  /// Home address helper text
  ///
  /// In en, this message translates to:
  /// **'Used for proximity matching only'**
  String get homeAddressHelper;

  /// Age field label
  ///
  /// In en, this message translates to:
  /// **'Age (optional)'**
  String get ageOptionalLabel;

  /// Age field hint
  ///
  /// In en, this message translates to:
  /// **'25'**
  String get ageHint;

  /// Age helper text
  ///
  /// In en, this message translates to:
  /// **'Ages 70+ can set gentle alert hours'**
  String get ageHelper;

  /// Privacy notice title
  ///
  /// In en, this message translates to:
  /// **'Your privacy matters'**
  String get yourPrivacyMatters;

  /// Privacy notice text
  ///
  /// In en, this message translates to:
  /// **'Your location is only queried during active emergencies and never stored long-term.'**
  String get privacyNotice;

  /// Continue button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Error message for incomplete form
  ///
  /// In en, this message translates to:
  /// **'Please fill in all required fields'**
  String get pleaseFillRequiredFields;

  /// Home navigation label
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Alerts navigation label
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get alerts;

  /// Profile navigation label
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Available status text
  ///
  /// In en, this message translates to:
  /// **'Available to Respond'**
  String get availableToRespond;

  /// Not available status text
  ///
  /// In en, this message translates to:
  /// **'Not Available'**
  String get notAvailable;

  /// Available status description
  ///
  /// In en, this message translates to:
  /// **'You\'ll receive emergency alerts nearby'**
  String get youllReceiveEmergencyAlerts;

  /// Not available status description
  ///
  /// In en, this message translates to:
  /// **'Toggle on when ready to help'**
  String get toggleOnWhenReady;

  /// Available toggle success message
  ///
  /// In en, this message translates to:
  /// **'You\'re now available to respond'**
  String get youreNowAvailable;

  /// Unavailable toggle message
  ///
  /// In en, this message translates to:
  /// **'You won\'t receive alerts'**
  String get youWontReceiveAlerts;

  /// Alert schedule info message
  ///
  /// In en, this message translates to:
  /// **'Life-threatening alerts will notify you 24/7. Non-urgent alerts respect your schedule.'**
  String get lifeThreatening247Info;

  /// Request help button text
  ///
  /// In en, this message translates to:
  /// **'REQUEST HELP'**
  String get requestHelp;

  /// Your impact section title
  ///
  /// In en, this message translates to:
  /// **'Your Impact'**
  String get yourImpact;

  /// Responses stat label
  ///
  /// In en, this message translates to:
  /// **'Responses'**
  String get responses;

  /// Average time stat label
  ///
  /// In en, this message translates to:
  /// **'Avg Time'**
  String get avgTime;

  /// Your capabilities section title
  ///
  /// In en, this message translates to:
  /// **'Your Capabilities'**
  String get yourCapabilities;

  /// Edit button text
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Community network section title
  ///
  /// In en, this message translates to:
  /// **'Community Network'**
  String get communityNetwork;

  /// Nearby responders label
  ///
  /// In en, this message translates to:
  /// **'Nearby Responders'**
  String get nearbyResponders;

  /// Number of nearby responders available
  ///
  /// In en, this message translates to:
  /// **'{count} available'**
  String nearbyRespondersAvailable(int count);

  /// Coverage radius label
  ///
  /// In en, this message translates to:
  /// **'Coverage Radius'**
  String get coverageRadius;

  /// Coverage radius value
  ///
  /// In en, this message translates to:
  /// **'{distance} miles'**
  String coverageRadiusValue(String distance);

  /// Active alerts label
  ///
  /// In en, this message translates to:
  /// **'Active Alerts'**
  String get activeAlerts;

  /// None text
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// Your location label
  ///
  /// In en, this message translates to:
  /// **'Your Location'**
  String get yourLocation;

  /// Emergency type selection header
  ///
  /// In en, this message translates to:
  /// **'What do you need help with?'**
  String get whatDoYouNeedHelpWith;

  /// Additional details field label
  ///
  /// In en, this message translates to:
  /// **'Additional Details (optional)'**
  String get additionalDetailsOptional;

  /// Additional details field hint
  ///
  /// In en, this message translates to:
  /// **'Describe the situation...'**
  String get describeSituation;

  /// Trusted responders checkbox title
  ///
  /// In en, this message translates to:
  /// **'Alert my trusted responders first'**
  String get alertTrustedRespondersFirst;

  /// Trusted responders checkbox description
  ///
  /// In en, this message translates to:
  /// **'Your selected friends/family will be notified before the general community'**
  String get trustedRespondersDescription;

  /// Message showing which alert is being sent
  ///
  /// In en, this message translates to:
  /// **'Sending alert: {emergencyType}'**
  String sendingAlert(String emergencyType);

  /// Send alert button text
  ///
  /// In en, this message translates to:
  /// **'SEND ALERT NOW'**
  String get sendAlertNow;

  /// Error message for no emergency type selected
  ///
  /// In en, this message translates to:
  /// **'Please select an emergency type'**
  String get pleaseSelectEmergencyType;

  /// Life-threatening category label
  ///
  /// In en, this message translates to:
  /// **'🔴 Life-Threatening'**
  String get categoryLifeThreatening;

  /// Security/safety category label
  ///
  /// In en, this message translates to:
  /// **'🟠 Security/Safety'**
  String get categorySecuritySafety;

  /// Urgent time-sensitive category label
  ///
  /// In en, this message translates to:
  /// **'🟡 Urgent Time-Sensitive'**
  String get categoryUrgentTimeSensitive;

  /// Non-life-threatening category label
  ///
  /// In en, this message translates to:
  /// **'🟢 Non-Life-Threatening'**
  String get categoryNonLifeThreatening;

  /// CPR/Cardiac arrest emergency name
  ///
  /// In en, this message translates to:
  /// **'CPR / Cardiac Arrest'**
  String get emergencyCprCardiacName;

  /// CPR/Cardiac arrest emergency description
  ///
  /// In en, this message translates to:
  /// **'Person is unresponsive and not breathing'**
  String get emergencyCprCardiacDesc;

  /// AED delivery emergency name
  ///
  /// In en, this message translates to:
  /// **'AED Delivery'**
  String get emergencyAedName;

  /// AED delivery emergency description
  ///
  /// In en, this message translates to:
  /// **'Need an AED immediately'**
  String get emergencyAedDesc;

  /// Overdose/Naloxone emergency name
  ///
  /// In en, this message translates to:
  /// **'Overdose / Naloxone'**
  String get emergencyOverdoseName;

  /// Overdose/Naloxone emergency description
  ///
  /// In en, this message translates to:
  /// **'Suspected drug overdose, need naloxone'**
  String get emergencyOverdoseDesc;

  /// Choking/Heimlich emergency name
  ///
  /// In en, this message translates to:
  /// **'Choking / Heimlich'**
  String get emergencyChokingName;

  /// Choking/Heimlich emergency description
  ///
  /// In en, this message translates to:
  /// **'Person is choking and cannot breathe'**
  String get emergencyChokingDesc;

  /// Fire/Evacuation emergency name
  ///
  /// In en, this message translates to:
  /// **'Fire / Evacuation'**
  String get emergencyFireName;

  /// Fire/Evacuation emergency description
  ///
  /// In en, this message translates to:
  /// **'Fire emergency, need evacuation help'**
  String get emergencyFireDesc;

  /// Bedroom consent emergency name
  ///
  /// In en, this message translates to:
  /// **'Bedroom Consent Emergency'**
  String get emergencyConsentName;

  /// Bedroom consent emergency description
  ///
  /// In en, this message translates to:
  /// **'Safeword called, need witness'**
  String get emergencyConsentDesc;

  /// Active bystander emergency name
  ///
  /// In en, this message translates to:
  /// **'Active Bystander Witness'**
  String get emergencyBystanderName;

  /// Active bystander emergency description
  ///
  /// In en, this message translates to:
  /// **'Need presence to de-escalate conflict'**
  String get emergencyBystanderDesc;

  /// Missing pet emergency name
  ///
  /// In en, this message translates to:
  /// **'Missing Pet'**
  String get emergencyMissingPetName;

  /// Missing pet emergency description
  ///
  /// In en, this message translates to:
  /// **'Pet is lost or ran away, need search party'**
  String get emergencyMissingPetDesc;

  /// Wellness check emergency name
  ///
  /// In en, this message translates to:
  /// **'Wellness Check'**
  String get emergencyWellnessCheckName;

  /// Wellness check emergency description
  ///
  /// In en, this message translates to:
  /// **'Check on someone who may need help'**
  String get emergencyWellnessCheckDesc;

  /// Quit companion emergency name
  ///
  /// In en, this message translates to:
  /// **'Quit Companion'**
  String get emergencyQuitCompanionName;

  /// Quit companion emergency description
  ///
  /// In en, this message translates to:
  /// **'Fighting craving, need support'**
  String get emergencyQuitCompanionDesc;

  /// Companionship emergency name
  ///
  /// In en, this message translates to:
  /// **'Companionship'**
  String get emergencyCompanionshipName;

  /// Companionship emergency description
  ///
  /// In en, this message translates to:
  /// **'Feeling lonely or isolated'**
  String get emergencyCompanionshipDesc;

  /// 911 coordination emergency name
  ///
  /// In en, this message translates to:
  /// **'911 Coordination'**
  String get emergency911CoordinationName;

  /// 911 coordination emergency description
  ///
  /// In en, this message translates to:
  /// **'Need help calling and coordinating 911'**
  String get emergency911CoordinationDesc;

  /// AED equipment name
  ///
  /// In en, this message translates to:
  /// **'AED'**
  String get equipmentAed;

  /// Naloxone equipment name
  ///
  /// In en, this message translates to:
  /// **'Naloxone/Narcan'**
  String get equipmentNaloxone;

  /// My capabilities menu item
  ///
  /// In en, this message translates to:
  /// **'My Capabilities'**
  String get myCapabilities;

  /// Number of capabilities selected
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String capabilitiesSelected(int count);

  /// Alert schedule menu item
  ///
  /// In en, this message translates to:
  /// **'Alert Schedule'**
  String get alertSchedule;

  /// Alert schedule subtitle
  ///
  /// In en, this message translates to:
  /// **'Set your availability hours'**
  String get setAvailabilityHours;

  /// Trusted responders menu item
  ///
  /// In en, this message translates to:
  /// **'Trusted Responders'**
  String get trustedResponders;

  /// Response history menu item
  ///
  /// In en, this message translates to:
  /// **'Response History'**
  String get responseHistory;

  /// Privacy & safety menu item
  ///
  /// In en, this message translates to:
  /// **'Privacy & Safety'**
  String get privacyAndSafety;

  /// Help & support menu item
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpAndSupport;

  /// About Naybor SOS menu item
  ///
  /// In en, this message translates to:
  /// **'About Naybor SOS'**
  String get aboutNayborSos;

  /// Terms & privacy policy menu item
  ///
  /// In en, this message translates to:
  /// **'Terms & Privacy Policy'**
  String get termsAndPrivacyPolicy;

  /// Sign out button
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// Version text
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String version(String version);

  /// About dialog content
  ///
  /// In en, this message translates to:
  /// **'Naybor SOS connects neighbors in emergencies, creating a network of rapid responders who can provide critical aid before professional first responders arrive.'**
  String get aboutDialogContent;

  /// About dialog second paragraph
  ///
  /// In en, this message translates to:
  /// **'Everyone can be a hero. You don\'t need special training to save a life. Sometimes the most powerful intervention is simply showing up.'**
  String get aboutDialogContent2;

  /// Company name
  ///
  /// In en, this message translates to:
  /// **'Lifesaver Labs Public Benefit Corporation'**
  String get lifesaverLabs;

  /// Close button
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Sign out dialog title
  ///
  /// In en, this message translates to:
  /// **'Sign Out?'**
  String get signOutQuestion;

  /// Sign out dialog content
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out?'**
  String get signOutConfirm;

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Sign out success message
  ///
  /// In en, this message translates to:
  /// **'Signed out successfully'**
  String get signedOutSuccessfully;

  /// Settings text
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Wellness check capability
  ///
  /// In en, this message translates to:
  /// **'Wellness Check'**
  String get capabilityWellnessCheck;

  /// Quit companion capability
  ///
  /// In en, this message translates to:
  /// **'Quit Companion'**
  String get capabilityQuitCompanion;

  /// Active bystander capability
  ///
  /// In en, this message translates to:
  /// **'Active Bystander'**
  String get capabilityActiveBystander;
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
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
