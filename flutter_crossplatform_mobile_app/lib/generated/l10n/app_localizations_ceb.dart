// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cebuano (`ceb`).
class AppLocalizationsCeb extends AppLocalizations {
  AppLocalizationsCeb([String locale = 'ceb']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Mga Modernong Minutemen ug Minutewomen';

  @override
  String get signUpToHelp =>
      'Mag-rehistro para matabangan ang imong mga silingan';

  @override
  String get enterPhoneNumber =>
      'Isulod ang imong numero sa telepono para magsugod';

  @override
  String get phoneNumberLabel => 'Numero sa Telepono';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Ipadala ang Verification Code';

  @override
  String get enterVerificationCode => 'Isulod ang verification code';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Nagpadala mi ug code sa $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Verification Code';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'I-verify ug Padayon';

  @override
  String get changePhoneNumber => 'Usba ang numero sa telepono';

  @override
  String get pleaseEnterPhoneNumber =>
      'Palihug isulod ang imong numero sa telepono';

  @override
  String get pleaseEnterVerificationCode =>
      'Palihug isulod ang verification code';

  @override
  String get createProfile => 'Paghimo ug Profile';

  @override
  String get tellUsAboutYourself =>
      'Isulti kanamo ang bahin sa imong kaugalingon';

  @override
  String get profileSetupDescription =>
      'Kining impormasyon makatabang kanamo nga ikabit ka sa mga silingan nga nanginahanglan ug tabang';

  @override
  String get addPhotoOptional => 'Idugang ang litrato (opsyonal)';

  @override
  String get fullNameLabel => 'Tibuok nga Ngalan *';

  @override
  String get fullNameHint => 'Juan Dela Cruz';

  @override
  String get homeAddressLabel => 'Address sa Balay *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'Gigamit lang alang sa proximity matching';

  @override
  String get ageOptionalLabel => 'Edad (opsyonal)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Mga edad nga 70 pataas mahimo nga mag-set ug gentle alert hours';

  @override
  String get yourPrivacyMatters => 'Importante ang imong privacy';

  @override
  String get privacyNotice =>
      'Ang imong lokasyon pangutanaon lang panahon sa aktibong emerhensya ug dili tipigan sa dugayng panahon.';

  @override
  String get continueButton => 'Padayon';

  @override
  String get pleaseFillRequiredFields =>
      'Palihug pun-a ang tanan nga gikinahanglang mga field';

  @override
  String get home => 'Home';

  @override
  String get alerts => 'Mga Alert';

  @override
  String get profile => 'Profile';

  @override
  String get availableToRespond => 'Andam Motubag';

  @override
  String get notAvailable => 'Wala Mahimo';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Makadawat ka ug mga emergency alert sa duol';

  @override
  String get toggleOnWhenReady => 'I-toggle on kon andam na motabang';

  @override
  String get youreNowAvailable => 'Andam na ka karon motubag';

  @override
  String get youWontReceiveAlerts => 'Dili ka makadawat ug mga alert';

  @override
  String get lifeThreatening247Info =>
      'Ang mga life-threatening alert mag-notify kanimo 24/7. Ang mga non-urgent alert morespeto sa imong schedule.';

  @override
  String get requestHelp => 'MANGAYO UG TABANG';

  @override
  String get yourImpact => 'Imong Impact';

  @override
  String get responses => 'Mga Tubag';

  @override
  String get avgTime => 'Avg Time';

  @override
  String get yourCapabilities => 'Imong mga Katakus';

  @override
  String get edit => 'I-edit';

  @override
  String get communityNetwork => 'Community Network';

  @override
  String get nearbyResponders => 'Mga Duol nga Responder';

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
  String get activeAlerts => 'Mga Aktibong Alert';

  @override
  String get none => 'Wala';

  @override
  String get yourLocation => 'Imong Lokasyon';

  @override
  String get whatDoYouNeedHelpWith =>
      'Unsa ang imong gikinahanglan nga tabang?';

  @override
  String get additionalDetailsOptional => 'Dugang nga mga Detalye (opsyonal)';

  @override
  String get describeSituation => 'Ihulagway ang sitwasyon...';

  @override
  String get alertTrustedRespondersFirst =>
      'I-alert una ang akong mga trusted responder';

  @override
  String get trustedRespondersDescription =>
      'Ang imong gipili nga mga higala/pamilya ma-notify una sa general community';

  @override
  String sendingAlert(String emergencyType) {
    return 'Nagpadala ug alert: $emergencyType';
  }

  @override
  String get sendAlertNow => 'IPADALA ANG ALERT KARON';

  @override
  String get pleaseSelectEmergencyType =>
      'Palihug pilia ang tipo sa emerhensya';

  @override
  String get categoryLifeThreatening => '🔴 Delikado sa Kinabuhi';

  @override
  String get categorySecuritySafety => '🟠 Seguridad/Kaluwasan';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Dinalian nga Time-Sensitive';

  @override
  String get categoryNonLifeThreatening => '🟢 Dili Delikado sa Kinabuhi';

  @override
  String get emergencyCprCardiacName => 'CPR / Cardiac Arrest';

  @override
  String get emergencyCprCardiacDesc =>
      'Ang tawo wala makaresponde ug dili makaginhawa';

  @override
  String get emergencyAedName => 'AED Delivery';

  @override
  String get emergencyAedDesc => 'Kinahanglan ug AED dayon';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Giduda nga drug overdose, kinahanglan ug naloxone';

  @override
  String get emergencyChokingName => 'Nasakal / Heimlich';

  @override
  String get emergencyChokingDesc => 'Ang tawo nasakal ug dili makaginhawa';

  @override
  String get emergencyFireName => 'Sunog / Evacuation';

  @override
  String get emergencyFireDesc =>
      'Emergency nga sunog, kinahanglan ug tabang sa evacuation';

  @override
  String get emergencyConsentName => 'Bedroom Consent Emergency';

  @override
  String get emergencyConsentDesc => 'Safeword natawag, kinahanglan ug saksi';

  @override
  String get emergencyBystanderName => 'Active Bystander Witness';

  @override
  String get emergencyBystanderDesc =>
      'Kinahanglan ug presensya para ma-de-escalate ang panagbangi';

  @override
  String get emergencyMissingPetName => 'Nawala nga Pet';

  @override
  String get emergencyMissingPetDesc =>
      'Ang pet nawala o mikagiw, kinahanglan ug search party';

  @override
  String get emergencyWellnessCheckName => 'Wellness Check';

  @override
  String get emergencyWellnessCheckDesc =>
      'Tan-awon ang usa ka tawo nga basin kinahanglan ug tabang';

  @override
  String get emergencyQuitCompanionName => 'Quit Companion';

  @override
  String get emergencyQuitCompanionDesc =>
      'Nakig-away sa craving, kinahanglan ug suporta';

  @override
  String get emergencyCompanionshipName => 'Companionship';

  @override
  String get emergencyCompanionshipDesc => 'Gibati nga nag-inusara o nahimulag';

  @override
  String get emergency911CoordinationName => '911 Coordination';

  @override
  String get emergency911CoordinationDesc =>
      'Kinahanglan ug tabang sa pagtawag ug pag-coordinate sa emergency services';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Akong mga Katakus';

  @override
  String capabilitiesSelected(int count) {
    return '$count napili';
  }

  @override
  String get alertSchedule => 'Alert Schedule';

  @override
  String get setAvailabilityHours => 'I-set ang imong availability hours';

  @override
  String get trustedResponders => 'Mga Trusted Responder';

  @override
  String get responseHistory => 'Response History';

  @override
  String get privacyAndSafety => 'Privacy ug Safety';

  @override
  String get helpAndSupport => 'Tabang ug Suporta';

  @override
  String get aboutNayborSos => 'Bahin sa Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Terms ug Privacy Policy';

  @override
  String get signOut => 'Sign Out';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Ang Naybor SOS nagkonekta sa mga silingan sa mga emerhensya, naghimo ug network sa mga paspas nga responder nga makahatag ug kritikal nga tabang sa dili pa moabot ang mga propesyonal nga first responder.';

  @override
  String get aboutDialogContent2 =>
      'Ang tanan mahimo nga bayani. Dili ka kinahanglan ug espesyal nga training para makaluwas ug kinabuhi. Usahay ang pinakamakahuluganong intervention mao lang ang pag-apil.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Isara';

  @override
  String get signOutQuestion => 'Sign Out?';

  @override
  String get signOutConfirm => 'Sigurado ka ba nga gusto mong mag-sign out?';

  @override
  String get cancel => 'Kanselahon';

  @override
  String get signedOutSuccessfully => 'Malampuson nga nag-sign out';

  @override
  String get settings => 'Mga Setting';

  @override
  String get capabilityWellnessCheck => 'Wellness Check';

  @override
  String get capabilityQuitCompanion => 'Quit Companion';

  @override
  String get capabilityActiveBystander => 'Active Bystander';

  @override
  String get translationTier1Label => 'Taas nga Confidence AI Translation';

  @override
  String get translationTier2Label => 'Maayo nga Confidence AI Translation';

  @override
  String get translationTier3Label =>
      'Tunga-tunga nga Confidence AI Translation';

  @override
  String get translationTier4Label => 'Ubos nga Confidence AI Translation';

  @override
  String get translationTier1Notice =>
      'Kining translation gi-generate sa AI nga adunay taas nga confidence. Girekomenda ang professional review para sa production use.';

  @override
  String get translationTier2Notice =>
      'Kining translation gi-generate sa AI nga adunay maayo nga confidence. Girekomenda ang professional review para sa safety-critical consent ug emergency terminology.';

  @override
  String get translationTier3Notice =>
      '⚠️ Kining translation nanginahanglan ug human review para sa safety-critical emergency phrases sa dili pa gamiton sa production.';

  @override
  String get translationTier4Notice =>
      '⚠️ Kini usa ka draft translation lang. Kinahanglan ug professional translation sa dili pa gamiton sa production.';

  @override
  String get selectLanguage => 'Pilia ang Pinulongan';

  @override
  String get searchLanguagesHint => 'Pangitaa ang mga pinulongan';

  @override
  String translationQualityLabel(String quality) {
    return 'Translation Quality: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Tabanga nga ma-improve ang mga translation - i-report ang mga isyu o pag-contribute ug mas maayo nga mga translation!';
}
