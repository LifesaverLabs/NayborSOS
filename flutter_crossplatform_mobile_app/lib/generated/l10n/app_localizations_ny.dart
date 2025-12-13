// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nyanja Chewa Chichewa (`ny`).
class AppLocalizationsNy extends AppLocalizations {
  AppLocalizationsNy([String locale = 'ny']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Anthu Othandiza a Masiku Ano';

  @override
  String get signUpToHelp => 'Lembani kuti muthandize anansi anu';

  @override
  String get enterPhoneNumber => 'Lembani nambala yanu ya foni kuti muyambe';

  @override
  String get phoneNumberLabel => 'Nambala ya Foni';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Tumizani Kachidindo ka Kutsimikizira';

  @override
  String get enterVerificationCode => 'Lembani kachidindo ka kutsimikizira';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Tatumiza kachidindo ku $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kachidindo ka Kutsimikizira';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Tsimikizirani & Pitirizani';

  @override
  String get changePhoneNumber => 'Sinthani nambala ya foni';

  @override
  String get pleaseEnterPhoneNumber => 'Chonde lembani nambala yanu ya foni';

  @override
  String get pleaseEnterVerificationCode =>
      'Chonde lembani kachidindo ka kutsimikizira';

  @override
  String get createProfile => 'Pangani Mbiri Yanu';

  @override
  String get tellUsAboutYourself => 'Tiuzeni za inu';

  @override
  String get profileSetupDescription =>
      'Zidziwitso izi zimatithandiza kulumikizana ndi anansi omwe akufuna thandizo';

  @override
  String get addPhotoOptional => 'Ikani chithunzi (osankha)';

  @override
  String get fullNameLabel => 'Dzina Lonse *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Malo Mukukhala *';

  @override
  String get homeAddressHint => '123 Main St, Chipinda 4B';

  @override
  String get homeAddressHelper =>
      'Chigwirizanochi ndi chopezera anthu apafupi okha';

  @override
  String get ageOptionalLabel => 'Zaka (osankha)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Anthu azaka 70 kupitirira amatha kukhazikitsa nthawi yodonthedwa';

  @override
  String get yourPrivacyMatters => 'Zinsinsi zanu ndizofunikira';

  @override
  String get privacyNotice =>
      'Malo anu amafunsidwa nthawi ya zidziwitso za mwadzidzidzi ndipo samasungidwa kwanthawi yaitali.';

  @override
  String get continueButton => 'Pitirizani';

  @override
  String get pleaseFillRequiredFields => 'Chonde dzazani gawo lonse lofunikira';

  @override
  String get home => 'Nyumba';

  @override
  String get alerts => 'Zidziwitso';

  @override
  String get profile => 'Mbiri';

  @override
  String get availableToRespond => 'Ndili Wokonzeka Kuthandiza';

  @override
  String get notAvailable => 'Sindingathe';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Mudzalandira zidziwitso za mwadzidzidzi pafupi';

  @override
  String get toggleOnWhenReady => 'Yatsegulani mukakhala okonzeka kuthandiza';

  @override
  String get youreNowAvailable => 'Tsopano ndinu okonzeka kuthandiza';

  @override
  String get youWontReceiveAlerts => 'Simudzalandira zidziwitso';

  @override
  String get lifeThreatening247Info =>
      'Zidziwitso za kupha zidzakudziwitsani masiku onse ndi usiku wonse. Zidziwitso zosaukira zimalemekeza ndondomeko yanu.';

  @override
  String get requestHelp => 'PEMPHANÍ THANDIZO';

  @override
  String get yourImpact => 'Thandizo Lanu';

  @override
  String get responses => 'Mayankho';

  @override
  String get avgTime => 'Nthawi Yapakati';

  @override
  String get yourCapabilities => 'Luso Lanu';

  @override
  String get edit => 'Sinthani';

  @override
  String get communityNetwork => 'Gulu la Anthu';

  @override
  String get nearbyResponders => 'Othandiza Apafupi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count alipo';
  }

  @override
  String get coverageRadius => 'Utali wa Kuthandizira';

  @override
  String coverageRadiusValue(String distance) {
    return 'Makilomita $distance';
  }

  @override
  String get activeAlerts => 'Zidziwitso Zomwe Zikugwira Ntchito';

  @override
  String get none => 'Palibe';

  @override
  String get yourLocation => 'Malo Anu';

  @override
  String get whatDoYouNeedHelpWith => 'Mukufuna thandizo la chani?';

  @override
  String get additionalDetailsOptional => 'Zina Zowonjezera (osankha)';

  @override
  String get describeSituation => 'Fotokozani momwe zinthu ziliri...';

  @override
  String get alertTrustedRespondersFirst =>
      'Dziwitsani othandiza anga okhulupirira oyamba';

  @override
  String get trustedRespondersDescription =>
      'Abwenzi/achibale anu osankhidwa adzadziwitsidwa anthu ena asanadziwitsidwe';

  @override
  String sendingAlert(String emergencyType) {
    return 'Tikutumiza chidziwitso: $emergencyType';
  }

  @override
  String get sendAlertNow => 'TUMIZANI CHIDZIWITSO TSOPANO';

  @override
  String get pleaseSelectEmergencyType =>
      'Chonde sankhani mtundu wa mwadzidzidzi';

  @override
  String get categoryLifeThreatening => '🔴 Zopha';

  @override
  String get categorySecuritySafety => '🟠 Chitetezo/Kusalama';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Chofunikira Mwachangu';

  @override
  String get categoryNonLifeThreatening => '🟢 Zosapha';

  @override
  String get emergencyCprCardiacName => 'CPR / Mtima Woimira';

  @override
  String get emergencyCprCardiacDesc => 'Munthu sagwirizana ndipo sakupuma';

  @override
  String get emergencyAedName => 'Kubweretsa AED';

  @override
  String get emergencyAedDesc => 'Tikufuna AED mwachangu';

  @override
  String get emergencyOverdoseName => 'Kudya Mankhwala Ambiri / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Tikukayikira kuti wadya mankhwala ambiri, tikufuna naloxone';

  @override
  String get emergencyChokingName => 'Kudzimira / Heimlich';

  @override
  String get emergencyChokingDesc => 'Munthu akudzimira ndipo sangathe kupuma';

  @override
  String get emergencyFireName => 'Moto / Kuthawa';

  @override
  String get emergencyFireDesc =>
      'Mwadzidzidzi wa moto, tikufuna thandizo lothawa';

  @override
  String get emergencyConsentName =>
      'Mwadzidzidzi wa Chilolezo m\'Chipinda Chogonamo';

  @override
  String get emergencyConsentDesc =>
      'Mawu othetsa chiganizo ananenedwa, tikufuna mboni';

  @override
  String get emergencyBystanderName => 'Mboni Yothandiza';

  @override
  String get emergencyBystanderDesc =>
      'Tikufuna kupezeka kuti tichepetse mikangano';

  @override
  String get emergencyMissingPetName => 'Nyama Yosowa';

  @override
  String get emergencyMissingPetDesc =>
      'Nyama yatayika kapena yathawa, tikufuna anthu akusaka';

  @override
  String get emergencyWellnessCheckName => 'Kuyesa Thanzi';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kuyesa munthu amene angakhale akufuna thandizo';

  @override
  String get emergencyQuitCompanionName => 'Bwenzi Losiya';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ndikulimbana ndi chikhumbo, ndikufuna chithandizo';

  @override
  String get emergencyCompanionshipName => 'Ubwenzi';

  @override
  String get emergencyCompanionshipDesc =>
      'Ndikumva wokha kapena wolekanitsidwa';

  @override
  String get emergency911CoordinationName => 'Kugwirizanitsa ma 911';

  @override
  String get emergency911CoordinationDesc =>
      'Tikufuna thandizo kuyimbira ndi kugwirizanitsa ma 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Luso Langa';

  @override
  String capabilitiesSelected(int count) {
    return '$count zasankhidwa';
  }

  @override
  String get alertSchedule => 'Dongosolo la Zidziwitso';

  @override
  String get setAvailabilityHours => 'Khazikitsani maola anu opezeka';

  @override
  String get trustedResponders => 'Othandiza Okhulupirira';

  @override
  String get responseHistory => 'Mbiri ya Mayankho';

  @override
  String get privacyAndSafety => 'Zinsinsi ndi Chitetezo';

  @override
  String get helpAndSupport => 'Thandizo ndi Chithandizo';

  @override
  String get aboutNayborSos => 'Za Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Malamulo ndi Ndondomeko ya Zinsinsi';

  @override
  String get signOut => 'Tulukani';

  @override
  String version(String version) {
    return 'Mtundu $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS imalumikiza anansi pa nthawi ya zidziwitso za mwadzidzidzi, ikupanga gulu la othandiza mwachangu omwe angapereke thandizo lofunikira asanafike othandiza akatswiri.';

  @override
  String get aboutDialogContent2 =>
      'Aliyense atha kukhala ngwazi. Simukufuna maphunziro apadera kuti mupulumutse moyo. Nthawi zina thandizo lamphamvu kwambiri ndi kungofikako.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Tsekani';

  @override
  String get signOutQuestion => 'Kutuluka?';

  @override
  String get signOutConfirm => 'Kodi mukutsimikiza kuti mukufuna kutuluka?';

  @override
  String get cancel => 'Lekani';

  @override
  String get signedOutSuccessfully => 'Mwatuluka bwino';

  @override
  String get settings => 'Zosintha';

  @override
  String get capabilityWellnessCheck => 'Kuyesa Thanzi';

  @override
  String get capabilityQuitCompanion => 'Bwenzi Losiya';

  @override
  String get capabilityActiveBystander => 'Mboni Yothandiza';

  @override
  String get translationTier1Label =>
      'Kumasulira kwa AI Kokhulupirira Kwambiri';

  @override
  String get translationTier2Label => 'Kumasulira kwa AI Kokhulupirira Bwino';

  @override
  String get translationTier3Label =>
      'Kumasulira kwa AI Kokhulupirira Pang\'ono';

  @override
  String get translationTier4Label => 'Kumasulira kwa AI Kokhulupirira Kochepa';

  @override
  String get translationTier1Notice =>
      'Kumasulirani kopangidwa ndi AI ndi kudalira kwakukulu. Kuwunika kwa akatswiri kumalimbikitsidwa kugwiritsira ntchito.';

  @override
  String get translationTier2Notice =>
      'Kumasulirani kopangidwa ndi AI ndi kudalira kwabwino. Kuwunika kwa akatswiri kumalimbikitsidwa pa mawu ofunikira a chilolezo ndi mwadzidzidzi.';

  @override
  String get translationTier3Notice =>
      '⚠️ Kumasulirani kumafuna kuwunikidwa ndi munthu pa mawu ofunikira a mwadzidzidzi asanagwiritsidwe ntchito.';

  @override
  String get translationTier4Notice =>
      '⚠️ Uku ndi kumasulira koyesa kokha. Kumasulira kwa akatswiri kumafunikira asanagwiritsidwe ntchito.';

  @override
  String get selectLanguage => 'Sankhani Chilankhulo';

  @override
  String get searchLanguagesHint => 'Sakani zilankhulo';

  @override
  String translationQualityLabel(String quality) {
    return 'Ubwino wa Kumasulira: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Thandizani kukonza kumasulira - nenani mavuto kapena perekani kumasulira kwabwinoko!';
}
