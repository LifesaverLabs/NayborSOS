// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Hedendaagse Minutemanne & Minutevroue';

  @override
  String get signUpToHelp => 'Teken aan om jou bure te help';

  @override
  String get enterPhoneNumber => 'Voer jou selfoonmeer in om te begin';

  @override
  String get phoneNumberLabel => 'Selfoonmeer';

  @override
  String get phoneNumberHint => '(021) 123-4567';

  @override
  String get sendVerificationCode => 'Stuur Verifikasieskode';

  @override
  String get enterVerificationCode => 'Voer verifikasieskode in';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Ons het \'n kode na $phoneNumber gestuur';
  }

  @override
  String get verificationCodeLabel => 'Verifikasieskode';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifieer & Gaan Voort';

  @override
  String get changePhoneNumber => 'Verander selfoonmeer';

  @override
  String get pleaseEnterPhoneNumber => 'Voer asseblief jou selfoonmeer in';

  @override
  String get pleaseEnterVerificationCode =>
      'Voer asseblief die verifikasieskode in';

  @override
  String get createProfile => 'Skep Profiel';

  @override
  String get tellUsAboutYourself => 'Vertel ons van jouself';

  @override
  String get profileSetupDescription =>
      'Hierdie inligting help ons om jou te koppel aan bure wat hulp nodig het';

  @override
  String get addPhotoOptional => 'Voeg foto by (opsioneel)';

  @override
  String get fullNameLabel => 'Volledige Naam *';

  @override
  String get fullNameHint => 'Johan Smith';

  @override
  String get homeAddressLabel => 'Huisadres *';

  @override
  String get homeAddressHint => 'Hoofstraat 123, Woonstel 4B';

  @override
  String get homeAddressHelper => 'Word slegs gebruik vir nabheidskoppeling';

  @override
  String get ageOptionalLabel => 'Ouderdom (opsioneel)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Ouderdomme 70+ kan sagte waarskuwingsure stel';

  @override
  String get yourPrivacyMatters => 'Jou privaatheid is belangrik';

  @override
  String get privacyNotice =>
      'Jou ligging word slegs tydens aktiewe noodgevalle bevra en word nooit langtermyn gestoor nie.';

  @override
  String get continueButton => 'Gaan Voort';

  @override
  String get pleaseFillRequiredFields => 'Vul asseblief alle vereiste velde in';

  @override
  String get home => 'Tuis';

  @override
  String get alerts => 'Waarskuwings';

  @override
  String get profile => 'Profiel';

  @override
  String get availableToRespond => 'Beskikbaar om Te Reageer';

  @override
  String get notAvailable => 'Nie Beskikbaar Nie';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Jy sal noodwaarskuwings in die omgewing ontvang';

  @override
  String get toggleOnWhenReady => 'Skakel aan wanneer jy gereed is om te help';

  @override
  String get youreNowAvailable => 'Jy is nou beskikbaar om te reageer';

  @override
  String get youWontReceiveAlerts => 'Jy sal nie waarskuwings ontvang nie';

  @override
  String get lifeThreatening247Info =>
      'Lewensbedreigende waarskuwings sal jou 24/7 in kennis stel. Nie-dringende waarskuwings respekteer jou skedule.';

  @override
  String get requestHelp => 'VERSOEK HULP';

  @override
  String get yourImpact => 'Jou Impak';

  @override
  String get responses => 'Response';

  @override
  String get avgTime => 'Gem Tyd';

  @override
  String get yourCapabilities => 'Jou Vermoëns';

  @override
  String get edit => 'Wysig';

  @override
  String get communityNetwork => 'Gemeenskapsnetwerk';

  @override
  String get nearbyResponders => 'Nabygeleë Reageerders';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count beskikbaar';
  }

  @override
  String get coverageRadius => 'Dekkingsradius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance myl';
  }

  @override
  String get activeAlerts => 'Aktiewe Waarskuwings';

  @override
  String get none => 'Geen';

  @override
  String get yourLocation => 'Jou Ligging';

  @override
  String get whatDoYouNeedHelpWith => 'Waarmee het jy hulp nodig?';

  @override
  String get additionalDetailsOptional => 'Bykomende Besonderhede (opsioneel)';

  @override
  String get describeSituation => 'Beskryf die situasie...';

  @override
  String get alertTrustedRespondersFirst =>
      'Waarsku my vertroude reageerders eerste';

  @override
  String get trustedRespondersDescription =>
      'Jou gekose vriende/familie sal voor die algemene gemeenskap in kennis gestel word';

  @override
  String sendingAlert(String emergencyType) {
    return 'Stuur waarskuwing: $emergencyType';
  }

  @override
  String get sendAlertNow => 'STUUR WAARSKUWING NOU';

  @override
  String get pleaseSelectEmergencyType => 'Kies asseblief \'n noodgevalletipe';

  @override
  String get categoryLifeThreatening => '🔴 Lewensbedreigende';

  @override
  String get categorySecuritySafety => '🟠 Sekuriteit/Veiligheid';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Dringend Tydsensitief';

  @override
  String get categoryNonLifeThreatening => '🟢 Nie-Lewensbedreigende';

  @override
  String get emergencyCprCardiacName => 'CPR / Hartaanval';

  @override
  String get emergencyCprCardiacDesc =>
      'Persoon is nie responsief nie en asem nie';

  @override
  String get emergencyAedName => 'AED Aflewering';

  @override
  String get emergencyAedDesc => 'Het dadelik \'n AED nodig';

  @override
  String get emergencyOverdoseName => 'Oordosis / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Vermoedelike dwelmoordosis, naloxone nodig';

  @override
  String get emergencyChokingName => 'Verstikking / Heimlich';

  @override
  String get emergencyChokingDesc => 'Persoon verstik en kan nie asem nie';

  @override
  String get emergencyFireName => 'Brand / Ontruiming';

  @override
  String get emergencyFireDesc => 'Brandnoodgeval, het ontruimingshulp nodig';

  @override
  String get emergencyConsentName => 'Slaapkamer Toestemming Noodgeval';

  @override
  String get emergencyConsentDesc => 'Veiligheidswoord gebruik, getuie nodig';

  @override
  String get emergencyBystanderName => 'Aktiewe Omstander Getuie';

  @override
  String get emergencyBystanderDesc =>
      'Het teenwoordigheid nodig om konflik te onteskaleer';

  @override
  String get emergencyMissingPetName => 'Vermiste Troeteldier';

  @override
  String get emergencyMissingPetDesc =>
      'Troeteldier is weg of het weggehardloop, soekspan nodig';

  @override
  String get emergencyWellnessCheckName => 'Welstandtoets';

  @override
  String get emergencyWellnessCheckDesc =>
      'Gaan kyk na iemand wat moontlik hulp nodig het';

  @override
  String get emergencyQuitCompanionName => 'Stop Metgesel';

  @override
  String get emergencyQuitCompanionDesc =>
      'Veg teen verlange, het ondersteuning nodig';

  @override
  String get emergencyCompanionshipName => 'Geselskap';

  @override
  String get emergencyCompanionshipDesc => 'Voel eensaam of geïsoleer';

  @override
  String get emergency911CoordinationName => 'Nooddiens Koördinering';

  @override
  String get emergency911CoordinationDesc =>
      'Het hulp nodig om nooddienste te bel en koördineer';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'My Vermoëns';

  @override
  String capabilitiesSelected(int count) {
    return '$count gekies';
  }

  @override
  String get alertSchedule => 'Waarskuwingskedule';

  @override
  String get setAvailabilityHours => 'Stel jou beskikbaarheidsure';

  @override
  String get trustedResponders => 'Vertroude Reageerders';

  @override
  String get responseHistory => 'Response Geskiedenis';

  @override
  String get privacyAndSafety => 'Privaatheid & Veiligheid';

  @override
  String get helpAndSupport => 'Hulp & Ondersteuning';

  @override
  String get aboutNayborSos => 'Aangaande Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Terme & Privaatheidbeleid';

  @override
  String get signOut => 'Teken Uit';

  @override
  String version(String version) {
    return 'Weergawe $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS koppel bure tydens noodgevalle en skep \'n netwerk van vinnige reageerders wat kritieke hulp kan verskaf voordat professionele eerstereageerders aankom.';

  @override
  String get aboutDialogContent2 =>
      'Almal kan \'n held wees. Jy het nie spesiale opleiding nodig om \'n lewe te red nie. Soms is die kragtigste ingryping om eenvoudig op te daag.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Openbare Voordeel Korporasie';

  @override
  String get close => 'Sluit';

  @override
  String get signOutQuestion => 'Teken Uit?';

  @override
  String get signOutConfirm => 'Is jy seker jy wil uitteken?';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get signedOutSuccessfully => 'Suksesvol uitgeteken';

  @override
  String get settings => 'Instellings';

  @override
  String get capabilityWellnessCheck => 'Welstandtoets';

  @override
  String get capabilityQuitCompanion => 'Stop Metgesel';

  @override
  String get capabilityActiveBystander => 'Aktiewe Omstander';

  @override
  String get translationTier1Label => 'Hoë Vertroue KI Vertaling';

  @override
  String get translationTier2Label => 'Goeie Vertroue KI Vertaling';

  @override
  String get translationTier3Label => 'Middel-Vertroue KI Vertaling';

  @override
  String get translationTier4Label => 'Lae Vertroue KI Vertaling';

  @override
  String get translationTier1Notice =>
      'Hierdie vertaling is KI-gegenereer met hoë vertroue. Professionele hersiening aanbeveel vir produksiegebruik.';

  @override
  String get translationTier2Notice =>
      'Hierdie vertaling is KI-gegenereer met goeie vertroue. Professionele hersiening aanbeveel vir veiligheidskritieke toestemming en noodgeval terminologie.';

  @override
  String get translationTier3Notice =>
      '⚠️ Hierdie vertaling vereis menslike hersiening vir veiligheidskritieke noodgeval frases voor produksiegebruik.';

  @override
  String get translationTier4Notice =>
      '⚠️ Dit is slegs \'n konsepvertaling. Professionele vertaling vereis voor produksiegebruik.';

  @override
  String get selectLanguage => 'Kies Taal';

  @override
  String get searchLanguagesHint => 'Soek tale';

  @override
  String translationQualityLabel(String quality) {
    return 'Vertalingskwaliteit: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Help om vertalings te verbeter - rapporteer probleme of dra beter vertalings by!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
