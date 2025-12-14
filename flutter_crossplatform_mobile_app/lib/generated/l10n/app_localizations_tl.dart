// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Mga Modernong Minutemen at Minutewomen';

  @override
  String get signUpToHelp =>
      'Mag-sign up para tumulong sa inyong mga kapitbahay';

  @override
  String get enterPhoneNumber =>
      'Ilagay ang inyong numero ng telepono upang magsimula';

  @override
  String get phoneNumberLabel => 'Numero ng Telepono';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Magpadala ng Verification Code';

  @override
  String get enterVerificationCode => 'Ilagay ang verification code';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Nagpadala kami ng code sa $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Verification Code';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'I-verify at Magpatuloy';

  @override
  String get changePhoneNumber => 'Palitan ang numero ng telepono';

  @override
  String get pleaseEnterPhoneNumber =>
      'Pakisuyo, ilagay ang inyong numero ng telepono';

  @override
  String get pleaseEnterVerificationCode =>
      'Pakisuyo, ilagay ang verification code';

  @override
  String get createProfile => 'Gumawa ng Profile';

  @override
  String get tellUsAboutYourself => 'Sabihin sa amin ang tungkol sa inyo';

  @override
  String get profileSetupDescription =>
      'Ang impormasyong ito ay tumutulong sa amin na ikonekta kayo sa mga kapitbahayang nangangailangan ng tulong';

  @override
  String get addPhotoOptional => 'Magdagdag ng larawan (opsyonal)';

  @override
  String get fullNameLabel => 'Buong Pangalan *';

  @override
  String get fullNameHint => 'Juan Dela Cruz';

  @override
  String get homeAddressLabel => 'Address ng Bahay *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'Ginagamit lamang para sa proximity matching';

  @override
  String get ageOptionalLabel => 'Edad (opsyonal)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Mga edad 70 pataas ay maaaring mag-set ng gentle alert hours';

  @override
  String get yourPrivacyMatters => 'Mahalaga ang inyong privacy';

  @override
  String get privacyNotice =>
      'Ang inyong lokasyon ay kinukuha lamang sa panahon ng aktibong emergency at hindi naka-store sa mahabang panahon.';

  @override
  String get continueButton => 'Magpatuloy';

  @override
  String get pleaseFillRequiredFields =>
      'Pakisuyo, punan ang lahat ng kinakailangang field';

  @override
  String get home => 'Home';

  @override
  String get alerts => 'Mga Alert';

  @override
  String get profile => 'Profile';

  @override
  String get availableToRespond => 'Available na Tumugon';

  @override
  String get notAvailable => 'Hindi Available';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Makakatanggap kayo ng mga emergency alert sa malapit';

  @override
  String get toggleOnWhenReady => 'I-toggle on kapag handa na kayong tumulong';

  @override
  String get youreNowAvailable => 'Available na kayo ngayon na tumugon';

  @override
  String get youWontReceiveAlerts => 'Hindi kayo makakatanggap ng mga alert';

  @override
  String get lifeThreatening247Info =>
      'Ang mga life-threatening alert ay magno-notify sa inyo 24/7. Ang mga non-urgent alert ay sumusunod sa inyong schedule.';

  @override
  String get requestHelp => 'HUMINGI NG TULONG';

  @override
  String get yourImpact => 'Ang Inyong Impact';

  @override
  String get responses => 'Mga Tugon';

  @override
  String get avgTime => 'Avg na Oras';

  @override
  String get yourCapabilities => 'Ang Inyong mga Kakayahan';

  @override
  String get edit => 'I-edit';

  @override
  String get communityNetwork => 'Community Network';

  @override
  String get nearbyResponders => 'Mga Nearby Responders';

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
  String get activeAlerts => 'Mga Active Alert';

  @override
  String get none => 'Wala';

  @override
  String get yourLocation => 'Ang Inyong Lokasyon';

  @override
  String get whatDoYouNeedHelpWith => 'Sa ano kayo nangangailangan ng tulong?';

  @override
  String get additionalDetailsOptional => 'Mga Karagdagang Detalye (opsyonal)';

  @override
  String get describeSituation => 'Ilarawan ang sitwasyon...';

  @override
  String get alertTrustedRespondersFirst =>
      'I-alert muna ang aking mga trusted responders';

  @override
  String get trustedRespondersDescription =>
      'Ang inyong mga napiling kaibigan/pamilya ay mano-notify bago ang general community';

  @override
  String sendingAlert(String emergencyType) {
    return 'Nagpapadala ng alert: $emergencyType';
  }

  @override
  String get sendAlertNow => 'MAGPADALA NG ALERT NGAYON';

  @override
  String get pleaseSelectEmergencyType =>
      'Pakisuyo, pumili ng uri ng emergency';

  @override
  String get categoryLifeThreatening => '🔴 Nakabantay sa Buhay';

  @override
  String get categorySecuritySafety => '🟠 Security/Kaligtasan';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent at Time-Sensitive';

  @override
  String get categoryNonLifeThreatening => '🟢 Hindi Nakabantay sa Buhay';

  @override
  String get emergencyCprCardiacName => 'CPR / Cardiac Arrest';

  @override
  String get emergencyCprCardiacDesc =>
      'Ang tao ay walang malay at hindi humihinga';

  @override
  String get emergencyAedName => 'AED Delivery';

  @override
  String get emergencyAedDesc => 'Kailangan ng AED agad-agad';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Pinaghihinalaang drug overdose, kailangan ng naloxone';

  @override
  String get emergencyChokingName => 'Pagkakasakal / Heimlich';

  @override
  String get emergencyChokingDesc => 'Ang tao ay nakasakal at hindi makahinga';

  @override
  String get emergencyFireName => 'Sunog / Evacuation';

  @override
  String get emergencyFireDesc =>
      'Emergency na sunog, kailangan ng tulong sa evacuation';

  @override
  String get emergencyConsentName => 'Bedroom Consent Emergency';

  @override
  String get emergencyConsentDesc => 'Tinawag ang safeword, kailangan ng saksi';

  @override
  String get emergencyBystanderName => 'Active Bystander Witness';

  @override
  String get emergencyBystanderDesc =>
      'Kailangan ng presensya upang mabawasan ang tension ng conflict';

  @override
  String get emergencyMissingPetName => 'Nawawalang Alaga';

  @override
  String get emergencyMissingPetDesc =>
      'Ang alaga ay nawala o tumakas, kailangan ng search party';

  @override
  String get emergencyWellnessCheckName => 'Wellness Check';

  @override
  String get emergencyWellnessCheckDesc =>
      'Tignan ang isang tao na maaaring nangangailangan ng tulong';

  @override
  String get emergencyQuitCompanionName => 'Quit Companion';

  @override
  String get emergencyQuitCompanionDesc =>
      'Lumalaban sa craving, kailangan ng suporta';

  @override
  String get emergencyCompanionshipName => 'Companionship';

  @override
  String get emergencyCompanionshipDesc =>
      'Nakakaramdam ng kalungkutan o nag-iisa';

  @override
  String get emergency911CoordinationName => '911 Coordination';

  @override
  String get emergency911CoordinationDesc =>
      'Kailangan ng tulong sa pagtawag at pag-coordinate sa 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Ang Aking mga Kakayahan';

  @override
  String capabilitiesSelected(int count) {
    return '$count napili';
  }

  @override
  String get alertSchedule => 'Alert Schedule';

  @override
  String get setAvailabilityHours => 'I-set ang inyong availability hours';

  @override
  String get trustedResponders => 'Mga Trusted Responders';

  @override
  String get responseHistory => 'Response History';

  @override
  String get privacyAndSafety => 'Privacy at Kaligtasan';

  @override
  String get helpAndSupport => 'Tulong at Suporta';

  @override
  String get aboutNayborSos => 'Tungkol sa Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Mga Terms at Privacy Policy';

  @override
  String get signOut => 'Mag-sign Out';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Ang Naybor SOS ay nag-uugnay sa mga kapitbahay sa mga emergency, gumagawa ng network ng mga rapid responders na makapagbibigay ng kritikal na tulong bago dumating ang mga propesyonal na first responders.';

  @override
  String get aboutDialogContent2 =>
      'Lahat ay maaaring maging bayani. Hindi kayo kailangan ng special training para makapag-save ng buhay. Minsan ang pinaka-powerful na intervention ay ang simpleng pagpunta.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Isara';

  @override
  String get signOutQuestion => 'Mag-sign Out?';

  @override
  String get signOutConfirm => 'Sigurado ba kayong gusto ninyong mag-sign out?';

  @override
  String get cancel => 'Cancel';

  @override
  String get signedOutSuccessfully => 'Matagumpay na naka-sign out';

  @override
  String get settings => 'Mga Settings';

  @override
  String get capabilityWellnessCheck => 'Wellness Check';

  @override
  String get capabilityQuitCompanion => 'Quit Companion';

  @override
  String get capabilityActiveBystander => 'Active Bystander';

  @override
  String get translationTier1Label => 'High Confidence AI Translation';

  @override
  String get translationTier2Label => 'Good Confidence AI Translation';

  @override
  String get translationTier3Label => 'Mid-Confidence AI Translation';

  @override
  String get translationTier4Label => 'Low Confidence AI Translation';

  @override
  String get translationTier1Notice =>
      'Ang translation na ito ay gawa ng AI na may mataas na confidence. Inirerekumenda ang professional review para sa production use.';

  @override
  String get translationTier2Notice =>
      'Ang translation na ito ay gawa ng AI na may magandang confidence. Inirerekumenda ang professional review para sa safety-critical consent at emergency terminology.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ang translation na ito ay kailangan ng human review para sa safety-critical emergency phrases bago gamitin sa production.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ito ay draft translation lamang. Kailangan ng professional translation bago gamitin sa production.';

  @override
  String get selectLanguage => 'Pumili ng Wika';

  @override
  String get searchLanguagesHint => 'Maghanap ng mga wika';

  @override
  String translationQualityLabel(String quality) {
    return 'Translation Quality: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Tumulong sa pagpapabuti ng mga translation - mag-report ng mga isyu o mag-contribute ng mas magagandang translation!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
