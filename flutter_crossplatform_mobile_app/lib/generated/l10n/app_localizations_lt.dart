// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Šiuolaikiniai minutininkai';

  @override
  String get signUpToHelp => 'Registruokitės, kad galėtumėte padėti kaimynams';

  @override
  String get enterPhoneNumber => 'Įveskite telefono numerį, kad pradėtumėte';

  @override
  String get phoneNumberLabel => 'Telefono numeris';

  @override
  String get phoneNumberHint => '+370 600 12345';

  @override
  String get sendVerificationCode => 'Siųsti patvirtinimo kodą';

  @override
  String get enterVerificationCode => 'Įveskite patvirtinimo kodą';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Išsiuntėme kodą į $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Patvirtinimo kodas';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Patvirtinti ir tęsti';

  @override
  String get changePhoneNumber => 'Keisti telefono numerį';

  @override
  String get pleaseEnterPhoneNumber => 'Prašome įvesti telefono numerį';

  @override
  String get pleaseEnterVerificationCode => 'Prašome įvesti patvirtinimo kodą';

  @override
  String get createProfile => 'Sukurti profilį';

  @override
  String get tellUsAboutYourself => 'Papasakokite apie save';

  @override
  String get profileSetupDescription =>
      'Ši informacija padeda mums sujungti jus su kaimynais, kuriems reikia pagalbos';

  @override
  String get addPhotoOptional => 'Pridėti nuotrauką (neprivaloma)';

  @override
  String get fullNameLabel => 'Vardas ir pavardė *';

  @override
  String get fullNameHint => 'Jonas Jonaitis';

  @override
  String get homeAddressLabel => 'Namų adresas *';

  @override
  String get homeAddressHint => 'Vilniaus g. 123, bt. 4B';

  @override
  String get homeAddressHelper => 'Naudojamas tik atstumo nustatymui';

  @override
  String get ageOptionalLabel => 'Amžius (neprivaloma)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70+ metų amžiaus asmenys gali nustatyti švelnius įspėjimo laikus';

  @override
  String get yourPrivacyMatters => 'Jūsų privatumas yra svarbus';

  @override
  String get privacyNotice =>
      'Jūsų buvimo vieta tikrinama tik aktyvių skubių situacijų metu ir niekada nesaugoma ilgam.';

  @override
  String get continueButton => 'Tęsti';

  @override
  String get pleaseFillRequiredFields =>
      'Prašome užpildyti visus privalomus laukus';

  @override
  String get home => 'Pagrindinis';

  @override
  String get alerts => 'Įspėjimai';

  @override
  String get profile => 'Profilis';

  @override
  String get availableToRespond => 'Pasiruošęs reaguoti';

  @override
  String get notAvailable => 'Nepasiekiamas';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Gausite skubių situacijų įspėjimus netoliese';

  @override
  String get toggleOnWhenReady => 'Įjunkite, kai būsite pasiruošę padėti';

  @override
  String get youreNowAvailable => 'Dabar esate pasiruošę reaguoti';

  @override
  String get youWontReceiveAlerts => 'Negausite įspėjimų';

  @override
  String get lifeThreatening247Info =>
      'Gyvybei pavojingi įspėjimai jus informuos 24/7. Neskubūs įspėjimai atsižvelgs į jūsų tvarkaraštį.';

  @override
  String get requestHelp => 'PRAŠYTI PAGALBOS';

  @override
  String get yourImpact => 'Jūsų poveikis';

  @override
  String get responses => 'Atsakymai';

  @override
  String get avgTime => 'Vid. laikas';

  @override
  String get yourCapabilities => 'Jūsų gebėjimai';

  @override
  String get edit => 'Redaguoti';

  @override
  String get communityNetwork => 'Bendruomenės tinklas';

  @override
  String get nearbyResponders => 'Artimi reagavimo specialistai';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count pasiekiamų';
  }

  @override
  String get coverageRadius => 'Veikimo spindulys';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mylių';
  }

  @override
  String get activeAlerts => 'Aktyvūs įspėjimai';

  @override
  String get none => 'Nėra';

  @override
  String get yourLocation => 'Jūsų buvimo vieta';

  @override
  String get whatDoYouNeedHelpWith => 'Su kuo jums reikia pagalbos?';

  @override
  String get additionalDetailsOptional => 'Papildoma informacija (neprivaloma)';

  @override
  String get describeSituation => 'Apibūdinkite situaciją...';

  @override
  String get alertTrustedRespondersFirst =>
      'Pirmiausia įspėti mano patikimus reagavimo specialistus';

  @override
  String get trustedRespondersDescription =>
      'Jūsų pasirinkti draugai/šeima bus informuoti anksčiau nei bendroji bendruomenė';

  @override
  String sendingAlert(String emergencyType) {
    return 'Siunčiamas įspėjimas: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SIŲSTI ĮSPĖJIMĄ DABAR';

  @override
  String get pleaseSelectEmergencyType =>
      'Prašome pasirinkti skubios situacijos tipą';

  @override
  String get categoryLifeThreatening => '🔴 Pavojinga gyvybei';

  @override
  String get categorySecuritySafety => '🟠 Sauga/apsauga';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Skubu, priklausoma nuo laiko';

  @override
  String get categoryNonLifeThreatening => '🟢 Nepavojinga gyvybei';

  @override
  String get emergencyCprCardiacName => 'GK / širdies sustojimas';

  @override
  String get emergencyCprCardiacDesc => 'Asmuo nereaguoja ir nekvėpuoja';

  @override
  String get emergencyAedName => 'AED pristatymas';

  @override
  String get emergencyAedDesc => 'Skubiai reikalingas AED';

  @override
  String get emergencyOverdoseName => 'Perdozavimas / naloksonas';

  @override
  String get emergencyOverdoseDesc =>
      'Įtariamas narkotikų perdozavimas, reikalingas naloksonas';

  @override
  String get emergencyChokingName => 'Užspringimas / Heimlicho metodas';

  @override
  String get emergencyChokingDesc => 'Asmuo užspringo ir negali kvėpuoti';

  @override
  String get emergencyFireName => 'Gaisras / evakuacija';

  @override
  String get emergencyFireDesc =>
      'Gaisro ekstremali situacija, reikalinga evakuacijos pagalba';

  @override
  String get emergencyConsentName => 'Miegamojo sutikimo ekstremali situacija';

  @override
  String get emergencyConsentDesc =>
      'Pašauktas saugos žodis, reikalingas liudytojas';

  @override
  String get emergencyBystanderName => 'Aktyvaus stebėtojo liudijimas';

  @override
  String get emergencyBystanderDesc =>
      'Reikalinga buvimo vieta konflikto suvaldymui';

  @override
  String get emergencyMissingPetName => 'Dingęs gyvūnas';

  @override
  String get emergencyMissingPetDesc =>
      'Gyvūnas dingo ar pabėgo, reikalinga paieškos grupė';

  @override
  String get emergencyWellnessCheckName => 'Sveikatos patikrinimas';

  @override
  String get emergencyWellnessCheckDesc =>
      'Patikrinti asmenį, kuriam gali reikėti pagalbos';

  @override
  String get emergencyQuitCompanionName => 'Metimo palydovas';

  @override
  String get emergencyQuitCompanionDesc =>
      'Kovojama su geiduliu, reikalinga parama';

  @override
  String get emergencyCompanionshipName => 'Bendravimas';

  @override
  String get emergencyCompanionshipDesc => 'Jaučiuosi vienišas ar izoliuotas';

  @override
  String get emergency911CoordinationName => '911 koordinavimas';

  @override
  String get emergency911CoordinationDesc =>
      'Reikalinga pagalba skambinant ir koordinuojant 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloksonas/Narkanas';

  @override
  String get myCapabilities => 'Mano gebėjimai';

  @override
  String capabilitiesSelected(int count) {
    return '$count pasirinkta';
  }

  @override
  String get alertSchedule => 'Įspėjimų tvarkaraštis';

  @override
  String get setAvailabilityHours => 'Nustatykite savo pasiekiamumo valandas';

  @override
  String get trustedResponders => 'Patikimi reagavimo specialistai';

  @override
  String get responseHistory => 'Reagavimo istorija';

  @override
  String get privacyAndSafety => 'Privatumas ir sauga';

  @override
  String get helpAndSupport => 'Pagalba ir palaikymas';

  @override
  String get aboutNayborSos => 'Apie Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Sąlygos ir privatumo politika';

  @override
  String get signOut => 'Atsijungti';

  @override
  String version(String version) {
    return 'Versija $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS sujungia kaimynus ekstremaliose situacijose, kurdamas greitų reagavimo specialistų tinklą, kurie gali suteikti kritišką pagalbą iki atvykstant profesionaliems pirmosios pagalbos specialistams.';

  @override
  String get aboutDialogContent2 =>
      'Kiekvienas gali būti herojus. Jums nereikia specialaus mokymo, kad išgelbėtumėte gyvybę. Kartais galingiausias įsikišimas yra tiesiog pasirodžius.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs viešosios naudos korporacija';

  @override
  String get close => 'Uždaryti';

  @override
  String get signOutQuestion => 'Atsijungti?';

  @override
  String get signOutConfirm => 'Ar tikrai norite atsijungti?';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get signedOutSuccessfully => 'Sėkmingai atsijungėte';

  @override
  String get settings => 'Nustatymai';

  @override
  String get capabilityWellnessCheck => 'Sveikatos patikrinimas';

  @override
  String get capabilityQuitCompanion => 'Metimo palydovas';

  @override
  String get capabilityActiveBystander => 'Aktyvus stebėtojas';

  @override
  String get translationTier1Label => 'Didelio patikimumo DI vertimas';

  @override
  String get translationTier2Label => 'Gero patikimumo DI vertimas';

  @override
  String get translationTier3Label => 'Vidutinio patikimumo DI vertimas';

  @override
  String get translationTier4Label => 'Žemo patikimumo DI vertimas';

  @override
  String get translationTier1Notice =>
      'Šis vertimas buvo sukurtas DI su dideliu patikimumu. Rekomenduojama profesionali peržiūra prieš naudojant gamyboje.';

  @override
  String get translationTier2Notice =>
      'Šis vertimas buvo sukurtas DI su geru patikimumu. Rekomenduojama profesionali peržiūra saugai kritinės sutikimo ir ekstremali situacijų terminijos.';

  @override
  String get translationTier3Notice =>
      '⚠️ Šis vertimas reikalauja žmogaus peržiūros saugai kritinių ekstremali situacijų frazių prieš naudojimą gamyboje.';

  @override
  String get translationTier4Notice =>
      '⚠️ Tai tik juodraštinio vertimo versija. Prieš naudojant gamyboje reikalingas profesionalus vertimas.';

  @override
  String get selectLanguage => 'Pasirinkti kalbą';

  @override
  String get searchLanguagesHint => 'Ieškoti kalbų';

  @override
  String translationQualityLabel(String quality) {
    return 'Vertimo kokybė: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Padėkite pagerinti vertimus - pranešite apie problemas arba prisidėkite prie geresnių vertimų!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
