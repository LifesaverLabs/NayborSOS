// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oromo (`om`).
class AppLocalizationsOm extends AppLocalizations {
  AppLocalizationsOm([String locale = 'om']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Yeroo Ammaa Gargaartoota Daqiiqaa';

  @override
  String get signUpToHelp => 'Olloota kee gargaaruuf galmaa\'i';

  @override
  String get enterPhoneNumber => 'Jalqabuuf lakkoofsa bilbilaa keetii galchi';

  @override
  String get phoneNumberLabel => 'Lakkoofsa Bilbilaa';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Koodii Mirkaneessaa Ergi';

  @override
  String get enterVerificationCode => 'Koodii mirkaneessaa galchi';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Koodii gara ${phoneNumber}tti ergine';
  }

  @override
  String get verificationCodeLabel => 'Koodii Mirkaneessaa';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Mirkanee\'ii Itti Fufi';

  @override
  String get changePhoneNumber => 'Lakkoofsa bilbilaa jijjiiri';

  @override
  String get pleaseEnterPhoneNumber =>
      'Maaloo lakkoofsa bilbilaa keetii galchi';

  @override
  String get pleaseEnterVerificationCode => 'Maaloo koodii mirkaneessaa galchi';

  @override
  String get createProfile => 'Seenaa Dhuunfaa Uumi';

  @override
  String get tellUsAboutYourself => 'Waa\'ee keetii nutti himi';

  @override
  String get profileSetupDescription =>
      'Odeeffannoon kun olloota gargaarsa barbaadan waliin si qunnamsiisuu keenya gargaara';

  @override
  String get addPhotoOptional => 'Suuraa dabali (dirqama miti)';

  @override
  String get fullNameLabel => 'Maqaa Guutuu *';

  @override
  String get fullNameHint => 'Jaawaar Mohaammad';

  @override
  String get homeAddressLabel => 'Teessoo Manaa *';

  @override
  String get homeAddressHint => 'Daandii Guddoo 123, Kutaa 4B';

  @override
  String get homeAddressHelper =>
      'Dhiyeenyummaa madaaluuf qofa kan itti fayyadaman';

  @override
  String get ageOptionalLabel => 'Umurii (dirqama miti)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Umuriin 70 oli ta\'an sa\'aatii akeekkachiisaa lallaafaa kaa\'uu danda\'u';

  @override
  String get yourPrivacyMatters => 'Dhuunfummaan kee barbaachisaa dha';

  @override
  String get privacyNotice =>
      'Bakki ati jirtu yeroo balaan jiru qofa gaafatama malee yeroo dheeraa hin kuufamu.';

  @override
  String get continueButton => 'Itti Fufi';

  @override
  String get pleaseFillRequiredFields =>
      'Maaloo dirree barbaachisoo hunda guuti';

  @override
  String get home => 'Mana';

  @override
  String get alerts => 'Akeekkachiisa';

  @override
  String get profile => 'Seenaa Dhuunfaa';

  @override
  String get availableToRespond => 'Deebii Kennuuf Qophaa\'e';

  @override
  String get notAvailable => 'Hin Argamu';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Akeekkachiisa hatattamaa naannoo keetii argatta';

  @override
  String get toggleOnWhenReady => 'Gargaaruuf qophaa\'etti banaa';

  @override
  String get youreNowAvailable => 'Amma deebii kennuuf qophaa\'eerta';

  @override
  String get youWontReceiveAlerts => 'Akeekkachiisa hin argattu';

  @override
  String get lifeThreatening247Info =>
      'Akeekkachiisni jireenya balleessu sa\'aatii 24/7 si beeksisa. Akeekkachiisni ariifachiisaa hin taane sagantaa kee kabaja.';

  @override
  String get requestHelp => 'GARGAARSA GAAFADHU';

  @override
  String get yourImpact => 'Dhiibbaa Keetii';

  @override
  String get responses => 'Deebii';

  @override
  String get avgTime => 'Yeroo Giddugaleessaa';

  @override
  String get yourCapabilities => 'Dandeettii Keetii';

  @override
  String get edit => 'Gulaal';

  @override
  String get communityNetwork => 'Neetworkii Hawaasaa';

  @override
  String get nearbyResponders => 'Deebistoota Naannoo';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count argaman';
  }

  @override
  String get coverageRadius => 'Daangaa Haguuguu';

  @override
  String coverageRadiusValue(String distance) {
    return 'Maayilii $distance';
  }

  @override
  String get activeAlerts => 'Akeekkachiisa Ka\'aa Jiran';

  @override
  String get none => 'Homaa';

  @override
  String get yourLocation => 'Bakka Ati Jirtu';

  @override
  String get whatDoYouNeedHelpWith => 'Maal irratti gargaarsa barbaadda?';

  @override
  String get additionalDetailsOptional => 'Bal\'ina Dabalataa (dirqama miti)';

  @override
  String get describeSituation => 'Haala sana ibsi...';

  @override
  String get alertTrustedRespondersFirst =>
      'Deebistoota amanaman koo jalqaba akeekkachiisi';

  @override
  String get trustedRespondersDescription =>
      'Hiriyyoota/maatiin kee filattan dura hawaasa waliigalaa hin beeksisin';

  @override
  String sendingAlert(String emergencyType) {
    return 'Akeekkachiisa ergaa jiru: $emergencyType';
  }

  @override
  String get sendAlertNow => 'AMMA AKEEKKACHIISA ERGI';

  @override
  String get pleaseSelectEmergencyType => 'Maaloo gosa hatattamaa fili';

  @override
  String get categoryLifeThreatening => '🔴 Jireenya Balleessu';

  @override
  String get categorySecuritySafety => '🟠 Nageenyaa/Ittisaa';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Ariifachiisaa Yeroo Murteessaa';

  @override
  String get categoryNonLifeThreatening => '🟢 Jireenya Hin Balleessin';

  @override
  String get emergencyCprCardiacName => 'CPR / Dhaabbata Onnee';

  @override
  String get emergencyCprCardiacDesc =>
      'Namichi deebii hin kennu fi hafuuraa baafachuu hin danda\'u';

  @override
  String get emergencyAedName => 'AED Dhiheessuu';

  @override
  String get emergencyAedDesc => 'AED battalumatti barbaachisa';

  @override
  String get emergencyOverdoseName => 'Maaddii Garmalee / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Maaddii garmalee shakkaman, naloxone barbaachisa';

  @override
  String get emergencyChokingName => 'Hudhaa / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Namichi hudhaadhaan hafuuraa baafachuu hin danda\'u';

  @override
  String get emergencyFireName => 'Ibidda / Ba\'uu';

  @override
  String get emergencyFireDesc =>
      'Balaa ibiddaa, gargaarsa ba\'iinsaaf barbaachisa';

  @override
  String get emergencyConsentName => 'Balaa Eeyyama Kutaa Hirriba';

  @override
  String get emergencyConsentDesc =>
      'Jecha ittisaa dubbatame, ragaa barbaachisa';

  @override
  String get emergencyBystanderName => 'Ragaa Ilaalchisaa Ka\'aa';

  @override
  String get emergencyBystanderDesc =>
      'Waldhabdee gad-buusuuf argamuu barbaachisa';

  @override
  String get emergencyMissingPetName => 'Bineensa Manaa Bade';

  @override
  String get emergencyMissingPetDesc =>
      'Bineensni manaa badee ykn baqatee, garee barbaacha barbaachisa';

  @override
  String get emergencyWellnessCheckName => 'Qorannoo Fayyaa';

  @override
  String get emergencyWellnessCheckDesc =>
      'Nama gargaarsa barbaachisuu danda\'u irratti qorannoo godhuu';

  @override
  String get emergencyQuitCompanionName => 'Hiriyaa Dhiisuu';

  @override
  String get emergencyQuitCompanionDesc =>
      'Hawwii hamaa waliin lolaa jira, deeggarsa barbaachisa';

  @override
  String get emergencyCompanionshipName => 'Hiriyummaa';

  @override
  String get emergencyCompanionshipDesc =>
      'Kophummaa ykn kophaatti hafuu dhaga\'amaa jira';

  @override
  String get emergency911CoordinationName => 'Qindoomina 911';

  @override
  String get emergency911CoordinationDesc =>
      '911 bilbiluu fi qindoomina gargaarsa barbaachisa';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Dandeettii Koo';

  @override
  String capabilitiesSelected(int count) {
    return '$count filataman';
  }

  @override
  String get alertSchedule => 'Sagantaa Akeekkachiisaa';

  @override
  String get setAvailabilityHours => 'Sa\'aatii argamuu keetii kaa\'i';

  @override
  String get trustedResponders => 'Deebistota Amanaman';

  @override
  String get responseHistory => 'Seenaa Deebii';

  @override
  String get privacyAndSafety => 'Dhuunfummaa fi Nageenyaa';

  @override
  String get helpAndSupport => 'Gargaarsa fi Deeggarsa';

  @override
  String get aboutNayborSos => 'Waa\'ee Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Haala fi Imaammata Dhuunfummaa';

  @override
  String get signOut => 'Bahuun';

  @override
  String version(String version) {
    return 'Fooyya\'iinsa $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS yeroo baloo olloota walqunnamsiisa, neetworkii deebistoota saffisaa kan gargaarsa murteessaa ogeessota jalqabaa osoo hin dhufin dura kennuu danda\'an uuma.';

  @override
  String get aboutDialogContent2 =>
      'Namni hundinuu gootaa ta\'uu danda\'a. Jireenya baraaruuf leenjii addaa si hin barbaachisu. Yeroo tokko tokko gochichi cimaan hunda caalu mul\'achuu qofaa dha.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Cufi';

  @override
  String get signOutQuestion => 'Bahuun?';

  @override
  String get signOutConfirm => 'Dhugumaan bahuun barbaaddaa?';

  @override
  String get cancel => 'Dhiisi';

  @override
  String get signedOutSuccessfully => 'Milkaa\'inaan bahame';

  @override
  String get settings => 'Qindaa\'ina';

  @override
  String get capabilityWellnessCheck => 'Qorannoo Fayyaa';

  @override
  String get capabilityQuitCompanion => 'Hiriyaa Dhiisuu';

  @override
  String get capabilityActiveBystander => 'Ilaalchisaa Ka\'aa';

  @override
  String get translationTier1Label => 'Hiikkaa AI Amanamummaa Olaanaa';

  @override
  String get translationTier2Label => 'Hiikkaa AI Amanamummaa Gaarii';

  @override
  String get translationTier3Label => 'Hiikkaa AI Amanamummaa Giddugaleessaa';

  @override
  String get translationTier4Label => 'Hiikkaa AI Amanamummaa Gadaanaa';

  @override
  String get translationTier1Notice =>
      'Hiikki kun AI-tiin amanamummaa olaanaatiin uumame. Itti fayyadama oomiishaaf gamaaggama ogeessaa gorsama.';

  @override
  String get translationTier2Notice =>
      'Hiikki kun AI-tiin amanamummaa gaariitin uumame. Jecha eeyyamaa nageenyaa murteessaa fi hatattamaaf gamaaggama ogeessaa gorsama.';

  @override
  String get translationTier3Notice =>
      '⚠️ Hiikki kun gamaaggama namaatiin jecha hatattamaa nageenyaa murteessaaf osoo hin oomishin dura barbaachisa.';

  @override
  String get translationTier4Notice =>
      '⚠️ Kun hiikkaa qorannoo qofaa dha. Osoo hin oomishin dura hiikkaa ogeessaa barbaachisa.';

  @override
  String get selectLanguage => 'Afaan Fili';

  @override
  String get searchLanguagesHint => 'Afaanota barbaadi';

  @override
  String translationQualityLabel(String quality) {
    return 'Qulqullina Hiikkaa: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Hiikkaa fooyyeessuuf gargaari - rakkoolee gabaasi ykn hiikkaa fooyya\'aa kenni!';
}
