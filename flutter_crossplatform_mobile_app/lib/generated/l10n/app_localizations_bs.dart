// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Savremeni minutmani i minutžene';

  @override
  String get signUpToHelp => 'Prijavite se da pomognete susjedima';

  @override
  String get enterPhoneNumber => 'Unesite broj telefona da počnete';

  @override
  String get phoneNumberLabel => 'Broj telefona';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Pošaljite kod za verifikaciju';

  @override
  String get enterVerificationCode => 'Unesite kod za verifikaciju';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Poslali smo kod na $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kod za verifikaciju';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifikujte i nastavite';

  @override
  String get changePhoneNumber => 'Promijenite broj telefona';

  @override
  String get pleaseEnterPhoneNumber => 'Molimo unesite broj telefona';

  @override
  String get pleaseEnterVerificationCode =>
      'Molimo unesite kod za verifikaciju';

  @override
  String get createProfile => 'Kreirajte profil';

  @override
  String get tellUsAboutYourself => 'Recite nam o sebi';

  @override
  String get profileSetupDescription =>
      'Ove informacije nam pomažu da vas povežemo sa susjedima koji trebaju pomoć';

  @override
  String get addPhotoOptional => 'Dodajte fotografiju (opciono)';

  @override
  String get fullNameLabel => 'Ime i prezime *';

  @override
  String get fullNameHint => 'Marko Marković';

  @override
  String get homeAddressLabel => 'Kućna adresa *';

  @override
  String get homeAddressHint => 'Ulica braće Ribnikara 123, Stan 4B';

  @override
  String get homeAddressHelper => 'Koristi se samo za prepoznavanje blizine';

  @override
  String get ageOptionalLabel => 'Godine (opciono)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Osobe 70+ godina mogu postaviti blage sate upozorenja';

  @override
  String get yourPrivacyMatters => 'Vaša privatnost je važna';

  @override
  String get privacyNotice =>
      'Vaša lokacija se traži samo tokom aktivnih hitnih slučajeva i nikad se ne čuva dugoročno.';

  @override
  String get continueButton => 'Nastavite';

  @override
  String get pleaseFillRequiredFields => 'Molimo popunite sva obavezna polja';

  @override
  String get home => 'Početna';

  @override
  String get alerts => 'Upozorenja';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Dostupan za odgovor';

  @override
  String get notAvailable => 'Nije dostupan';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Primićete hitna upozorenja u blizini';

  @override
  String get toggleOnWhenReady => 'Uključite kad ste spremni pomoći';

  @override
  String get youreNowAvailable => 'Sada ste dostupni za odgovor';

  @override
  String get youWontReceiveAlerts => 'Nećete primati upozorenja';

  @override
  String get lifeThreatening247Info =>
      'Upozorenja koja ugrožavaju život će vas obavijestiti 24/7. Ne-hitna upozorenja poštuju vaš raspored.';

  @override
  String get requestHelp => 'ZATRAŽITE POMOĆ';

  @override
  String get yourImpact => 'Vaš uticaj';

  @override
  String get responses => 'Odgovori';

  @override
  String get avgTime => 'Prosj. vrijeme';

  @override
  String get yourCapabilities => 'Vaše sposobnosti';

  @override
  String get edit => 'Uredite';

  @override
  String get communityNetwork => 'Mreža zajednice';

  @override
  String get nearbyResponders => 'Obližnji odgovarači';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count dostupno';
  }

  @override
  String get coverageRadius => 'Radijus pokrivenosti';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance milja';
  }

  @override
  String get activeAlerts => 'Aktivna upozorenja';

  @override
  String get none => 'Nema';

  @override
  String get yourLocation => 'Vaša lokacija';

  @override
  String get whatDoYouNeedHelpWith => 'Za što vam treba pomoć?';

  @override
  String get additionalDetailsOptional => 'Dodatni detalji (opciono)';

  @override
  String get describeSituation => 'Opišite situaciju...';

  @override
  String get alertTrustedRespondersFirst =>
      'Prvo obavijesti moje povjerljive odgovarače';

  @override
  String get trustedRespondersDescription =>
      'Vaši odabrani prijatelji/porodica će biti obavješteni prije opće zajednice';

  @override
  String sendingAlert(String emergencyType) {
    return 'Šaljem upozorenje: $emergencyType';
  }

  @override
  String get sendAlertNow => 'POŠALJITE UPOZORENJE ODMAH';

  @override
  String get pleaseSelectEmergencyType => 'Molimo odaberite tip hitnog slučaja';

  @override
  String get categoryLifeThreatening => '🔴 Ugrožava život';

  @override
  String get categorySecuritySafety => '🟠 Sigurnost/Bezbjednost';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Hitno vremenski osjetljivo';

  @override
  String get categoryNonLifeThreatening => '🟢 Ne ugrožava život';

  @override
  String get emergencyCprCardiacName => 'KPR / srčani zastoj';

  @override
  String get emergencyCprCardiacDesc => 'Osoba ne reaguje i ne diše';

  @override
  String get emergencyAedName => 'Dostava AED-a';

  @override
  String get emergencyAedDesc => 'Potreban AED odmah';

  @override
  String get emergencyOverdoseName => 'Predoziranje / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Sumnja na predoziranje drogama, potreban nalokson';

  @override
  String get emergencyChokingName => 'Gušenje / Heimlich';

  @override
  String get emergencyChokingDesc => 'Osoba se guši i ne može disati';

  @override
  String get emergencyFireName => 'Požar / Evakuacija';

  @override
  String get emergencyFireDesc =>
      'Hitni slučaj požara, potrebna pomoć za evakuaciju';

  @override
  String get emergencyConsentName => 'Hitni slučaj pristanka u spavaćoj sobi';

  @override
  String get emergencyConsentDesc =>
      'Sigurna riječ je izgovorena, potreban svjedok';

  @override
  String get emergencyBystanderName => 'Aktivni posmatrač svjedok';

  @override
  String get emergencyBystanderDesc =>
      'Potrebno prisustvo za smiravanje konflikta';

  @override
  String get emergencyMissingPetName => 'Nestao ljubimac';

  @override
  String get emergencyMissingPetDesc =>
      'Ljubimac je izgubljen ili pobjegao, potrebna potraga';

  @override
  String get emergencyWellnessCheckName => 'Provjera zdravlja';

  @override
  String get emergencyWellnessCheckDesc =>
      'Provjeriti nekoga kome možda treba pomoć';

  @override
  String get emergencyQuitCompanionName => 'Pratilac za prestanak';

  @override
  String get emergencyQuitCompanionDesc =>
      'Borim se s pojavom, potrebna podrška';

  @override
  String get emergencyCompanionshipName => 'Druženje';

  @override
  String get emergencyCompanionshipDesc => 'Osjećam se usamljeno ili izolovano';

  @override
  String get emergency911CoordinationName => 'Koordinacija hitnih službi';

  @override
  String get emergency911CoordinationDesc =>
      'Potrebna pomoć za pozivanje i koordinaciju hitnih službi';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narkan';

  @override
  String get myCapabilities => 'Moje sposobnosti';

  @override
  String capabilitiesSelected(int count) {
    return '$count odabrano';
  }

  @override
  String get alertSchedule => 'Raspored upozorenja';

  @override
  String get setAvailabilityHours => 'Postavite vaše sate dostupnosti';

  @override
  String get trustedResponders => 'Povjerljivi odgovarači';

  @override
  String get responseHistory => 'Povijest odgovora';

  @override
  String get privacyAndSafety => 'Privatnost i sigurnost';

  @override
  String get helpAndSupport => 'Pomoć i podrška';

  @override
  String get aboutNayborSos => 'O aplikaciji Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Uslovi i politika privatnosti';

  @override
  String get signOut => 'Odjavite se';

  @override
  String version(String version) {
    return 'Verzija $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS povezuje susjede u hitnim slučajevima, stvarajući mrežu brzih odgovarača koji mogu pružiti kritičnu pomoć prije dolaska profesionalnih spasilaca.';

  @override
  String get aboutDialogContent2 =>
      'Svi mogu biti heroj. Ne trebate posebnu obuku da spasите život. Ponekad je najmoćnija intervencija jednostavno pojavljivanje.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Zatvorite';

  @override
  String get signOutQuestion => 'Odjaviti se?';

  @override
  String get signOutConfirm => 'Jeste li sigurni da se želite odjaviti?';

  @override
  String get cancel => 'Otkazati';

  @override
  String get signedOutSuccessfully => 'Uspješno ste se odjavili';

  @override
  String get settings => 'Postavke';

  @override
  String get capabilityWellnessCheck => 'Provjera zdravlja';

  @override
  String get capabilityQuitCompanion => 'Pratilac za prestanak';

  @override
  String get capabilityActiveBystander => 'Aktivni posmatrač';

  @override
  String get translationTier1Label => 'AI prijevod visokog povjerenja';

  @override
  String get translationTier2Label => 'AI prijevod dobrog povjerenja';

  @override
  String get translationTier3Label => 'AI prijevod srednjeg povjerenja';

  @override
  String get translationTier4Label => 'AI prijevod niskog povjerenja';

  @override
  String get translationTier1Notice =>
      'Ovaj prijevod je napravila AI s visokim povjerenjem. Preporučuje se profesionalna provjera za produkcijsku upotrebu.';

  @override
  String get translationTier2Notice =>
      'Ovaj prijevod je napravila AI s dobrim povjerenjem. Preporučuje se profesionalna provjera za sigurnosno-kritičnu terminologiju pristanka i hitnih slučajeva.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ovaj prijevod zahtijeva ljudsku provjeru za sigurnosno-kritične hitne fraze prije produkcijske upotrebe.';

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
      'Pomozite poboljšati prijevode - prijavite probleme ili doprinijeti boljim prijevodima!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
