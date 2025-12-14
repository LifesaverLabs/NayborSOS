import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bho.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_ceb.dart';
import 'app_localizations_co.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fj.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_fy.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gd.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_haw.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hmn.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ig.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_la.dart';
import 'app_localizations_lb.dart';
import 'app_localizations_lg.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_mi.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_my.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_ny.dart';
import 'app_localizations_om.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_qu.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_rw.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sm.dart';
import 'app_localizations_sn.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_st.dart';
import 'app_localizations_su.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tk.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_to.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_tt.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_wo.dart';
import 'app_localizations_xh.dart';
import 'app_localizations_yi.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_yue.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

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
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bho'),
    Locale('bn'),
    Locale('bs'),
    Locale('ca'),
    Locale('ceb'),
    Locale('co'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fj'),
    Locale('fr'),
    Locale('fy'),
    Locale('ga'),
    Locale('gd'),
    Locale('gl'),
    Locale('gu'),
    Locale('ha'),
    Locale('haw'),
    Locale('he'),
    Locale('hi'),
    Locale('hmn'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('ig'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('ky'),
    Locale('la'),
    Locale('lb'),
    Locale('lg'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mg'),
    Locale('mi'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('ne'),
    Locale('nl'),
    Locale('no'),
    Locale('ny'),
    Locale('om'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('qu'),
    Locale('ro'),
    Locale('ru'),
    Locale('rw'),
    Locale('sd'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sm'),
    Locale('sn'),
    Locale('so'),
    Locale('sq'),
    Locale('sr'),
    Locale('st'),
    Locale('su'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('tk'),
    Locale('tl'),
    Locale('to'),
    Locale('tr'),
    Locale('tt'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('wo'),
    Locale('xh'),
    Locale('yi'),
    Locale('yo'),
    Locale('yue'),
    Locale('zh'),
    Locale('zu'),
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

  /// Label for Tier 1 translation confidence
  ///
  /// In en, this message translates to:
  /// **'High Confidence AI Translation'**
  String get translationTier1Label;

  /// Label for Tier 2 translation confidence
  ///
  /// In en, this message translates to:
  /// **'Good Confidence AI Translation'**
  String get translationTier2Label;

  /// Label for Tier 3 translation confidence
  ///
  /// In en, this message translates to:
  /// **'Mid-Confidence AI Translation'**
  String get translationTier3Label;

  /// Label for Tier 4 translation confidence
  ///
  /// In en, this message translates to:
  /// **'Low Confidence AI Translation'**
  String get translationTier4Label;

  /// Notice text for Tier 1 translations
  ///
  /// In en, this message translates to:
  /// **'This translation was AI-generated with high confidence. Professional review recommended for production use.'**
  String get translationTier1Notice;

  /// Notice text for Tier 2 translations
  ///
  /// In en, this message translates to:
  /// **'This translation was AI-generated with good confidence. Professional review recommended for safety-critical consent and emergency terminology.'**
  String get translationTier2Notice;

  /// Notice text for Tier 3 translations
  ///
  /// In en, this message translates to:
  /// **'⚠️ This translation requires human review for safety-critical emergency phrases before production use.'**
  String get translationTier3Notice;

  /// Notice text for Tier 4 translations
  ///
  /// In en, this message translates to:
  /// **'⚠️ This is a draft translation only. Professional translation required before production use.'**
  String get translationTier4Notice;

  /// Language selection screen title
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Hint text for language search field
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get searchLanguagesHint;

  /// Label showing translation quality with tier
  ///
  /// In en, this message translates to:
  /// **'Translation Quality: {quality}'**
  String translationQualityLabel(String quality);

  /// Message encouraging users to help improve translations
  ///
  /// In en, this message translates to:
  /// **'Help improve translations - report issues or contribute better translations!'**
  String get helpImproveTranslations;

  /// Demo user initials
  ///
  /// In en, this message translates to:
  /// **'JD'**
  String get demoUserInitials;

  /// Demo user name
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get demoUserName;

  /// Demo user phone number
  ///
  /// In en, this message translates to:
  /// **'(555) 123-4567'**
  String get demoUserPhone;

  /// Demo user address
  ///
  /// In en, this message translates to:
  /// **'123 Main St, Apt 4B'**
  String get demoUserAddress;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'am',
    'ar',
    'az',
    'be',
    'bg',
    'bho',
    'bn',
    'bs',
    'ca',
    'ceb',
    'co',
    'cs',
    'cy',
    'da',
    'de',
    'el',
    'en',
    'eo',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fj',
    'fr',
    'fy',
    'ga',
    'gd',
    'gl',
    'gu',
    'ha',
    'haw',
    'he',
    'hi',
    'hmn',
    'hr',
    'ht',
    'hu',
    'hy',
    'id',
    'ig',
    'is',
    'it',
    'ja',
    'jv',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ku',
    'ky',
    'la',
    'lb',
    'lg',
    'lo',
    'lt',
    'lv',
    'mg',
    'mi',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'mt',
    'my',
    'ne',
    'nl',
    'no',
    'ny',
    'om',
    'or',
    'pa',
    'pl',
    'ps',
    'pt',
    'qu',
    'ro',
    'ru',
    'rw',
    'sd',
    'si',
    'sk',
    'sl',
    'sm',
    'sn',
    'so',
    'sq',
    'sr',
    'st',
    'su',
    'sv',
    'sw',
    'ta',
    'te',
    'tg',
    'th',
    'tk',
    'tl',
    'to',
    'tr',
    'tt',
    'ug',
    'uk',
    'ur',
    'uz',
    'vi',
    'wo',
    'xh',
    'yi',
    'yo',
    'yue',
    'zh',
    'zu',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bho':
      return AppLocalizationsBho();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'ceb':
      return AppLocalizationsCeb();
    case 'co':
      return AppLocalizationsCo();
    case 'cs':
      return AppLocalizationsCs();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'eo':
      return AppLocalizationsEo();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fj':
      return AppLocalizationsFj();
    case 'fr':
      return AppLocalizationsFr();
    case 'fy':
      return AppLocalizationsFy();
    case 'ga':
      return AppLocalizationsGa();
    case 'gd':
      return AppLocalizationsGd();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'ha':
      return AppLocalizationsHa();
    case 'haw':
      return AppLocalizationsHaw();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hmn':
      return AppLocalizationsHmn();
    case 'hr':
      return AppLocalizationsHr();
    case 'ht':
      return AppLocalizationsHt();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'ig':
      return AppLocalizationsIg();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ku':
      return AppLocalizationsKu();
    case 'ky':
      return AppLocalizationsKy();
    case 'la':
      return AppLocalizationsLa();
    case 'lb':
      return AppLocalizationsLb();
    case 'lg':
      return AppLocalizationsLg();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mg':
      return AppLocalizationsMg();
    case 'mi':
      return AppLocalizationsMi();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'mt':
      return AppLocalizationsMt();
    case 'my':
      return AppLocalizationsMy();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'ny':
      return AppLocalizationsNy();
    case 'om':
      return AppLocalizationsOm();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'ps':
      return AppLocalizationsPs();
    case 'pt':
      return AppLocalizationsPt();
    case 'qu':
      return AppLocalizationsQu();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'rw':
      return AppLocalizationsRw();
    case 'sd':
      return AppLocalizationsSd();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sm':
      return AppLocalizationsSm();
    case 'sn':
      return AppLocalizationsSn();
    case 'so':
      return AppLocalizationsSo();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'st':
      return AppLocalizationsSt();
    case 'su':
      return AppLocalizationsSu();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'tg':
      return AppLocalizationsTg();
    case 'th':
      return AppLocalizationsTh();
    case 'tk':
      return AppLocalizationsTk();
    case 'tl':
      return AppLocalizationsTl();
    case 'to':
      return AppLocalizationsTo();
    case 'tr':
      return AppLocalizationsTr();
    case 'tt':
      return AppLocalizationsTt();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vi':
      return AppLocalizationsVi();
    case 'wo':
      return AppLocalizationsWo();
    case 'xh':
      return AppLocalizationsXh();
    case 'yi':
      return AppLocalizationsYi();
    case 'yo':
      return AppLocalizationsYo();
    case 'yue':
      return AppLocalizationsYue();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
