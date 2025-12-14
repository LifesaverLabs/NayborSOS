// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderni minutaši i minutašice';

  @override
  String get signUpToHelp => 'Prijavite se da pomognete susjedima';

  @override
  String get enterPhoneNumber => 'Unesite broj telefona za početak';

  @override
  String get phoneNumberLabel => 'Broj telefona';

  @override
  String get phoneNumberHint => '(01) 123-4567';

  @override
  String get sendVerificationCode => 'Pošaljite kod za provjeru';

  @override
  String get enterVerificationCode => 'Unesite kod za provjeru';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Poslali smo kod na $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kod za provjeru';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Potvrdite i nastavite';

  @override
  String get changePhoneNumber => 'Promijenite broj telefona';

  @override
  String get pleaseEnterPhoneNumber => 'Molimo unesite broj telefona';

  @override
  String get pleaseEnterVerificationCode => 'Molimo unesite kod za provjeru';

  @override
  String get createProfile => 'Stvori profil';

  @override
  String get tellUsAboutYourself => 'Recite nam o sebi';

  @override
  String get profileSetupDescription =>
      'Ove informacije pomažu nam da vas povežemo sa susjedima kojima je potrebna pomoć';

  @override
  String get addPhotoOptional => 'Dodajte sliku (neobavezno)';

  @override
  String get fullNameLabel => 'Puno ime *';

  @override
  String get fullNameHint => 'Marko Marković';

  @override
  String get homeAddressLabel => 'Kućna adresa *';

  @override
  String get homeAddressHint => 'Ilica 123, stan 4B';

  @override
  String get homeAddressHelper => 'Koristi se samo za određivanje blizine';

  @override
  String get ageOptionalLabel => 'Godine (neobavezno)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Osobe starije od 70 godina mogu postaviti nježne sate upozorenja';

  @override
  String get yourPrivacyMatters => 'Vaša privatnost je važna';

  @override
  String get privacyNotice =>
      'Vaša lokacija se provjerava samo tijekom aktivnih hitnih situacija i nikada se ne čuva dugoročno.';

  @override
  String get continueButton => 'Nastavite';

  @override
  String get pleaseFillRequiredFields => 'Molimo ispunite sva obavezna polja';

  @override
  String get home => 'Početna';

  @override
  String get alerts => 'Upozorenja';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Dostupan za odgovor';

  @override
  String get notAvailable => 'Nedostupan';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Primit ćete hitna upozorenja u blizini';

  @override
  String get toggleOnWhenReady => 'Uključite kada ste spremni za pomoć';

  @override
  String get youreNowAvailable => 'Sada ste dostupni za odgovor';

  @override
  String get youWontReceiveAlerts => 'Nećete primati upozorenja';

  @override
  String get lifeThreatening247Info =>
      'Životno ugrožavajuća upozorenja će vas obavijestiti 24/7. Nehitna upozorenja poštuju vaš raspored.';

  @override
  String get requestHelp => 'ZATRAŽITE POMOĆ';

  @override
  String get yourImpact => 'Vaš utjecaj';

  @override
  String get responses => 'Odgovori';

  @override
  String get avgTime => 'Prosj. vrijeme';

  @override
  String get yourCapabilities => 'Vaše sposobnosti';

  @override
  String get edit => 'Uredi';

  @override
  String get communityNetwork => 'Mrežа zajednice';

  @override
  String get nearbyResponders => 'Obližnji spasioci';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count dostupno';
  }

  @override
  String get coverageRadius => 'Radijus pokrivanja';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilometara';
  }

  @override
  String get activeAlerts => 'Aktivna upozorenja';

  @override
  String get none => 'Nema';

  @override
  String get yourLocation => 'Vaša lokacija';

  @override
  String get whatDoYouNeedHelpWith => 'S čim vam trebamo pomoć?';

  @override
  String get additionalDetailsOptional => 'Dodatni detalji (neobavezno)';

  @override
  String get describeSituation => 'Opišite situaciju...';

  @override
  String get alertTrustedRespondersFirst =>
      'Prvo upozorite moje pouzdane spasioce';

  @override
  String get trustedRespondersDescription =>
      'Vaši odabrani prijatelji/obitelj bit će obaviješteni prije opće zajednice';

  @override
  String sendingAlert(String emergencyType) {
    return 'Šalje se upozorenje: $emergencyType';
  }

  @override
  String get sendAlertNow => 'POŠALJITE UPOZORENJE SADA';

  @override
  String get pleaseSelectEmergencyType =>
      'Molimo odaberite vrstu hitne situacije';

  @override
  String get categoryLifeThreatening => '🔴 Životno ugrožavajuće';

  @override
  String get categorySecuritySafety => '🟠 Sigurnost/Zaštita';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Hitno vremenski osjetljivo';

  @override
  String get categoryNonLifeThreatening => '🟢 Nije životno ugrožavajuće';

  @override
  String get emergencyCprCardiacName => 'KPR / Srčani zastoj';

  @override
  String get emergencyCprCardiacDesc => 'Osoba ne reagira i ne diše';

  @override
  String get emergencyAedName => 'Dostava AED-a';

  @override
  String get emergencyAedDesc => 'Hitno potreban defibrilator';

  @override
  String get emergencyOverdoseName => 'Predoziranje / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Sumnja na predoziranje, potreban nalokson';

  @override
  String get emergencyChokingName => 'Gušenje / Heimlich';

  @override
  String get emergencyChokingDesc => 'Osoba se guši i ne može disati';

  @override
  String get emergencyFireName => 'Požar / Evakuacija';

  @override
  String get emergencyFireDesc =>
      'Požarna situacija, potrebna pomoć pri evakuaciji';

  @override
  String get emergencyConsentName =>
      'Hitna situacija pristanka u spavaćoj sobi';

  @override
  String get emergencyConsentDesc =>
      'Sigurna riječ izgovorena, potreban svjedok';

  @override
  String get emergencyBystanderName => 'Aktivni svjedok promatrač';

  @override
  String get emergencyBystanderDesc =>
      'Potrebna prisutnost za smirivanje sukoba';

  @override
  String get emergencyMissingPetName => 'Nestali ljubimac';

  @override
  String get emergencyMissingPetDesc =>
      'Ljubimac je izgubljen ili pobjegao, potrebna potražna skupina';

  @override
  String get emergencyWellnessCheckName => 'Provjera dobrobiti';

  @override
  String get emergencyWellnessCheckDesc =>
      'Provjeriti nekoga tko možda treba pomoć';

  @override
  String get emergencyQuitCompanionName => 'Pratnja za prestanak ovisnosti';

  @override
  String get emergencyQuitCompanionDesc =>
      'Borim se s pojavom, potrebna podrška';

  @override
  String get emergencyCompanionshipName => 'Društvo';

  @override
  String get emergencyCompanionshipDesc => 'Osjećam se usamljeno ili izolirano';

  @override
  String get emergency911CoordinationName => 'Koordinacija hitnih službi';

  @override
  String get emergency911CoordinationDesc =>
      'Potrebna pomoć pri pozivanju i koordinaciji hitnih službi';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narcan';

  @override
  String get myCapabilities => 'Moje sposobnosti';

  @override
  String capabilitiesSelected(int count) {
    return '$count odabrano';
  }

  @override
  String get alertSchedule => 'Raspored upozorenja';

  @override
  String get setAvailabilityHours => 'Postavite sate dostupnosti';

  @override
  String get trustedResponders => 'Pouzdani spasioci';

  @override
  String get responseHistory => 'Povijest odgovora';

  @override
  String get privacyAndSafety => 'Privatnost i sigurnost';

  @override
  String get helpAndSupport => 'Pomoć i podrška';

  @override
  String get aboutNayborSos => 'O aplikaciji Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Uvjeti i pravila privatnosti';

  @override
  String get signOut => 'Odjava';

  @override
  String version(String version) {
    return 'Verzija $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS povezuje susjede u hitnim situacijama, stvarajući mrežu brzih spasilaca koji mogu pružiti kritičnu pomoć prije dolaska profesionalnih službi.';

  @override
  String get aboutDialogContent2 =>
      'Svatko može biti heroj. Ne trebate posebnu obuku da spasite život. Ponekad je najmoćnija intervencija jednostavno pojaviti se.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Zatvori';

  @override
  String get signOutQuestion => 'Odjaviti se?';

  @override
  String get signOutConfirm => 'Jeste li sigurni da se želite odjaviti?';

  @override
  String get cancel => 'Otkaži';

  @override
  String get signedOutSuccessfully => 'Uspješno ste se odjavili';

  @override
  String get settings => 'Postavke';

  @override
  String get capabilityWellnessCheck => 'Provjera dobrobiti';

  @override
  String get capabilityQuitCompanion => 'Pratnja za prestanak ovisnosti';

  @override
  String get capabilityActiveBystander => 'Aktivni promatrač';

  @override
  String get translationTier1Label => 'AI prijevod visoke pouzdanosti';

  @override
  String get translationTier2Label => 'AI prijevod dobre pouzdanosti';

  @override
  String get translationTier3Label => 'AI prijevod srednje pouzdanosti';

  @override
  String get translationTier4Label => 'AI prijevod niske pouzdanosti';

  @override
  String get translationTier1Notice =>
      'Ovaj prijevod je generiran AI-jem s visokom pouzdanošću. Preporuča se stručna provjera prije produkcijske upotrebe.';

  @override
  String get translationTier2Notice =>
      'Ovaj prijevod je generiran AI-jem s dobrom pouzdanošću. Preporuča se stručna provjera terminologije kritične za sigurnost, pristanak i hitne situacije.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ovaj prijevod zahtijeva ljudsku provjeru fraza kritičnih za sigurnost u hitnim situacijama prije produkcijske upotrebe.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ovo je samo nacrt prijevoda. Potreban je profesionalni prijevod prije produkcijske upotrebe.';

  @override
  String get selectLanguage => 'Odaberite jezik';

  @override
  String get searchLanguagesHint => 'Pretražite jezike';

  @override
  String translationQualityLabel(String quality) {
    return 'Kvaliteta prijevoda: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Pomozite poboljšati prijevode - prijavite probleme ili doprinijte boljim prijevodima!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
