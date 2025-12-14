// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderní pomocníci a pomocníčky';

  @override
  String get signUpToHelp => 'Zaregistrujte sa, aby ste pomohli svojim susedom';

  @override
  String get enterPhoneNumber => 'Zadajte svoje telefónne číslo na začiatok';

  @override
  String get phoneNumberLabel => 'Telefónne číslo';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Poslať overovací kód';

  @override
  String get enterVerificationCode => 'Zadajte overovací kód';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Poslali sme kód na $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Overovací kód';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Overiť a pokračovať';

  @override
  String get changePhoneNumber => 'Zmeniť telefónne číslo';

  @override
  String get pleaseEnterPhoneNumber => 'Prosím zadajte svoje telefónne číslo';

  @override
  String get pleaseEnterVerificationCode => 'Prosím zadajte overovací kód';

  @override
  String get createProfile => 'Vytvoriť profil';

  @override
  String get tellUsAboutYourself => 'Povedzte nám niečo o sebe';

  @override
  String get profileSetupDescription =>
      'Tieto informácie nám pomôžu spojiť vás so susedmi, ktorí potrebujú pomoc';

  @override
  String get addPhotoOptional => 'Pridať fotografiu (voliteľné)';

  @override
  String get fullNameLabel => 'Celé meno *';

  @override
  String get fullNameHint => 'Ján Novák';

  @override
  String get homeAddressLabel => 'Domáca adresa *';

  @override
  String get homeAddressHint => 'Hlavná 123, Byt 4B';

  @override
  String get homeAddressHelper => 'Používa sa iba na určenie vzdialenosti';

  @override
  String get ageOptionalLabel => 'Vek (voliteľné)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Osoby vo veku 70+ môžu nastaviť šetrné hodiny upozornení';

  @override
  String get yourPrivacyMatters => 'Vaše súkromie je dôležité';

  @override
  String get privacyNotice =>
      'Vaša poloha sa overuje iba počas aktívnych núdzových situácií a nikdy sa dlhodobo neukladá.';

  @override
  String get continueButton => 'Pokračovať';

  @override
  String get pleaseFillRequiredFields => 'Prosím vyplňte všetky povinné polia';

  @override
  String get home => 'Domov';

  @override
  String get alerts => 'Upozornenia';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Pripravený reagovať';

  @override
  String get notAvailable => 'Nie som k dispozícii';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Budete dostávať núdzové upozornenia z okolia';

  @override
  String get toggleOnWhenReady => 'Zapnite keď ste pripravený pomôcť';

  @override
  String get youreNowAvailable => 'Teraz ste k dispozícii na odpovedanie';

  @override
  String get youWontReceiveAlerts => 'Nebudete dostávať upozornenia';

  @override
  String get lifeThreatening247Info =>
      'Upozornenia ohrozujúce život vás budú informovať 24/7. Neurgentné upozornenia rešpektujú váš rozvrh.';

  @override
  String get requestHelp => 'POŽIADAŤ O POMOC';

  @override
  String get yourImpact => 'Váš dopad';

  @override
  String get responses => 'Odpovede';

  @override
  String get avgTime => 'Priem. čas';

  @override
  String get yourCapabilities => 'Vaše schopnosti';

  @override
  String get edit => 'Upraviť';

  @override
  String get communityNetwork => 'Komunitná sieť';

  @override
  String get nearbyResponders => 'Blízki pomocníci';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count k dispozícii';
  }

  @override
  String get coverageRadius => 'Polomer pokrytia';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance míľ';
  }

  @override
  String get activeAlerts => 'Aktívne upozornenia';

  @override
  String get none => 'Žiadne';

  @override
  String get yourLocation => 'Vaša poloha';

  @override
  String get whatDoYouNeedHelpWith => 'S čím potrebujete pomoc?';

  @override
  String get additionalDetailsOptional => 'Ďalšie podrobnosti (voliteľné)';

  @override
  String get describeSituation => 'Opíšte situáciu...';

  @override
  String get alertTrustedRespondersFirst =>
      'Najprv upozorniť moje dôveryhodné osoby';

  @override
  String get trustedRespondersDescription =>
      'Vaši vybraní priatelia/rodina budú upozornení pred všeobecnou komunitou';

  @override
  String sendingAlert(String emergencyType) {
    return 'Odosielam upozornenie: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ODOSLAŤ UPOZORNENIE TERAZ';

  @override
  String get pleaseSelectEmergencyType =>
      'Prosím vyberte typ núdzovej situácie';

  @override
  String get categoryLifeThreatening => '🔴 Ohrozujúce život';

  @override
  String get categorySecuritySafety => '🟠 Bezpečnosť/Ochrana';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgentné časovo citlivé';

  @override
  String get categoryNonLifeThreatening => '🟢 Neohrozujúce život';

  @override
  String get emergencyCprCardiacName => 'KPR / Zástava srdca';

  @override
  String get emergencyCprCardiacDesc => 'Osoba nereaguje a nedýcha';

  @override
  String get emergencyAedName => 'Dodanie AED';

  @override
  String get emergencyAedDesc => 'Okamžite potrebujem AED';

  @override
  String get emergencyOverdoseName => 'Predávkovanie / Naloxón';

  @override
  String get emergencyOverdoseDesc =>
      'Podozrenie na predávkovanie drogami, potrebujem naloxón';

  @override
  String get emergencyChokingName => 'Zadusenie / Heimlichov manéver';

  @override
  String get emergencyChokingDesc => 'Osoba sa dusí a nemôže dýchať';

  @override
  String get emergencyFireName => 'Požiar / Evakuácia';

  @override
  String get emergencyFireDesc =>
      'Požiarová núdzová situácia, potrebujem pomoc s evakuáciou';

  @override
  String get emergencyConsentName => 'Núdzová situácia súhlasu v spálni';

  @override
  String get emergencyConsentDesc =>
      'Bezpečnostné slovo bolo použité, potrebujem svedka';

  @override
  String get emergencyBystanderName => 'Svedok aktívneho zásahu';

  @override
  String get emergencyBystanderDesc =>
      'Potrebujem prítomnosť na deeskaláciu konfliktu';

  @override
  String get emergencyMissingPetName => 'Stratený domáci miláčik';

  @override
  String get emergencyMissingPetDesc =>
      'Domáci miláčik sa stratil alebo utiekol, potrebujem pátraciu skupinu';

  @override
  String get emergencyWellnessCheckName => 'Kontrola zdravia';

  @override
  String get emergencyWellnessCheckDesc =>
      'Preveriť niekoho, kto možno potrebuje pomoc';

  @override
  String get emergencyQuitCompanionName => 'Spoločník pre odvykanie';

  @override
  String get emergencyQuitCompanionDesc =>
      'Bojujem s túžbou, potrebujem podporu';

  @override
  String get emergencyCompanionshipName => 'Spoločnosť';

  @override
  String get emergencyCompanionshipDesc => 'Cítim sa osamelý alebo izolovaný';

  @override
  String get emergency911CoordinationName => 'Koordinácia s tiesňovou linkou';

  @override
  String get emergency911CoordinationDesc =>
      'Potrebujem pomoc s volaním a koordináciou tiesňovej služby';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxón/Narcan';

  @override
  String get myCapabilities => 'Moje schopnosti';

  @override
  String capabilitiesSelected(int count) {
    return '$count vybraných';
  }

  @override
  String get alertSchedule => 'Rozvrh upozornení';

  @override
  String get setAvailabilityHours => 'Nastavte hodiny svojej dostupnosti';

  @override
  String get trustedResponders => 'Dôveryhodní pomocníci';

  @override
  String get responseHistory => 'História odpovedí';

  @override
  String get privacyAndSafety => 'Súkromie a bezpečnosť';

  @override
  String get helpAndSupport => 'Pomoc a podpora';

  @override
  String get aboutNayborSos => 'O Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Podmienky a zásady súkromia';

  @override
  String get signOut => 'Odhlásiť sa';

  @override
  String version(String version) {
    return 'Verzia $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS spája susedov v núdzových situáciách, vytvárajúc sieť rýchlych pomocníkov, ktorí môžu poskytovať kritickú pomoc pred príchodom profesionálnych záchranárov.';

  @override
  String get aboutDialogContent2 =>
      'Každý môže byť hrdinom. Nepotrebujete špeciálne školenie na záchranu života. Niekedy je najsilnejší zásah jednoducho sa ukázať.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Zavrieť';

  @override
  String get signOutQuestion => 'Odhlásiť sa?';

  @override
  String get signOutConfirm => 'Ste si istí, že sa chcete odhlásiť?';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get signedOutSuccessfully => 'Úspešne odhlásený';

  @override
  String get settings => 'Nastavenia';

  @override
  String get capabilityWellnessCheck => 'Kontrola zdravia';

  @override
  String get capabilityQuitCompanion => 'Spoločník pre odvykanie';

  @override
  String get capabilityActiveBystander => 'Aktívny svedok';

  @override
  String get translationTier1Label => 'AI preklad s vysokou spoľahlivosťou';

  @override
  String get translationTier2Label => 'AI preklad s dobrou spoľahlivosťou';

  @override
  String get translationTier3Label => 'AI preklad so strednou spoľahlivosťou';

  @override
  String get translationTier4Label => 'AI preklad s nízkou spoľahlivosťou';

  @override
  String get translationTier1Notice =>
      'Tento preklad bol vygenerovaný AI s vysokou spoľahlivosťou. Pre produkčné použitie sa odporúča odborná kontrola.';

  @override
  String get translationTier2Notice =>
      'Tento preklad bol vygenerovaný AI s dobrou spoľahlivosťou. Pre bezpečnostne kritické súhlasy a núdzovú terminológiu sa odporúča odborná kontrola.';

  @override
  String get translationTier3Notice =>
      '⚠️ Tento preklad vyžaduje ľudskú kontrolu bezpečnostne kritických núdzových fráz pred produkčným použitím.';

  @override
  String get translationTier4Notice =>
      '⚠️ Toto je iba náčrt prekladu. Pred produkčným použitím sa vyžaduje profesionálny preklad.';

  @override
  String get selectLanguage => 'Vybrať jazyk';

  @override
  String get searchLanguagesHint => 'Hľadať jazyky';

  @override
  String translationQualityLabel(String quality) {
    return 'Kvalita prekladu: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Pomôžte vylepšiť preklady - nahláste problémy alebo prispejte lepšími prekladmi!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
