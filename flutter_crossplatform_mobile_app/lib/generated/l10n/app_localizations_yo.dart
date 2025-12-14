// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yoruba (`yo`).
class AppLocalizationsYo extends AppLocalizations {
  AppLocalizationsYo([String locale = 'yo']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Awọn Jagunjagun Ode Oni';

  @override
  String get signUpToHelp => 'Forukọsilẹ lati ran awọn aladugbo rẹ lọwọ';

  @override
  String get enterPhoneNumber => 'Tẹ nọmba foonu rẹ sinu lati bẹrẹ';

  @override
  String get phoneNumberLabel => 'Nọmba Foonu';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Fi Koodu Ijẹrisi Ranṣẹ';

  @override
  String get enterVerificationCode => 'Tẹ koodu ijẹrisi sinu';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'A fi koodu ranṣẹ si $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Koodu Ijẹrisi';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Jẹrisi & Tẹsiwaju';

  @override
  String get changePhoneNumber => 'Yi nọmba foonu pada';

  @override
  String get pleaseEnterPhoneNumber => 'Jọwọ tẹ nọmba foonu rẹ sinu';

  @override
  String get pleaseEnterVerificationCode => 'Jọwọ tẹ koodu ijẹrisi naa sinu';

  @override
  String get createProfile => 'Ṣẹda Profaili';

  @override
  String get tellUsAboutYourself => 'Sọ fun wa nipa ararẹ';

  @override
  String get profileSetupDescription =>
      'Alaye yi n ran wa lọwọ lati so ọ pọ mọ awọn aladugbo ti o nilo iranlọwọ';

  @override
  String get addPhotoOptional => 'Fi foto kun (ti o ba fẹ)';

  @override
  String get fullNameLabel => 'Orukọ Ni Kikun *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Adiresi Ile *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'A lo fun isunmọ nikan';

  @override
  String get ageOptionalLabel => 'Ọjọ ori (ti o ba fẹ)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Awọn ti o tọ ọdun 70 le ṣeto awọn wakati itaniji rọra';

  @override
  String get yourPrivacyMatters => 'Aṣiri rẹ ṣe pataki';

  @override
  String get privacyNotice =>
      'A beere ipo rẹ nikan lakoko awọn pajawiri ti o wa lọwọ ati pe a ko fi pamọ fun igba pipẹ.';

  @override
  String get continueButton => 'Tẹsiwaju';

  @override
  String get pleaseFillRequiredFields => 'Jọwọ kun gbogbo awọn aaye ti a beere';

  @override
  String get home => 'Ile';

  @override
  String get alerts => 'Awọn Itaniji';

  @override
  String get profile => 'Profaili';

  @override
  String get availableToRespond => 'Wa Sile Lati Dahun';

  @override
  String get notAvailable => 'Ko Si Ni Sise';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Iwọ yoo gba awọn itaniji pajawiri ti o wa nitosi';

  @override
  String get toggleOnWhenReady => 'Tan nigbati o ti ṣetan lati ran lọwọ';

  @override
  String get youreNowAvailable => 'O ti wa sile bayi lati dahun';

  @override
  String get youWontReceiveAlerts => 'Iwọ ko ni gba awọn itaniji';

  @override
  String get lifeThreatening247Info =>
      'Awọn itaniji ti o le pa eniyan yoo sọ fun ọ ni gbogbo ọjọ. Awọn itaniji ti ko kankiri yoo bọwọ fun akoko rẹ.';

  @override
  String get requestHelp => 'BEERE IRANLỌWỌ';

  @override
  String get yourImpact => 'Ipa Rẹ';

  @override
  String get responses => 'Awọn Idahun';

  @override
  String get avgTime => 'Akoko Apapọ';

  @override
  String get yourCapabilities => 'Awọn Agbara Rẹ';

  @override
  String get edit => 'Ṣatunṣe';

  @override
  String get communityNetwork => 'Nẹtiwọọki Agbegbe';

  @override
  String get nearbyResponders => 'Awọn Oluidahun Nitosi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count wa sile';
  }

  @override
  String get coverageRadius => 'Agbegbe Idabobo';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance maili';
  }

  @override
  String get activeAlerts => 'Awọn Itaniji Ti O Wa Lọwọ';

  @override
  String get none => 'Ko si';

  @override
  String get yourLocation => 'Ipo Rẹ';

  @override
  String get whatDoYouNeedHelpWith => 'Kini o nilo iranlọwọ fun?';

  @override
  String get additionalDetailsOptional => 'Awọn Alaye Afikun (ti o ba fẹ)';

  @override
  String get describeSituation => 'Ṣapejuwe ipo naa...';

  @override
  String get alertTrustedRespondersFirst =>
      'Sọ fun awọn oluidahun ti mo gbẹkẹle ni akọkọ';

  @override
  String get trustedRespondersDescription =>
      'Awọn ọrẹ/ebi ti o yan yoo gba ifitonileti ṣaaju agbegbe gbogbogbo';

  @override
  String sendingAlert(String emergencyType) {
    return 'Nfi itaniji ranṣẹ: $emergencyType';
  }

  @override
  String get sendAlertNow => 'FI ITANIJI RANṢẸ BAYI';

  @override
  String get pleaseSelectEmergencyType => 'Jọwọ yan iru pajawiri';

  @override
  String get categoryLifeThreatening => '🔴 Ti O Le Pa Eniyan';

  @override
  String get categorySecuritySafety => '🟠 Aabo/Ailewu';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Kiakia Ti O Ni Akoko';

  @override
  String get categoryNonLifeThreatening => '🟢 Ti Ko Le Pa Eniyan';

  @override
  String get emergencyCprCardiacName => 'CPR / Ọkan Ti O Duro';

  @override
  String get emergencyCprCardiacDesc => 'Eniyan ko ni idahun ati pe ko simi';

  @override
  String get emergencyAedName => 'Ifijiṣẹ AED';

  @override
  String get emergencyAedDesc => 'Nilo AED lẹsẹkẹsẹ';

  @override
  String get emergencyOverdoseName => 'Lilo Oogun Apọju / Naloxone';

  @override
  String get emergencyOverdoseDesc => 'Ifura lilo oogun apọju, nilo naloxone';

  @override
  String get emergencyChokingName => 'Afọnkọ / Heimlich';

  @override
  String get emergencyChokingDesc => 'Eniyan nfọnkọ ati pe ko le simi';

  @override
  String get emergencyFireName => 'Ina / Sisọ Kuro';

  @override
  String get emergencyFireDesc => 'Pajawiri ina, nilo iranlọwọ sisọ kuro';

  @override
  String get emergencyConsentName => 'Pajawiri Ifọnsi Iyara';

  @override
  String get emergencyConsentDesc => 'Ọrọ aabo ni a pe, nilo ẹlẹri';

  @override
  String get emergencyBystanderName => 'Ẹlẹri Oluranlọwọ Ti O Wa';

  @override
  String get emergencyBystanderDesc => 'Nilo wiwa lati dinku ija';

  @override
  String get emergencyMissingPetName => 'Ẹranko Ile Ti O Nu';

  @override
  String get emergencyMissingPetDesc =>
      'Ẹranko ti nu tabi salọ, nilo ẹgbẹ wiwa';

  @override
  String get emergencyWellnessCheckName => 'Ayẹwo Ilera';

  @override
  String get emergencyWellnessCheckDesc =>
      'Ṣayẹwo ẹnikan ti o le nilo iranlọwọ';

  @override
  String get emergencyQuitCompanionName => 'Ẹlẹgbẹ Idasilẹ';

  @override
  String get emergencyQuitCompanionDesc =>
      'Nija pẹlu ero buruku, nilo atilẹyin';

  @override
  String get emergencyCompanionshipName => 'Ẹlẹgbẹ';

  @override
  String get emergencyCompanionshipDesc => 'Niro adawa tabi isọtọ';

  @override
  String get emergency911CoordinationName => 'Isọpọ 911';

  @override
  String get emergency911CoordinationDesc =>
      'Nilo iranlọwọ lati pe ati isọpọ awọn eto pajawiri';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Awọn Agbara Mi';

  @override
  String capabilitiesSelected(int count) {
    return '$count ti a yan';
  }

  @override
  String get alertSchedule => 'Eto Itaniji';

  @override
  String get setAvailabilityHours => 'Ṣeto awọn wakati wiwa rẹ';

  @override
  String get trustedResponders => 'Awọn Oluidahun Ti A Gbẹkẹle';

  @override
  String get responseHistory => 'Itan Idahun';

  @override
  String get privacyAndSafety => 'Aṣiri & Ailewu';

  @override
  String get helpAndSupport => 'Iranlọwọ & Atilẹyin';

  @override
  String get aboutNayborSos => 'Nipa Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Awọn Ofin & Eto Aṣiri';

  @override
  String get signOut => 'Jade';

  @override
  String version(String version) {
    return 'Ẹya $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS so awọn aladugbo pọ ninu awọn pajawiri, ti nṣẹda nẹtiwọọki awọn oluidahun iyara ti o le pese iranlọwọ pataki ṣaaju ki awọn oluidahun akọkọ alamọdaju de.';

  @override
  String get aboutDialogContent2 =>
      'Gbogbo eniyan le jẹ akọni. Iwọ ko nilo ẹkọ pataki lati gba ẹmi eniyan la. Nigbakan idasi ti o lagbara julọ ni lilo farabalẹ jade.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Pa';

  @override
  String get signOutQuestion => 'Jade?';

  @override
  String get signOutConfirm => 'Ṣe o da ọ loju pe o fẹ jade?';

  @override
  String get cancel => 'Fagilee';

  @override
  String get signedOutSuccessfully => 'O ti jade ni aṣeyọri';

  @override
  String get settings => 'Awọn Eto';

  @override
  String get capabilityWellnessCheck => 'Ayẹwo Ilera';

  @override
  String get capabilityQuitCompanion => 'Ẹlẹgbẹ Idasilẹ';

  @override
  String get capabilityActiveBystander => 'Ẹlẹri Oluranlọwọ';

  @override
  String get translationTier1Label => 'Itumọ AI Ti O Ni Igboya Giga';

  @override
  String get translationTier2Label => 'Itumọ AI Ti O Ni Igboya To Dara';

  @override
  String get translationTier3Label => 'Itumọ AI Ti O Ni Igboya Aarin';

  @override
  String get translationTier4Label => 'Itumọ AI Ti O Ni Igboya Kekere';

  @override
  String get translationTier1Notice =>
      'Itumọ yi ni AI ṣe pẹlu igboya giga. A gba ayẹwo alamọdaju niyanju fun lilo iṣelọpọ.';

  @override
  String get translationTier2Notice =>
      'Itumọ yi ni AI ṣe pẹlu igboya to dara. A gba ayẹwo alamọdaju niyanju fun awọn ọrọ ifọnsi ati pajawiri ti o ni ewu.';

  @override
  String get translationTier3Notice =>
      '⚠️ Itumọ yi nilo ayẹwo eniyan fun awọn gbolohun pajawiri ti o ni ewu ṣaaju lilo iṣelọpọ.';

  @override
  String get translationTier4Notice =>
      '⚠️ Eyi jẹ itumọ apẹrẹ nikan. A nilo itumọ alamọdaju ṣaaju lilo iṣelọpọ.';

  @override
  String get selectLanguage => 'Yan Ede';

  @override
  String get searchLanguagesHint => 'Wa awọn ede';

  @override
  String translationQualityLabel(String quality) {
    return 'Didara Itumọ: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ran wa lọwọ lati mu awọn itumọ dara si - ṣe ijabọ awọn ọran tabi ṣe alabapin awọn itumọ ti o dara julọ!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
