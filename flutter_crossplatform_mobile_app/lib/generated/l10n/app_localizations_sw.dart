// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Wajibu wa Kisasa wa Kutoa Msaada';

  @override
  String get signUpToHelp => 'Jiandikishe kuwasaidia majirani zako';

  @override
  String get enterPhoneNumber => 'Ingiza nambari yako ya simu kuanza';

  @override
  String get phoneNumberLabel => 'Nambari ya Simu';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Tuma Msimbo wa Uthibitisho';

  @override
  String get enterVerificationCode => 'Ingiza msimbo wa uthibitisho';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Tumetuma msimbo kwa $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Msimbo wa Uthibitisho';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Thibitisha na Endelea';

  @override
  String get changePhoneNumber => 'Badilisha nambari ya simu';

  @override
  String get pleaseEnterPhoneNumber => 'Tafadhali ingiza nambari yako ya simu';

  @override
  String get pleaseEnterVerificationCode =>
      'Tafadhali ingiza msimbo wa uthibitisho';

  @override
  String get createProfile => 'Unda Wasifu';

  @override
  String get tellUsAboutYourself => 'Tuambie kuhusu mwenyewe';

  @override
  String get profileSetupDescription =>
      'Habari hii inatusaidia kukuunganisha na majirani wanaohitaji msaada';

  @override
  String get addPhotoOptional => 'Ongeza picha (si lazima)';

  @override
  String get fullNameLabel => 'Jina Kamili *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Anwani ya Nyumbani *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'Inatumika kwa upatanishaji wa umbali tu';

  @override
  String get ageOptionalLabel => 'Umri (si lazima)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Umri wa miaka 70+ unaweza kuweka masaa ya tahadhari ya upole';

  @override
  String get yourPrivacyMatters => 'Faragha yako ni muhimu';

  @override
  String get privacyNotice =>
      'Mahali ulipo hunaulizwa tu wakati wa dharura zinazoendelea na hukuhifadhiwa kwa muda mrefu.';

  @override
  String get continueButton => 'Endelea';

  @override
  String get pleaseFillRequiredFields =>
      'Tafadhali jaza sehemu zote zinazohitajika';

  @override
  String get home => 'Nyumbani';

  @override
  String get alerts => 'Tahadhari';

  @override
  String get profile => 'Wasifu';

  @override
  String get availableToRespond => 'Uko Tayari Kujibu';

  @override
  String get notAvailable => 'Haupatikani';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Utapokea tahadhari za dharura karibu nawe';

  @override
  String get toggleOnWhenReady => 'Washa unapojiandaa kusaidia';

  @override
  String get youreNowAvailable => 'Sasa uko tayari kujibu';

  @override
  String get youWontReceiveAlerts => 'Hutapokea tahadhari';

  @override
  String get lifeThreatening247Info =>
      'Tahadhari za kuhatarisha maisha zitakutahadharisha siku zote. Tahadhari zisizo za haraka zinaheshimu ratiba yako.';

  @override
  String get requestHelp => 'OMBA MSAADA';

  @override
  String get yourImpact => 'Athari Yako';

  @override
  String get responses => 'Majibu';

  @override
  String get avgTime => 'Muda wa Wastani';

  @override
  String get yourCapabilities => 'Uwezo Wako';

  @override
  String get edit => 'Hariri';

  @override
  String get communityNetwork => 'Mtandao wa Jamii';

  @override
  String get nearbyResponders => 'Wajibu wa Karibu';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count wanapatikana';
  }

  @override
  String get coverageRadius => 'Eneo la Utendaji';

  @override
  String coverageRadiusValue(String distance) {
    return 'Maili $distance';
  }

  @override
  String get activeAlerts => 'Tahadhari Zinazoendelea';

  @override
  String get none => 'Hakuna';

  @override
  String get yourLocation => 'Mahali Ulipo';

  @override
  String get whatDoYouNeedHelpWith => 'Unahitaji msaada wa aina gani?';

  @override
  String get additionalDetailsOptional => 'Maelezo ya Ziada (si lazima)';

  @override
  String get describeSituation => 'Elezea hali...';

  @override
  String get alertTrustedRespondersFirst =>
      'Tahadharisha wajibu wangu wa kuaminika kwanza';

  @override
  String get trustedRespondersDescription =>
      'Marafiki/familia wako waliochaguliwa watataarifiwa kabla ya jamii kwa ujumla';

  @override
  String sendingAlert(String emergencyType) {
    return 'Inatuma tahadhari: $emergencyType';
  }

  @override
  String get sendAlertNow => 'TUMA TAHADHARI SASA';

  @override
  String get pleaseSelectEmergencyType => 'Tafadhali chagua aina ya dharura';

  @override
  String get categoryLifeThreatening => '🔴 Inahatarisha Maisha';

  @override
  String get categorySecuritySafety => '🟠 Usalama/Ulinzi';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Ya Haraka Inayohitaji Muda';

  @override
  String get categoryNonLifeThreatening => '🟢 Haihatarishi Maisha';

  @override
  String get emergencyCprCardiacName => 'CPR / Kushindwa kwa Moyo';

  @override
  String get emergencyCprCardiacDesc => 'Mtu hajibu na hapumui';

  @override
  String get emergencyAedName => 'Uwasilishaji wa AED';

  @override
  String get emergencyAedDesc => 'Ninahitaji AED mara moja';

  @override
  String get emergencyOverdoseName => 'Kupindukia kwa Dawa / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Inashukiwa kupindukia kwa dawa, ninahitaji naloxone';

  @override
  String get emergencyChokingName => 'Kunasa / Heimlich';

  @override
  String get emergencyChokingDesc => 'Mtu ananasa na hawezi kupumua';

  @override
  String get emergencyFireName => 'Moto / Uhamiaji';

  @override
  String get emergencyFireDesc =>
      'Dharura ya moto, ninahitaji msaada wa kuhamia';

  @override
  String get emergencyConsentName => 'Dharura ya Ridhaa Chumbani';

  @override
  String get emergencyConsentDesc =>
      'Neno la usalama limeita, ninahitaji shahidi';

  @override
  String get emergencyBystanderName => 'Shahidi Mzuri wa Kuingilia';

  @override
  String get emergencyBystanderDesc => 'Ninahitaji uwepo wa kupunguza mgogoro';

  @override
  String get emergencyMissingPetName => 'Mnyamapori Aliyepotea';

  @override
  String get emergencyMissingPetDesc =>
      'Mnyamapori amepotea au amekimbia, ninahitaji kikosi cha kutafuta';

  @override
  String get emergencyWellnessCheckName => 'Ukaguzi wa Ustawi';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kaguza mtu anayeweza kuhitaji msaada';

  @override
  String get emergencyQuitCompanionName => 'Mshirika wa Kuacha';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ninapambana na shauku, ninahitaji msaada';

  @override
  String get emergencyCompanionshipName => 'Ushirika';

  @override
  String get emergencyCompanionshipDesc =>
      'Ninajisikia peke yangu au nimetengwa';

  @override
  String get emergency911CoordinationName => 'Uratibu wa 911';

  @override
  String get emergency911CoordinationDesc =>
      'Ninahitaji msaada wa kupiga simu na kuratibu 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Uwezo Wangu';

  @override
  String capabilitiesSelected(int count) {
    return '$count zimechaguliwa';
  }

  @override
  String get alertSchedule => 'Ratiba ya Tahadhari';

  @override
  String get setAvailabilityHours => 'Weka masaa yako ya upatikanaji';

  @override
  String get trustedResponders => 'Wajibu wa Kuaminika';

  @override
  String get responseHistory => 'Historia ya Majibu';

  @override
  String get privacyAndSafety => 'Faragha na Usalama';

  @override
  String get helpAndSupport => 'Msaada na Usaidizi';

  @override
  String get aboutNayborSos => 'Kuhusu Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Masharti na Sera za Faragha';

  @override
  String get signOut => 'Ondoka';

  @override
  String version(String version) {
    return 'Toleo $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS inaunganisha majirani katika dharura, kujenga mtandao wa wajibu wa haraka wanaoweza kutoa msaada muhimu kabla ya wajibu wa kitaaluma kuwasili.';

  @override
  String get aboutDialogContent2 =>
      'Kila mtu anaweza kuwa shujaa. Huhitaji mafunzo maalum kuokoa maisha. Wakati mwingine uingiliaji mwenye nguvu zaidi ni tu kuhudhuria.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Funga';

  @override
  String get signOutQuestion => 'Ondoka?';

  @override
  String get signOutConfirm => 'Una uhakika unataka kuondoka?';

  @override
  String get cancel => 'Ghairi';

  @override
  String get signedOutSuccessfully => 'Umeondoka kwa mafanikio';

  @override
  String get settings => 'Mipangilio';

  @override
  String get capabilityWellnessCheck => 'Ukaguzi wa Ustawi';

  @override
  String get capabilityQuitCompanion => 'Mshirika wa Kuacha';

  @override
  String get capabilityActiveBystander => 'Mshahidi Mzuri';

  @override
  String get translationTier1Label => 'Tafsiri ya AI ya Uaminifu wa Juu';

  @override
  String get translationTier2Label => 'Tafsiri ya AI ya Uaminifu Mzuri';

  @override
  String get translationTier3Label => 'Tafsiri ya AI ya Uaminifu wa Kati';

  @override
  String get translationTier4Label => 'Tafsiri ya AI ya Uaminifu wa Chini';

  @override
  String get translationTier1Notice =>
      'Tafsiri hii imetengenezwa na AI kwa uaminifu wa juu. Ukaguzi wa kitaaluma unashauriwa kwa matumizi ya uzalishaji.';

  @override
  String get translationTier2Notice =>
      'Tafsiri hii imetengenezwa na AI kwa uaminifu mzuri. Ukaguzi wa kitaaluma unashauriwa kwa masharti ya usalama muhimu ya ridhaa na dharura.';

  @override
  String get translationTier3Notice =>
      '⚠️ Tafsiri hii inahitaji ukaguzi wa kibinadamu kwa maneno muhimu ya dharura ya usalama kabla ya matumizi ya uzalishaji.';

  @override
  String get translationTier4Notice =>
      '⚠️ Hii ni tafsiri ya muswada tu. Tafsiri ya kitaaluma inahitajika kabla ya matumizi ya uzalishaji.';

  @override
  String get selectLanguage => 'Chagua Lugha';

  @override
  String get searchLanguagesHint => 'Tafuta lugha';

  @override
  String translationQualityLabel(String quality) {
    return 'Ubora wa Tafsiri: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Saidia kuboresha tafsiri - ripoti matatizo au changia tafsiri bora zaidi!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
