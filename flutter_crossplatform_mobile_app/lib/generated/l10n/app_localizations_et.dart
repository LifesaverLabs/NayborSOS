// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Tänapäeva Minutimehed ja Minutinaised';

  @override
  String get signUpToHelp => 'Registreeru, et aidata oma naabreid';

  @override
  String get enterPhoneNumber => 'Sisesta oma telefoninumber alustamiseks';

  @override
  String get phoneNumberLabel => 'Telefoninumber';

  @override
  String get phoneNumberHint => '5123 4567';

  @override
  String get sendVerificationCode => 'Saada kinnituskood';

  @override
  String get enterVerificationCode => 'Sisesta kinnituskood';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Saatsime koodi numbrile $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kinnituskood';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Kinnita ja jätka';

  @override
  String get changePhoneNumber => 'Muuda telefoninumbrit';

  @override
  String get pleaseEnterPhoneNumber => 'Palun sisesta oma telefoninumber';

  @override
  String get pleaseEnterVerificationCode => 'Palun sisesta kinnituskood';

  @override
  String get createProfile => 'Loo profiil';

  @override
  String get tellUsAboutYourself => 'Räägi meile endast';

  @override
  String get profileSetupDescription =>
      'See teave aitab meil sind ühendada naabritega, kes vajavad abi';

  @override
  String get addPhotoOptional => 'Lisa foto (valikuline)';

  @override
  String get fullNameLabel => 'Täisnimi *';

  @override
  String get fullNameHint => 'Jaan Tamm';

  @override
  String get homeAddressLabel => 'Kodune aadress *';

  @override
  String get homeAddressHint => 'Mere pst 123, korter 4B';

  @override
  String get homeAddressHelper => 'Kasutatakse ainult läheduse määramiseks';

  @override
  String get ageOptionalLabel => 'Vanus (valikuline)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70+ vanused saavad seada õrnad hoiatustunnid';

  @override
  String get yourPrivacyMatters => 'Sinu privaatsus on tähtis';

  @override
  String get privacyNotice =>
      'Sinu asukohta päritakse ainult aktiivsete hädaolukordade ajal ja seda ei salvestata pikemaajaliselt.';

  @override
  String get continueButton => 'Jätka';

  @override
  String get pleaseFillRequiredFields => 'Palun täida kõik nõutavad väljad';

  @override
  String get home => 'Kodu';

  @override
  String get alerts => 'Hoiatused';

  @override
  String get profile => 'Profiil';

  @override
  String get availableToRespond => 'Valmis reageerima';

  @override
  String get notAvailable => 'Pole saadaval';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Saad hädaolukorra hoiatusi läheduses';

  @override
  String get toggleOnWhenReady => 'Lülita sisse, kui oled valmis aitama';

  @override
  String get youreNowAvailable => 'Oled nüüd valmis reageerima';

  @override
  String get youWontReceiveAlerts => 'Sa ei saa hoiatusi';

  @override
  String get lifeThreatening247Info =>
      'Eluohtlikud hoiatused teavitavad sind 24/7. Mittepakilised hoiatused arvestavad sinu ajakavaga.';

  @override
  String get requestHelp => 'PALUN ABI';

  @override
  String get yourImpact => 'Sinu panus';

  @override
  String get responses => 'Reageeringud';

  @override
  String get avgTime => 'Kesk. aeg';

  @override
  String get yourCapabilities => 'Sinu oskused';

  @override
  String get edit => 'Muuda';

  @override
  String get communityNetwork => 'Kogukonna võrgustik';

  @override
  String get nearbyResponders => 'Lähedal olevad abistajad';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count saadaval';
  }

  @override
  String get coverageRadius => 'Katvuse raadius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilomeetrit';
  }

  @override
  String get activeAlerts => 'Aktiivsed hoiatused';

  @override
  String get none => 'Puudub';

  @override
  String get yourLocation => 'Sinu asukoht';

  @override
  String get whatDoYouNeedHelpWith => 'Millega vajad abi?';

  @override
  String get additionalDetailsOptional => 'Lisaüksikasjad (valikuline)';

  @override
  String get describeSituation => 'Kirjelda olukorda...';

  @override
  String get alertTrustedRespondersFirst =>
      'Teavita kõigepealt minu usaldatud abistajaid';

  @override
  String get trustedRespondersDescription =>
      'Sinu valitud sõbrad/pereliikmed teavitatakse enne üldist kogukonda';

  @override
  String sendingAlert(String emergencyType) {
    return 'Saadan hoiatust: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SAADA HOIATUS KOHE';

  @override
  String get pleaseSelectEmergencyType => 'Palun vali hädaolukorra tüüp';

  @override
  String get categoryLifeThreatening => '🔴 Eluohtlik';

  @override
  String get categorySecuritySafety => '🟠 Turvalisus/Ohutus';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Pakiline ajatundlik';

  @override
  String get categoryNonLifeThreatening => '🟢 Mitteeluohtlik';

  @override
  String get emergencyCprCardiacName => 'Elustamine / südameseiskus';

  @override
  String get emergencyCprCardiacDesc => 'Inimene on teadvusetu ja ei hingele';

  @override
  String get emergencyAedName => 'Defibrillaatori tarne';

  @override
  String get emergencyAedDesc => 'Vajan defibrillaatorit kohe';

  @override
  String get emergencyOverdoseName => 'Üledoos / naloksoon';

  @override
  String get emergencyOverdoseDesc =>
      'Kahtlustatav narkoüledoos, vajan naloksooni';

  @override
  String get emergencyChokingName => 'Lämbumishaigus / Heimlichi võte';

  @override
  String get emergencyChokingDesc => 'Inimene lämbub ega saa hingata';

  @override
  String get emergencyFireName => 'Tulekahju / evakueerimine';

  @override
  String get emergencyFireDesc =>
      'Tulekahju hädaolukord, vajan evakueerimise abi';

  @override
  String get emergencyConsentName => 'Nõusoleku hädaolukord';

  @override
  String get emergencyConsentDesc => 'Turvasõna öeldud, vajan tunnistajat';

  @override
  String get emergencyBystanderName => 'Aktiivne kõrvalseisja tunnistaja';

  @override
  String get emergencyBystanderDesc =>
      'Vajan kohalolekut konflikti maandamiseks';

  @override
  String get emergencyMissingPetName => 'Kadunud lemmikloom';

  @override
  String get emergencyMissingPetDesc =>
      'Lemmikloom on kadunud või ära jooksnud, vajan otsingugruppi';

  @override
  String get emergencyWellnessCheckName => 'Heaolu kontroll';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kontrolli kedagi, kes võib abi vajada';

  @override
  String get emergencyQuitCompanionName => 'Võõrutuse kaaslane';

  @override
  String get emergencyQuitCompanionDesc => 'Võitlen himuga, vajan tuge';

  @override
  String get emergencyCompanionshipName => 'Seltsiskond';

  @override
  String get emergencyCompanionshipDesc =>
      'Tunnen end üksildasena või isoleerituna';

  @override
  String get emergency911CoordinationName =>
      'Hädaabiteenistuse koordineerimine';

  @override
  String get emergency911CoordinationDesc =>
      'Vajan abi hädaabiteenistuse kutsumiseks ja koordineerimiseks';

  @override
  String get equipmentAed => 'Defibrillaator';

  @override
  String get equipmentNaloxone => 'Naloksoon/Narcan';

  @override
  String get myCapabilities => 'Minu oskused';

  @override
  String capabilitiesSelected(int count) {
    return '$count valitud';
  }

  @override
  String get alertSchedule => 'Hoiatuste ajakava';

  @override
  String get setAvailabilityHours => 'Määra oma kättesaadavuse tunnid';

  @override
  String get trustedResponders => 'Usaldatud abistajad';

  @override
  String get responseHistory => 'Reageerimiste ajalugu';

  @override
  String get privacyAndSafety => 'Privaatsus ja turvalisus';

  @override
  String get helpAndSupport => 'Abi ja tugi';

  @override
  String get aboutNayborSos => 'Naybor SOS-ist';

  @override
  String get termsAndPrivacyPolicy => 'Tingimused ja privaatsuspoliitika';

  @override
  String get signOut => 'Logi välja';

  @override
  String version(String version) {
    return 'Versioon $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS ühendab naabrid hädaolukordades, luues kiire reageerimise võrgustiku, mis saab pakkuda kriitilist abi enne professionaalsete esmaabiandjate saabumist.';

  @override
  String get aboutDialogContent2 =>
      'Igaüks saab olla kangelane. Sa ei vaja erikoolitust elu päästmiseks. Mõnikord on kõige võimsam sekkumine lihtsalt kohal olemine.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs avaliku kasu ettevõte';

  @override
  String get close => 'Sulge';

  @override
  String get signOutQuestion => 'Logi välja?';

  @override
  String get signOutConfirm => 'Kas oled kindel, et tahad välja logida?';

  @override
  String get cancel => 'Tühista';

  @override
  String get signedOutSuccessfully => 'Väljalogimine õnnestus';

  @override
  String get settings => 'Seaded';

  @override
  String get capabilityWellnessCheck => 'Heaolu kontroll';

  @override
  String get capabilityQuitCompanion => 'Võõrutuse kaaslane';

  @override
  String get capabilityActiveBystander => 'Aktiivne kõrvalseisja';

  @override
  String get translationTier1Label => 'High Confidence AI Translation';

  @override
  String get translationTier2Label => 'Hea usaldusväärsusega AI tõlge';

  @override
  String get translationTier3Label => 'Keskmise usaldusväärsusega AI tõlge';

  @override
  String get translationTier4Label => 'Madala usaldusväärsusega AI tõlge';

  @override
  String get translationTier1Notice =>
      'See tõlge loodi AI poolt kõrge usaldusväärsusega. Professionaalne ülevaatus on soovituslik tootmiskasutuseks.';

  @override
  String get translationTier2Notice =>
      'See tõlge loodi AI poolt hea usaldusväärsusega. Professionaalne ülevaatus on soovituslik ohutuse-kriitiliste nõusoleku ja hädaolukorra terminite jaoks.';

  @override
  String get translationTier3Notice =>
      '⚠️ See tõlge vajab inimese ülevaatust ohutuse-kriitiliste hädaolukorra fraaside jaoks enne tootmiskasutust.';

  @override
  String get translationTier4Notice =>
      '⚠️ See on ainult mustand tõlge. Professionaalne tõlge on nõutav enne tootmiskasutust.';

  @override
  String get selectLanguage => 'Vali keel';

  @override
  String get searchLanguagesHint => 'Otsi keeli';

  @override
  String translationQualityLabel(String quality) {
    return 'Tõlke kvaliteet: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Aita tõlkeid parandada - teata probleemidest või paku paremaid tõlkeid!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
