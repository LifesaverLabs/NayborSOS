// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Modern kori minuteman-ek és minutewoman-ök';

  @override
  String get signUpToHelp => 'Regisztráljon, hogy segítsen szomszédainak';

  @override
  String get enterPhoneNumber => 'Adja meg telefonszámát a kezdéshez';

  @override
  String get phoneNumberLabel => 'Telefonszám';

  @override
  String get phoneNumberHint => '(06) 30 123 4567';

  @override
  String get sendVerificationCode => 'Ellenőrző kód küldése';

  @override
  String get enterVerificationCode => 'Adja meg az ellenőrző kódot';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Kódot küldtünk a(z) $phoneNumber számra';
  }

  @override
  String get verificationCodeLabel => 'Ellenőrző kód';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Ellenőrzés és folytatás';

  @override
  String get changePhoneNumber => 'Telefonszám módosítása';

  @override
  String get pleaseEnterPhoneNumber => 'Kérjük, adja meg telefonszámát';

  @override
  String get pleaseEnterVerificationCode =>
      'Kérjük, adja meg az ellenőrző kódot';

  @override
  String get createProfile => 'Profil létrehozása';

  @override
  String get tellUsAboutYourself => 'Meséljen magáról';

  @override
  String get profileSetupDescription =>
      'Ezek az információk segítenek összekapcsolni Önt a segítségre szoruló szomszédokkal';

  @override
  String get addPhotoOptional => 'Fénykép hozzáadása (opcionális)';

  @override
  String get fullNameLabel => 'Teljes név *';

  @override
  String get fullNameHint => 'Nagy János';

  @override
  String get homeAddressLabel => 'Otthoni cím *';

  @override
  String get homeAddressHint => 'Fő utca 123, 4/B';

  @override
  String get homeAddressHelper => 'Csak a közelségi egyeztetéshez használjuk';

  @override
  String get ageOptionalLabel => 'Életkor (opcionális)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'A 70 év felettiek beállíthatják a kíméletes riasztási órákat';

  @override
  String get yourPrivacyMatters => 'Az Ön adatvédelme fontos';

  @override
  String get privacyNotice =>
      'Az Ön helyzete csak aktív vészhelyzetek során kerül lekérdezésre, és soha nem tárolódik hosszú távon.';

  @override
  String get continueButton => 'Folytatás';

  @override
  String get pleaseFillRequiredFields =>
      'Kérjük, töltse ki az összes kötelező mezőt';

  @override
  String get home => 'Főoldal';

  @override
  String get alerts => 'Riasztások';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Elérhető válaszadásra';

  @override
  String get notAvailable => 'Nem elérhető';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Vészhelyzeti riasztásokat fog kapni a közelben';

  @override
  String get toggleOnWhenReady =>
      'Kapcsolja be, amikor készen áll a segítségre';

  @override
  String get youreNowAvailable => 'Most már elérhető válaszadásra';

  @override
  String get youWontReceiveAlerts => 'Nem fog riasztásokat kapni';

  @override
  String get lifeThreatening247Info =>
      'Az életveszélyes riasztások 24/7 értesíteni fogják. A nem sürgős riasztások tiszteletben tartják az Ön időbeosztását.';

  @override
  String get requestHelp => 'SEGÍTSÉG KÉRÉSE';

  @override
  String get yourImpact => 'Az Ön hatása';

  @override
  String get responses => 'Válaszok';

  @override
  String get avgTime => 'Átl. idő';

  @override
  String get yourCapabilities => 'Az Ön képességei';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get communityNetwork => 'Közösségi hálózat';

  @override
  String get nearbyResponders => 'Közeli válaszadók';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count elérhető';
  }

  @override
  String get coverageRadius => 'Lefedettségi sugár';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilométer';
  }

  @override
  String get activeAlerts => 'Aktív riasztások';

  @override
  String get none => 'Nincs';

  @override
  String get yourLocation => 'Az Ön helyzete';

  @override
  String get whatDoYouNeedHelpWith => 'Miben van szüksége segítségre?';

  @override
  String get additionalDetailsOptional => 'További részletek (opcionális)';

  @override
  String get describeSituation => 'Írja le a helyzetet...';

  @override
  String get alertTrustedRespondersFirst =>
      'Először a megbízható válaszadóimat értesítsék';

  @override
  String get trustedRespondersDescription =>
      'A kiválasztott barátait/családtagjait értesítjük az általános közösség előtt';

  @override
  String sendingAlert(String emergencyType) {
    return 'Riasztás küldése: $emergencyType';
  }

  @override
  String get sendAlertNow => 'RIASZTÁS KÜLDÉSE MOST';

  @override
  String get pleaseSelectEmergencyType =>
      'Kérjük, válasszon vészhelyzet típust';

  @override
  String get categoryLifeThreatening => '🔴 Életveszélyes';

  @override
  String get categorySecuritySafety => '🟠 Biztonság/Védelem';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Sürgős időérzékeny';

  @override
  String get categoryNonLifeThreatening => '🟢 Nem életveszélyes';

  @override
  String get emergencyCprCardiacName => 'Újraélesztés / Szívmegállás';

  @override
  String get emergencyCprCardiacDesc => 'A személy eszméletlen és nem lélegzik';

  @override
  String get emergencyAedName => 'AED szállítás';

  @override
  String get emergencyAedDesc => 'Azonnal szükség van AED-re';

  @override
  String get emergencyOverdoseName => 'Túladagolás / Naloxon';

  @override
  String get emergencyOverdoseDesc =>
      'Feltételezett drog túladagolás, naloxonra van szükség';

  @override
  String get emergencyChokingName => 'Fulladás / Heimlich fogás';

  @override
  String get emergencyChokingDesc =>
      'A személy fulladozik és nem tud lélegezni';

  @override
  String get emergencyFireName => 'Tűz / Kimenekítés';

  @override
  String get emergencyFireDesc =>
      'Tűzvészhelyzet, kimenekítési segítség szükséges';

  @override
  String get emergencyConsentName => 'Hálószoba beleegyezési vészhelyzet';

  @override
  String get emergencyConsentDesc =>
      'Biztonságos szó elhangzott, tanúra van szükség';

  @override
  String get emergencyBystanderName => 'Aktív szemlélő tanú';

  @override
  String get emergencyBystanderDesc =>
      'Jelenlétre van szükség a konfliktus lecsillapításához';

  @override
  String get emergencyMissingPetName => 'Eltűnt háziállat';

  @override
  String get emergencyMissingPetDesc =>
      'A háziállat eltűnt vagy elszökött, keresőcsapatra van szükség';

  @override
  String get emergencyWellnessCheckName => 'Jóllét ellenőrzés';

  @override
  String get emergencyWellnessCheckDesc =>
      'Ellenőrizni kell valakit, akinek segítségre lehet szüksége';

  @override
  String get emergencyQuitCompanionName => 'Leszokás társ';

  @override
  String get emergencyQuitCompanionDesc =>
      'Vágyakozás ellen küzdök, támogatásra van szükség';

  @override
  String get emergencyCompanionshipName => 'Társaság';

  @override
  String get emergencyCompanionshipDesc =>
      'Magányosnak vagy elszigeteltnek érzem magam';

  @override
  String get emergency911CoordinationName => '112 koordináció';

  @override
  String get emergency911CoordinationDesc =>
      'Segítség kell a 112 hívásához és koordinálásához';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxon/Narcan';

  @override
  String get myCapabilities => 'Az én képességeim';

  @override
  String capabilitiesSelected(int count) {
    return '$count kiválasztva';
  }

  @override
  String get alertSchedule => 'Riasztási időbeosztás';

  @override
  String get setAvailabilityHours => 'Állítsa be elérhetőségi óráit';

  @override
  String get trustedResponders => 'Megbízható válaszadók';

  @override
  String get responseHistory => 'Válaszadási előzmények';

  @override
  String get privacyAndSafety => 'Adatvédelem és biztonság';

  @override
  String get helpAndSupport => 'Segítség és támogatás';

  @override
  String get aboutNayborSos => 'A Naybor SOS-ról';

  @override
  String get termsAndPrivacyPolicy =>
      'Felhasználási feltételek és adatvédelmi irányelvek';

  @override
  String get signOut => 'Kijelentkezés';

  @override
  String version(String version) {
    return 'Verzió $version';
  }

  @override
  String get aboutDialogContent =>
      'A Naybor SOS összeköti a szomszédokat vészhelyzetekben, gyors válaszadók hálózatát létrehozva, akik kritikus segítséget nyújthatnak a professzionális elsősegélynyújtók érkezése előtt.';

  @override
  String get aboutDialogContent2 =>
      'Mindenki lehet hős. Nincs szükség speciális képzésre az életmentéshez. Néha a legerősebb beavatkozás egyszerűen az, hogy megjelensz.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Bezárás';

  @override
  String get signOutQuestion => 'Kijelentkezés?';

  @override
  String get signOutConfirm => 'Biztos, hogy ki akar jelentkezni?';

  @override
  String get cancel => 'Mégse';

  @override
  String get signedOutSuccessfully => 'Sikeresen kijelentkezett';

  @override
  String get settings => 'Beállítások';

  @override
  String get capabilityWellnessCheck => 'Jóllét ellenőrzés';

  @override
  String get capabilityQuitCompanion => 'Leszokás társ';

  @override
  String get capabilityActiveBystander => 'Aktív szemlélő';

  @override
  String get translationTier1Label => 'Magas megbízhatóságú AI fordítás';

  @override
  String get translationTier2Label => 'Jó megbízhatóságú AI fordítás';

  @override
  String get translationTier3Label => 'Közepes megbízhatóságú AI fordítás';

  @override
  String get translationTier4Label => 'Alacsony megbízhatóságú AI fordítás';

  @override
  String get translationTier1Notice =>
      'Ez a fordítás AI által készült magas megbízhatósággal. Professzionális áttekintés ajánlott éles használathoz.';

  @override
  String get translationTier2Notice =>
      'Ez a fordítás AI által készült jó megbízhatósággal. Professzionális áttekintés ajánlott a biztonság szempontjából kritikus beleegyezési és vészhelyzeti terminológiához.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ez a fordítás emberi áttekintést igényel a biztonság szempontjából kritikus vészhelyzeti kifejezésekhez az éles használat előtt.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ez csak egy vázlat fordítás. Professzionális fordítás szükséges az éles használat előtt.';

  @override
  String get selectLanguage => 'Nyelv kiválasztása';

  @override
  String get searchLanguagesHint => 'Nyelvek keresése';

  @override
  String translationQualityLabel(String quality) {
    return 'Fordítási minőség: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Segítsen javítani a fordításokat - jelentse a problémákat vagy járuljon hozzá jobb fordításokkal!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
