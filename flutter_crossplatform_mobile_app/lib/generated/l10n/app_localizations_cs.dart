// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderní minutemani a minutewomen';

  @override
  String get signUpToHelp => 'Zaregistrujte se a pomozte svým sousedům';

  @override
  String get enterPhoneNumber => 'Zadejte své telefonní číslo pro začátek';

  @override
  String get phoneNumberLabel => 'Telefonní číslo';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Odeslat ověřovací kód';

  @override
  String get enterVerificationCode => 'Zadejte ověřovací kód';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Odeslali jsme kód na $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Ověřovací kód';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Ověřit a pokračovat';

  @override
  String get changePhoneNumber => 'Změnit telefonní číslo';

  @override
  String get pleaseEnterPhoneNumber => 'Zadejte prosím své telefonní číslo';

  @override
  String get pleaseEnterVerificationCode => 'Zadejte prosím ověřovací kód';

  @override
  String get createProfile => 'Vytvořit profil';

  @override
  String get tellUsAboutYourself => 'Řekněte nám o sobě';

  @override
  String get profileSetupDescription =>
      'Tyto informace nám pomáhají spojit vás se sousedy, kteří potřebují pomoc';

  @override
  String get addPhotoOptional => 'Přidat fotografii (volitelné)';

  @override
  String get fullNameLabel => 'Celé jméno *';

  @override
  String get fullNameHint => 'Jan Novák';

  @override
  String get homeAddressLabel => 'Domácí adresa *';

  @override
  String get homeAddressHint => 'Hlavní 123, byt 4B';

  @override
  String get homeAddressHelper =>
      'Používá se pouze pro párování podle blízkosti';

  @override
  String get ageOptionalLabel => 'Věk (volitelné)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Osoby 70+ si mohou nastavit klidné hodiny upozornění';

  @override
  String get yourPrivacyMatters => 'Vaše soukromí je důležité';

  @override
  String get privacyNotice =>
      'Vaše poloha se zjišťuje pouze během aktivních nouzových situací a nikdy se neukládá dlouhodobě.';

  @override
  String get continueButton => 'Pokračovat';

  @override
  String get pleaseFillRequiredFields => 'Vyplňte prosím všechna povinná pole';

  @override
  String get home => 'Domů';

  @override
  String get alerts => 'Upozornění';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Dostupný k reakci';

  @override
  String get notAvailable => 'Nedostupný';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Budete dostávat nouzová upozornění z okolí';

  @override
  String get toggleOnWhenReady => 'Zapněte, až budete připraveni pomoci';

  @override
  String get youreNowAvailable => 'Nyní jste dostupný k reakci';

  @override
  String get youWontReceiveAlerts => 'Nebudete dostávat upozornění';

  @override
  String get lifeThreatening247Info =>
      'Upozornění na ohrožení života vás budou upozorňovat 24/7. Nenaléhavá upozornění respektují váš rozvrh.';

  @override
  String get requestHelp => 'POŽÁDAT O POMOC';

  @override
  String get yourImpact => 'Váš dopad';

  @override
  String get responses => 'Reakce';

  @override
  String get avgTime => 'Průměrný čas';

  @override
  String get yourCapabilities => 'Vaše schopnosti';

  @override
  String get edit => 'Upravit';

  @override
  String get communityNetwork => 'Komunitní síť';

  @override
  String get nearbyResponders => 'Záchranáři v okolí';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count dostupných';
  }

  @override
  String get coverageRadius => 'Poloměr pokrytí';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Aktivní upozornění';

  @override
  String get none => 'Žádné';

  @override
  String get yourLocation => 'Vaše poloha';

  @override
  String get whatDoYouNeedHelpWith => 'S čím potřebujete pomoc?';

  @override
  String get additionalDetailsOptional => 'Další podrobnosti (volitelné)';

  @override
  String get describeSituation => 'Popište situaci...';

  @override
  String get alertTrustedRespondersFirst =>
      'Nejprve upozornit mé důvěryhodné záchranáře';

  @override
  String get trustedRespondersDescription =>
      'Vaši vybraní přátelé/rodina budou upozorněni před širší komunitou';

  @override
  String sendingAlert(String emergencyType) {
    return 'Odesílání upozornění: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ODESLAT UPOZORNĚNÍ NYNÍ';

  @override
  String get pleaseSelectEmergencyType => 'Vyberte prosím typ nouzové situace';

  @override
  String get categoryLifeThreatening => '🔴 Ohrožení života';

  @override
  String get categorySecuritySafety => '🟠 Bezpečnost/Ochrana';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Naléhavé časově citlivé';

  @override
  String get categoryNonLifeThreatening => '🟢 Neohrožující život';

  @override
  String get emergencyCprCardiacName => 'KPR / Srdeční zástava';

  @override
  String get emergencyCprCardiacDesc => 'Osoba nereaguje a nedýchá';

  @override
  String get emergencyAedName => 'Dodání AED';

  @override
  String get emergencyAedDesc => 'Potřebuji AED okamžitě';

  @override
  String get emergencyOverdoseName => 'Předávkování / Naloxon';

  @override
  String get emergencyOverdoseDesc =>
      'Podezření na předávkování drogami, potřebuji naloxon';

  @override
  String get emergencyChokingName => 'Dušení / Heimlichův manévr';

  @override
  String get emergencyChokingDesc => 'Osoba se dusí a nemůže dýchat';

  @override
  String get emergencyFireName => 'Požár / Evakuace';

  @override
  String get emergencyFireDesc =>
      'Požární nouzová situace, potřebuji pomoc s evakuací';

  @override
  String get emergencyConsentName => 'Nouzová situace se souhlasem v ložnici';

  @override
  String get emergencyConsentDesc =>
      'Bezpečnostní slovo použito, potřebuji svědka';

  @override
  String get emergencyBystanderName => 'Aktivní svědek';

  @override
  String get emergencyBystanderDesc =>
      'Potřebuji přítomnost k deeskalaci konfliktu';

  @override
  String get emergencyMissingPetName => 'Pohřešované zvíře';

  @override
  String get emergencyMissingPetDesc =>
      'Zvíře se ztratilo nebo uteklo, potřebuji pátrací skupinu';

  @override
  String get emergencyWellnessCheckName => 'Kontrola zdraví';

  @override
  String get emergencyWellnessCheckDesc =>
      'Zkontrolovat někoho, kdo možná potřebuje pomoc';

  @override
  String get emergencyQuitCompanionName => 'Společník při odvykání';

  @override
  String get emergencyQuitCompanionDesc => 'Bojuji s touhou, potřebuji podporu';

  @override
  String get emergencyCompanionshipName => 'Společnost';

  @override
  String get emergencyCompanionshipDesc => 'Cítím se osamělý nebo izolovaný';

  @override
  String get emergency911CoordinationName => 'Koordinace tísňové linky';

  @override
  String get emergency911CoordinationDesc =>
      'Potřebuji pomoc s voláním a koordinací tísňové služby';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxon/Narcan';

  @override
  String get myCapabilities => 'Moje schopnosti';

  @override
  String capabilitiesSelected(int count) {
    return '$count vybráno';
  }

  @override
  String get alertSchedule => 'Rozvrh upozornění';

  @override
  String get setAvailabilityHours => 'Nastavte hodiny své dostupnosti';

  @override
  String get trustedResponders => 'Důvěryhodní záchranáři';

  @override
  String get responseHistory => 'Historie reakcí';

  @override
  String get privacyAndSafety => 'Soukromí a bezpečnost';

  @override
  String get helpAndSupport => 'Pomoc a podpora';

  @override
  String get aboutNayborSos => 'O aplikaci Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Podmínky a zásady ochrany soukromí';

  @override
  String get signOut => 'Odhlásit se';

  @override
  String version(String version) {
    return 'Verze $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS spojuje sousedy v nouzových situacích a vytváří síť rychlých záchranářů, kteří mohou poskytnout kritickou pomoc před příjezdem profesionálních záchranářů.';

  @override
  String get aboutDialogContent2 =>
      'Každý může být hrdinou. Nepotřebujete speciální výcvik k záchraně života. Někdy je nejsilnějším zásahem jednoduše se objevit.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Zavřít';

  @override
  String get signOutQuestion => 'Odhlásit se?';

  @override
  String get signOutConfirm => 'Jste si jisti, že se chcete odhlásit?';

  @override
  String get cancel => 'Zrušit';

  @override
  String get signedOutSuccessfully => 'Úspěšně odhlášeno';

  @override
  String get settings => 'Nastavení';

  @override
  String get capabilityWellnessCheck => 'Kontrola zdraví';

  @override
  String get capabilityQuitCompanion => 'Společník při odvykání';

  @override
  String get capabilityActiveBystander => 'Aktivní svědek';

  @override
  String get translationTier1Label => 'AI překlad s vysokou spolehlivostí';

  @override
  String get translationTier2Label => 'AI překlad s dobrou spolehlivostí';

  @override
  String get translationTier3Label => 'AI překlad se střední spolehlivostí';

  @override
  String get translationTier4Label => 'AI překlad s nízkou spolehlivostí';

  @override
  String get translationTier1Notice =>
      'Tento překlad byl vytvořen AI s vysokou spolehlivostí. Pro produkční použití se doporučuje profesionální kontrola.';

  @override
  String get translationTier2Notice =>
      'Tento překlad byl vytvořen AI s dobrou spolehlivostí. Pro bezpečnostně kritickou terminologii souhlasu a nouzových situací se doporučuje profesionální kontrola.';

  @override
  String get translationTier3Notice =>
      '⚠️ Tento překlad vyžaduje lidskou kontrolu pro bezpečnostně kritické nouzové fráze před produkčním použitím.';

  @override
  String get translationTier4Notice =>
      '⚠️ Toto je pouze návrh překladu. Před produkčním použitím je vyžadován profesionální překlad.';

  @override
  String get selectLanguage => 'Vyberte jazyk';

  @override
  String get searchLanguagesHint => 'Hledat jazyky';

  @override
  String translationQualityLabel(String quality) {
    return 'Kvalita překladu: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Pomozte zlepšit překlady - nahlaste problémy nebo přispějte lepšími překlady!';
}
