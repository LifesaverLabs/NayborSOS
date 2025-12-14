// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Wolof (`wo`).
class AppLocalizationsWo extends AppLocalizations {
  AppLocalizationsWo([String locale = 'wo']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Jëfandikukat yu bees yi ak jigéen yi';

  @override
  String get signUpToHelp => 'Bind ngir di dimbalilu sa mbokk mi';

  @override
  String get enterPhoneNumber => 'Dugal sa nimero telefon ngir tambali';

  @override
  String get phoneNumberLabel => 'Nimero Telefon';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Yónne kodu tàbbante bi';

  @override
  String get enterVerificationCode => 'Dugal kodu tàbbante bi';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Yónnal na kodu ci $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kodu Tàbbante';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Tàbbante te Kontine';

  @override
  String get changePhoneNumber => 'Soppi nimero telefon';

  @override
  String get pleaseEnterPhoneNumber => 'Dugal sa nimero telefon';

  @override
  String get pleaseEnterVerificationCode => 'Dugal kodu tàbbante bi';

  @override
  String get createProfile => 'Sos profil';

  @override
  String get tellUsAboutYourself => 'Waxal nu fi yow';

  @override
  String get profileSetupDescription =>
      'Xëtu-xëtu yi di na nu dim ak mbokk yi ñu soxla dimbalante';

  @override
  String get addPhotoOptional => 'Yokk nataal (su bëggee)';

  @override
  String get fullNameLabel => 'Tur gi lépp *';

  @override
  String get fullNameHint => 'Ousmane Diop';

  @override
  String get homeAddressLabel => 'Adres gi ci kër *';

  @override
  String get homeAddressHint => '123 Mbedd bu Mag, Apt 4B';

  @override
  String get homeAddressHelper => 'Jëfandikoo rekk ngir xarale ci bendoo';

  @override
  String get ageOptionalLabel => 'Yoon (su bëggee)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Yoon yi 70+ mën na doxal waxtu tànk yi';

  @override
  String get yourPrivacyMatters => 'Sa sutura dafa wëy';

  @override
  String get privacyNotice =>
      'Sa bees bi di ñaan rekk ci waxtu yu am yàqu-yàqu te dut nataal ci diir bu sore.';

  @override
  String get continueButton => 'Kontine';

  @override
  String get pleaseFillRequiredFields => 'Feesal loxo yi ñu laaj';

  @override
  String get home => 'Kër';

  @override
  String get alerts => 'Yéenekaay';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Am ci ngir jaabante';

  @override
  String get notAvailable => 'Amul';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Dinaa am yéenekaay yu yàqu-yàqu yu jëgesi bendoo';

  @override
  String get toggleOnWhenReady => 'Ubbeeku su pare ngir dimbalante';

  @override
  String get youreNowAvailable => 'Leegi am nga ci ngir jaabante';

  @override
  String get youWontReceiveAlerts => 'Du leen am yéenekaay';

  @override
  String get lifeThreatening247Info =>
      'Yéenekaay yu mën fa bàyyi cuddu dinañu ko yéenekaat bësu ak fan 24/7. Yéenekaay yu mucc dina naan sa waxtu.';

  @override
  String get requestHelp => 'ÑAAN DIMBALANTE';

  @override
  String get yourImpact => 'Sa jafe';

  @override
  String get responses => 'Jaabi';

  @override
  String get avgTime => 'Waxtu Yëkëti';

  @override
  String get yourCapabilities => 'Sa xam-xam';

  @override
  String get edit => 'Soppi';

  @override
  String get communityNetwork => 'Réeso mbindéef mi';

  @override
  String get nearbyResponders => 'Jaabaykatu jëgesi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count am na';
  }

  @override
  String get coverageRadius => 'Radius mu gis';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mille';
  }

  @override
  String get activeAlerts => 'Yéenekaay yu fécc';

  @override
  String get none => 'Dara';

  @override
  String get yourLocation => 'Sa bees';

  @override
  String get whatDoYouNeedHelpWith => 'Lu nga bëgg dimbalante?';

  @override
  String get additionalDetailsOptional => 'Deetaay yu ci yokk (su bëggee)';

  @override
  String get describeSituation => 'Làññ xëy si...';

  @override
  String get alertTrustedRespondersFirst =>
      'Yéenekaat sama jaabaykatu yu maa jëm ba njëkk';

  @override
  String get trustedRespondersDescription =>
      'Sa xarit ak sa mbokk ñu fii dinañu ko xamante ba ci mbindéef mi';

  @override
  String sendingAlert(String emergencyType) {
    return 'Yónnante yéenekaay: $emergencyType';
  }

  @override
  String get sendAlertNow => 'YÓNNE YÉENEKAAY LEEGI';

  @override
  String get pleaseSelectEmergencyType => 'Tann benn xeetu yàqu-yàqu';

  @override
  String get categoryLifeThreatening => '🔴 Yàqu-yàqu bu mën fa bàyyi cuddu';

  @override
  String get categorySecuritySafety => '🟠 Këru-kaw';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Yàqu-yàqu bu yagg bu am waxtu';

  @override
  String get categoryNonLifeThreatening => '🟢 Yàqu-yàqu bu mucc';

  @override
  String get emergencyCprCardiacName => 'CPR / Bët bu xol';

  @override
  String get emergencyCprCardiacDesc => 'Kii du jaabi te du neelaw';

  @override
  String get emergencyAedName => 'Yóbbu AED';

  @override
  String get emergencyAedDesc => 'Bëgg AED ci diis yi';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxone';

  @override
  String get emergencyOverdoseDesc => 'Overdose bu tuuti, bëgg naloxone';

  @override
  String get emergencyChokingName => 'Topp / Heimlich';

  @override
  String get emergencyChokingDesc => 'Kii dafa topp te mënul neelaw';

  @override
  String get emergencyFireName => 'Safar / Génn';

  @override
  String get emergencyFireDesc =>
      'Yàqu-yàqu bu safar, bëgg dimbalante ngir génn';

  @override
  String get emergencyConsentName => 'Yàqu-yàqu bu mbindam ci nag';

  @override
  String get emergencyConsentDesc => 'Wees bu këru la wax, bëgg gëstukatu';

  @override
  String get emergencyBystanderName => 'Gëstukatu yu fécc';

  @override
  String get emergencyBystanderDesc => 'Bëgg am ngir wàññi fit';

  @override
  String get emergencyMissingPetName => 'Rab bu reer';

  @override
  String get emergencyMissingPetDesc =>
      'Rab bi reer na walla di jaaw, bëgg àndakatukay';

  @override
  String get emergencyWellnessCheckName => 'Toppante werante';

  @override
  String get emergencyWellnessCheckDesc =>
      'Toppante ku mën na mënul dimbalante';

  @override
  String get emergencyQuitCompanionName => 'Xarit bu yëgle';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ngi fit ak fitnaan, bëgg ndimbalante';

  @override
  String get emergencyCompanionshipName => 'Mbooloom';

  @override
  String get emergencyCompanionshipDesc => 'Dama soxla mbooloom';

  @override
  String get emergency911CoordinationName => 'Yeggante 911';

  @override
  String get emergency911CoordinationDesc =>
      'Bëgg dimbalante ngir woo te yeggante 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Sama xam-xam';

  @override
  String capabilitiesSelected(int count) {
    return '$count tann na';
  }

  @override
  String get alertSchedule => 'Waxtu yéenekaay';

  @override
  String get setAvailabilityHours => 'Doxal sa waxtu am';

  @override
  String get trustedResponders => 'Jaabaykatu yu maa jëm';

  @override
  String get responseHistory => 'Jaar bu jaabi';

  @override
  String get privacyAndSafety => 'Sutura ak këru-kaw';

  @override
  String get helpAndSupport => 'Dimbalante ak ndimbalante';

  @override
  String get aboutNayborSos => 'Ci Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Sarax ak politiik sutura';

  @override
  String get signOut => 'Génn';

  @override
  String version(String version) {
    return 'Modél $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS dinaa jëfandi mbokk yi ci yàqu-yàqu, sos benn réeso jaabaykatu yu gaaw ñu mën di jox dimbalante bu baax ba ñu gisee jëfandikukat ñi dëgg.';

  @override
  String get aboutDialogContent2 =>
      'Ku nekk mën na doon Hero. War nga am formation bu taax ngir reykat kenn. Dina yàgg ba reer ngir teddoo ci bees bi.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Tëj';

  @override
  String get signOutQuestion => 'Génn?';

  @override
  String get signOutConfirm => 'Xëy nga bëgg génn?';

  @override
  String get cancel => 'Wuutu';

  @override
  String get signedOutSuccessfully => 'Génn ci mbir';

  @override
  String get settings => 'Doxaliin';

  @override
  String get capabilityWellnessCheck => 'Toppante werante';

  @override
  String get capabilityQuitCompanion => 'Xarit bu yëgle';

  @override
  String get capabilityActiveBystander => 'Gëstukatu yu fécc';

  @override
  String get translationTier1Label => 'Tektal AI bu Jëm Lool';

  @override
  String get translationTier2Label => 'Tektal AI bu Baax';

  @override
  String get translationTier3Label => 'Tektal AI bu Digante';

  @override
  String get translationTier4Label => 'Tektal AI bu Mucc';

  @override
  String get translationTier1Notice =>
      'Tektal bii AI la defar ak jëm bu bees. Xoolkat jëfandikukat dafa ñu naan ngir jëfandikoo ci jafe.';

  @override
  String get translationTier2Notice =>
      'Tektal bii AI la defar ak jëm bu baax. Xoolkat jëfandikukat dafa ñu naan ngir ëmbit ak yàqu-yàqu yu wëy.';

  @override
  String get translationTier3Notice =>
      '⚠️ Tektal bii soxla xoolkat nit ba ngi jafe ngir waxtu yàqu-yàqu yu wëy.';

  @override
  String get translationTier4Notice =>
      '⚠️ Tektal bii dara taaytu la. Tektal jëfandikukat la naan ba ngi jëfandikoo.';

  @override
  String get selectLanguage => 'Tann làkk';

  @override
  String get searchLanguagesHint => 'Ceet làkk yi';

  @override
  String translationQualityLabel(String quality) {
    return 'Mbir tektal: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Dimbalal ngir ñi gëna tektal yi - waxal dëggu walla jox tektal yi gëna!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
