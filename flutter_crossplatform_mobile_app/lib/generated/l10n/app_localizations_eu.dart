// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Gaur Egungo Minutugizonak';

  @override
  String get signUpToHelp => 'Eman izena zure auzokideei laguntzeko';

  @override
  String get enterPhoneNumber => 'Sartu zure telefono zenbakia hasteko';

  @override
  String get phoneNumberLabel => 'Telefono Zenbakia';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Bidali Egiaztapen Kodea';

  @override
  String get enterVerificationCode => 'Sartu egiaztapen kodea';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Kode bat bidali dugu $phoneNumber zenbakira';
  }

  @override
  String get verificationCodeLabel => 'Egiaztapen Kodea';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Egiaztatu eta Jarraitu';

  @override
  String get changePhoneNumber => 'Aldatu telefono zenbakia';

  @override
  String get pleaseEnterPhoneNumber => 'Mesedez sartu zure telefono zenbakia';

  @override
  String get pleaseEnterVerificationCode => 'Mesedez sartu egiaztapen kodea';

  @override
  String get createProfile => 'Sortu Profila';

  @override
  String get tellUsAboutYourself => 'Esan iezaguzu zure buruz';

  @override
  String get profileSetupDescription =>
      'Informazio honek laguntza behar duten auzokideekin konektatzeko balio du';

  @override
  String get addPhotoOptional => 'Gehitu argazkia (aukerakoa)';

  @override
  String get fullNameLabel => 'Izen Osoa *';

  @override
  String get fullNameHint => 'Jon Etxeberria';

  @override
  String get homeAddressLabel => 'Etxeko Helbidea *';

  @override
  String get homeAddressHint => 'Nagusia kalea 123, 4B apartamentua';

  @override
  String get homeAddressHelper => 'Hurbiltasuna neurtzeko soilik erabiltzen da';

  @override
  String get ageOptionalLabel => 'Adina (aukerakoa)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70 urte baino gehiagokoak abisu ordu gozoak ezar ditzakete';

  @override
  String get yourPrivacyMatters => 'Zure pribatutasuna garrantzitsua da';

  @override
  String get privacyNotice =>
      'Zure kokalekua larrialdi aktiboen garaian soilik kontsultatzen da eta ez da epe luzez gordetzen.';

  @override
  String get continueButton => 'Jarraitu';

  @override
  String get pleaseFillRequiredFields =>
      'Mesedez bete ezinbesteko eremu guztiak';

  @override
  String get home => 'Hasiera';

  @override
  String get alerts => 'Abisoak';

  @override
  String get profile => 'Profila';

  @override
  String get availableToRespond => 'Erantzuteko Prest';

  @override
  String get notAvailable => 'Ez Dago Eskuragarri';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Inguruko larrialdi abisoak jasoko dituzu';

  @override
  String get toggleOnWhenReady => 'Aktibatu laguntzeko prest zaudenean';

  @override
  String get youreNowAvailable => 'Orain erantzuteko prest zaude';

  @override
  String get youWontReceiveAlerts => 'Ez duzu abisurik jasoko';

  @override
  String get lifeThreatening247Info =>
      'Bizitzarentzako arriskutsuak diren abisoak 24/7 jakinaraziko dizkizugu. Premiazko ez direnak zure ordutegiari begirune izaten diete.';

  @override
  String get requestHelp => 'ESKATU LAGUNTZA';

  @override
  String get yourImpact => 'Zure Eragina';

  @override
  String get responses => 'Erantzunak';

  @override
  String get avgTime => 'Batez besteko Denbora';

  @override
  String get yourCapabilities => 'Zure Gaitasunak';

  @override
  String get edit => 'Editatu';

  @override
  String get communityNetwork => 'Komunitatearen Sarea';

  @override
  String get nearbyResponders => 'Inguruko Erantzuleak';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count eskuragarri';
  }

  @override
  String get coverageRadius => 'Estaldura Erradioa';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance milia';
  }

  @override
  String get activeAlerts => 'Abisu Aktiboak';

  @override
  String get none => 'Bat ere ez';

  @override
  String get yourLocation => 'Zure Kokalekua';

  @override
  String get whatDoYouNeedHelpWith => 'Zertarako behar duzu laguntza?';

  @override
  String get additionalDetailsOptional => 'Xehetasun Gehigarriak (aukerakoa)';

  @override
  String get describeSituation => 'Deskribatu egoera...';

  @override
  String get alertTrustedRespondersFirst =>
      'Abisatu nire erantzule fidagarriak lehenik';

  @override
  String get trustedRespondersDescription =>
      'Zure aukeratutako lagunek/familiak komunitatearen aurretik jasoko dute abisua';

  @override
  String sendingAlert(String emergencyType) {
    return 'Abisua bidaltzen: $emergencyType';
  }

  @override
  String get sendAlertNow => 'BIDALI ABISUA ORAIN';

  @override
  String get pleaseSelectEmergencyType => 'Mesedez hautatu larrialdi mota';

  @override
  String get categoryLifeThreatening => '🔴 Bizitzarentzako Arriskutsua';

  @override
  String get categorySecuritySafety => '🟠 Segurtasun/Babesa';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Premiazkoa Denbora Sentsiblea';

  @override
  String get categoryNonLifeThreatening => '🟢 Bizitzarentzako Ez-arriskutsua';

  @override
  String get emergencyCprCardiacName => 'BKB / Bihotz Geldialdia';

  @override
  String get emergencyCprCardiacDesc =>
      'Pertsona erantzuteko gai ez eta arnasestutakoan dago';

  @override
  String get emergencyAedName => 'DEA Banaketa';

  @override
  String get emergencyAedDesc => 'DEA bat behar da berehala';

  @override
  String get emergencyOverdoseName => 'Sobredosia / Naloxona';

  @override
  String get emergencyOverdoseDesc =>
      'Droga sobredosia susmagarria, naloxona behar da';

  @override
  String get emergencyChokingName => 'Itolarria / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Pertsona itolarrian dago eta ezin du arnasa hartu';

  @override
  String get emergencyFireName => 'Sua / Ebakuazioa';

  @override
  String get emergencyFireDesc => 'Su larrialdi, ebakuazio laguntza behar da';

  @override
  String get emergencyConsentName => 'Logela Baimena Larrialdi';

  @override
  String get emergencyConsentDesc =>
      'Segurtasun hitza deitu da, lekuko bat behar da';

  @override
  String get emergencyBystanderName => 'Lekuko Aktiboa';

  @override
  String get emergencyBystanderDesc =>
      'Gatazka deseskalaratzeko presentzia behar da';

  @override
  String get emergencyMissingPetName => 'Etxeko Animalia Galdua';

  @override
  String get emergencyMissingPetDesc =>
      'Etxeko animalia galdu egin da edo ihes egin du, bilaketa talde bat behar da';

  @override
  String get emergencyWellnessCheckName => 'Ongizate Egiaztapena';

  @override
  String get emergencyWellnessCheckDesc =>
      'Laguntza behar izan lezakeen norbait egiaztatu';

  @override
  String get emergencyQuitCompanionName => 'Utzi Lagunkide';

  @override
  String get emergencyQuitCompanionDesc =>
      'Gosearekin borrokan, babesa behar da';

  @override
  String get emergencyCompanionshipName => 'Laguntzailea';

  @override
  String get emergencyCompanionshipDesc => 'Bakarrik edo isolatuta sentitzen';

  @override
  String get emergency911CoordinationName => '112 Koordinazioa';

  @override
  String get emergency911CoordinationDesc =>
      '112 deitzeko eta koordinatzeko laguntza behar da';

  @override
  String get equipmentAed => 'DEA';

  @override
  String get equipmentNaloxone => 'Naloxona/Narcan';

  @override
  String get myCapabilities => 'Nire Gaitasunak';

  @override
  String capabilitiesSelected(int count) {
    return '$count hautatua';
  }

  @override
  String get alertSchedule => 'Abisuen Ordutegia';

  @override
  String get setAvailabilityHours => 'Ezarri zure eskuragarritasun orduak';

  @override
  String get trustedResponders => 'Erantzule Fidagarriak';

  @override
  String get responseHistory => 'Erantzun Historia';

  @override
  String get privacyAndSafety => 'Pribatutasuna eta Segurtasuna';

  @override
  String get helpAndSupport => 'Laguntza eta Babesa';

  @override
  String get aboutNayborSos => 'Naybor SOS-ri buruz';

  @override
  String get termsAndPrivacyPolicy => 'Baldintzak eta Pribatutasun Politika';

  @override
  String get signOut => 'Saioa Itxi';

  @override
  String version(String version) {
    return 'Bertsioa $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS-k auzokideak larrialdien garaian konektatzen ditu, lehen erantzule profesionalak iritsi baino lehen laguntza kritikoa eman dezaketen erantzule azkarren sare bat sortzen du.';

  @override
  String get aboutDialogContent2 =>
      'Denak izan gaitezke heroeak. Ez duzu prestakuntza berezirik behar bizitza bat salbatzeko. Batzuetan esku-hartzerik indartsuena soilik agertzea da.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Itxi';

  @override
  String get signOutQuestion => 'Saioa Itxi?';

  @override
  String get signOutConfirm => 'Ziur zaude saioa itxi nahi duzula?';

  @override
  String get cancel => 'Ezeztatu';

  @override
  String get signedOutSuccessfully => 'Saioa behar bezala itxi da';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get capabilityWellnessCheck => 'Ongizate Egiaztapena';

  @override
  String get capabilityQuitCompanion => 'Utzi Lagunkide';

  @override
  String get capabilityActiveBystander => 'Lekuko Aktiboa';

  @override
  String get translationTier1Label => 'Konfiantza Handiko AI Itzulpena';

  @override
  String get translationTier2Label => 'Konfiantza Oneko AI Itzulpena';

  @override
  String get translationTier3Label => 'Konfiantza Ertaineko AI Itzulpena';

  @override
  String get translationTier4Label => 'Konfiantza Baxuko AI Itzulpena';

  @override
  String get translationTier1Notice =>
      'Itzulpen hau AI-ak egin du konfiantza handiarekin. Produkziorako erabilerako berrikuspen profesionala gomendatzen da.';

  @override
  String get translationTier2Notice =>
      'Itzulpen hau AI-ak egin du konfiantza onarekin. Segurtasunaren aldetik kritikoaren baimena eta larrialdietako terminologiarako berrikuspen profesionala gomendatzen da.';

  @override
  String get translationTier3Notice =>
      '⚠️ Itzulpen honek giza berrikuspena behar du segurtasunerako kritikoak diren larrialdi esaldietarako produkzioan erabili baino lehen.';

  @override
  String get translationTier4Notice =>
      '⚠️ Hau zirriborro-itzulpen bat da soilik. Itzulpen profesionala behar da produkzioan erabili baino lehen.';

  @override
  String get selectLanguage => 'Hautatu Hizkuntza';

  @override
  String get searchLanguagesHint => 'Bilatu hizkuntzak';

  @override
  String translationQualityLabel(String quality) {
    return 'Itzulpen Kalitatea: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Lagundu itzulpenak hobetzen - eman jakinarazpenak edo ekarri itzulpen hobeak!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
