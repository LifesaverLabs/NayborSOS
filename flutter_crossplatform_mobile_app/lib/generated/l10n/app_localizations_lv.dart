// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Mūsdienu Brīvprātīgie Palīgi';

  @override
  String get signUpToHelp => 'Reģistrējieties, lai palīdzētu saviem kaimiņiem';

  @override
  String get enterPhoneNumber => 'Ievadiet savu tālruņa numuru, lai sāktu';

  @override
  String get phoneNumberLabel => 'Tālruņa numurs';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Nosūtīt verifikācijas kodu';

  @override
  String get enterVerificationCode => 'Ievadiet verifikācijas kodu';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Nosūtījām kodu uz $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Verifikācijas kods';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verificēt un turpināt';

  @override
  String get changePhoneNumber => 'Mainīt tālruņa numuru';

  @override
  String get pleaseEnterPhoneNumber => 'Lūdzu, ievadiet savu tālruņa numuru';

  @override
  String get pleaseEnterVerificationCode =>
      'Lūdzu, ievadiet verifikācijas kodu';

  @override
  String get createProfile => 'Izveidot profilu';

  @override
  String get tellUsAboutYourself => 'Pastāstiet mums par sevi';

  @override
  String get profileSetupDescription =>
      'Šī informācija palīdz mums savienot jūs ar kaimiņiem, kuriem nepieciešama palīdzība';

  @override
  String get addPhotoOptional => 'Pievienot fotogrāfiju (nav obligāti)';

  @override
  String get fullNameLabel => 'Pilns vārds *';

  @override
  String get fullNameHint => 'Jānis Bērziņš';

  @override
  String get homeAddressLabel => 'Mājas adrese *';

  @override
  String get homeAddressHint => 'Brīvības iela 123, dzīv. 4B';

  @override
  String get homeAddressHelper => 'Izmanto tikai attāluma aprēķināšanai';

  @override
  String get ageOptionalLabel => 'Vecums (nav obligāti)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70+ gadus veciem cilvēkiem ir iespējams iestatīt mierīgas brīdinājumu stundas';

  @override
  String get yourPrivacyMatters => 'Jūsu privātums ir svarīgs';

  @override
  String get privacyNotice =>
      'Jūsu atrašanās vieta tiek vaicāta tikai aktīvu ārkārtas situāciju laikā un nekad netiek ilgtermiņā saglabāta.';

  @override
  String get continueButton => 'Turpināt';

  @override
  String get pleaseFillRequiredFields =>
      'Lūdzu, aizpildiet visus obligātos laukus';

  @override
  String get home => 'Sākums';

  @override
  String get alerts => 'Brīdinājumi';

  @override
  String get profile => 'Profils';

  @override
  String get availableToRespond => 'Pieejams atbildēt';

  @override
  String get notAvailable => 'Nav pieejams';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Jūs saņemsiet ārkārtas brīdinājumus tuvumā';

  @override
  String get toggleOnWhenReady => 'Ieslēdziet, kad gatavs palīdzēt';

  @override
  String get youreNowAvailable => 'Jūs tagad esat pieejams atbildēt';

  @override
  String get youWontReceiveAlerts => 'Jūs nesaņemsiet brīdinājumus';

  @override
  String get lifeThreatening247Info =>
      'Dzīvībai bīstami brīdinājumi jūs paziņos 24/7. Ne-steidzami brīdinājumi ievēros jūsu grafiku.';

  @override
  String get requestHelp => 'PIEPRASĪT PALĪDZĪBU';

  @override
  String get yourImpact => 'Jūsu ieguldījums';

  @override
  String get responses => 'Atbildes';

  @override
  String get avgTime => 'Vidējais laiks';

  @override
  String get yourCapabilities => 'Jūsu spējas';

  @override
  String get edit => 'Rediģēt';

  @override
  String get communityNetwork => 'Kopienas tīkls';

  @override
  String get nearbyResponders => 'Tuvumā esošie palīgi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count pieejami';
  }

  @override
  String get coverageRadius => 'Pārklājuma rādiuss';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance jūdzes';
  }

  @override
  String get activeAlerts => 'Aktīvi brīdinājumi';

  @override
  String get none => 'Nav';

  @override
  String get yourLocation => 'Jūsu atrašanās vieta';

  @override
  String get whatDoYouNeedHelpWith => 'Ar ko jums nepieciešama palīdzība?';

  @override
  String get additionalDetailsOptional => 'Papildu informācija (nav obligāti)';

  @override
  String get describeSituation => 'Aprakstiet situāciju...';

  @override
  String get alertTrustedRespondersFirst =>
      'Vispirms brīdināt manus uzticamos palīgus';

  @override
  String get trustedRespondersDescription =>
      'Jūsu izvēlētie draugi/ģimenes locekļi tiks paziņoti pirms vispārējās kopienas';

  @override
  String sendingAlert(String emergencyType) {
    return 'Sūta brīdinājumu: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SŪTĪT BRĪDINĀJUMU TAGAD';

  @override
  String get pleaseSelectEmergencyType =>
      'Lūdzu, izvēlieties ārkārtas situācijas veidu';

  @override
  String get categoryLifeThreatening => '🔴 Dzīvībai bīstams';

  @override
  String get categorySecuritySafety => '🟠 Drošība';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Steidzams';

  @override
  String get categoryNonLifeThreatening => '🟢 Nav dzīvībai bīstams';

  @override
  String get emergencyCprCardiacName => 'Sirds masāža / Sirds apstāšanās';

  @override
  String get emergencyCprCardiacDesc => 'Persona nereaģē un neelpo';

  @override
  String get emergencyAedName => 'AED piegāde';

  @override
  String get emergencyAedDesc => 'Nepieciešams AED nekavējoties';

  @override
  String get emergencyOverdoseName => 'Pārdozēšana / Naloksons';

  @override
  String get emergencyOverdoseDesc =>
      'Iespējama narkotiku pārdozēšana, nepieciešams naloksons';

  @override
  String get emergencyChokingName => 'Nosmakšana / Heimliha paņēmiens';

  @override
  String get emergencyChokingDesc => 'Persona nosmācas un nevar elpot';

  @override
  String get emergencyFireName => 'Ugunsgrēks / Evakuācija';

  @override
  String get emergencyFireDesc =>
      'Ugunsgrēka ārkārtas situācija, nepieciešama palīdzība evakuācijai';

  @override
  String get emergencyConsentName =>
      'Guļamistabas piekrišanas ārkārtas situācija';

  @override
  String get emergencyConsentDesc =>
      'Izsaukts drošības vārds, nepieciešams liecinieks';

  @override
  String get emergencyBystanderName => 'Aktīva blakusstāvētāja liecība';

  @override
  String get emergencyBystanderDesc =>
      'Nepieciešama klātbūtne konflikta deeskalācijai';

  @override
  String get emergencyMissingPetName => 'Pazudis mājdzīvnieks';

  @override
  String get emergencyMissingPetDesc =>
      'Mājdzīvnieks pazudis vai aizbēdzis, nepieciešama meklēšanas grupa';

  @override
  String get emergencyWellnessCheckName => 'Veselības pārbaude';

  @override
  String get emergencyWellnessCheckDesc =>
      'Pārbaudīt kādu, kam var būt nepieciešama palīdzība';

  @override
  String get emergencyQuitCompanionName => 'Atteikšanās atbalstītājs';

  @override
  String get emergencyQuitCompanionDesc =>
      'Cīnās ar kārību, nepieciešams atbalsts';

  @override
  String get emergencyCompanionshipName => 'Kompānija';

  @override
  String get emergencyCompanionshipDesc => 'Jūtos vientuļi vai izolēti';

  @override
  String get emergency911CoordinationName => '112 koordinācija';

  @override
  String get emergency911CoordinationDesc =>
      'Nepieciešama palīdzība zvanīt un koordinēt ar 112';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloksons/Narkans';

  @override
  String get myCapabilities => 'Manas spējas';

  @override
  String capabilitiesSelected(int count) {
    return '$count izvēlētas';
  }

  @override
  String get alertSchedule => 'Brīdinājumu grafiks';

  @override
  String get setAvailabilityHours => 'Iestatiet savas pieejamības stundas';

  @override
  String get trustedResponders => 'Uzticamie palīgi';

  @override
  String get responseHistory => 'Atbilžu vēsture';

  @override
  String get privacyAndSafety => 'Privātums un drošība';

  @override
  String get helpAndSupport => 'Palīdzība un atbalsts';

  @override
  String get aboutNayborSos => 'Par Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Noteikumi un privātuma politika';

  @override
  String get signOut => 'Iziet';

  @override
  String version(String version) {
    return 'Versija $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS savieno kaimiņus ārkārtas situācijās, radot ātru palīgu tīklu, kas var sniegt kritisko palīdzību pirms ierašanās profesionālajiem glābējiem.';

  @override
  String get aboutDialogContent2 =>
      'Ikviens var būt varonis. Jums nav nepieciešama speciāla apmācība, lai glābtu dzīvību. Dažkārt visspēcīgākā iejaukšanās ir vienkārši ierasties.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Aizvērt';

  @override
  String get signOutQuestion => 'Iziet?';

  @override
  String get signOutConfirm => 'Vai tiešām vēlaties iziet?';

  @override
  String get cancel => 'Atcelt';

  @override
  String get signedOutSuccessfully => 'Veiksmīgi izgāji';

  @override
  String get settings => 'Iestatījumi';

  @override
  String get capabilityWellnessCheck => 'Veselības pārbaude';

  @override
  String get capabilityQuitCompanion => 'Atteikšanās atbalstītājs';

  @override
  String get capabilityActiveBystander => 'Aktīvs blakusstāvētājs';

  @override
  String get translationTier1Label => 'Augstas ticamības MI tulkojums';

  @override
  String get translationTier2Label => 'Labas ticamības MI tulkojums';

  @override
  String get translationTier3Label => 'Vidējas ticamības MI tulkojums';

  @override
  String get translationTier4Label => 'Zemas ticamības MI tulkojums';

  @override
  String get translationTier1Notice =>
      'Šis tulkojums tika ģenerēts ar MI ar augstu ticamību. Ieteicama profesionāla pārskatīšana ražošanas lietošanai.';

  @override
  String get translationTier2Notice =>
      'Šis tulkojums tika ģenerēts ar MI ar labu ticamību. Ieteicama profesionāla pārskatīšana drošībai kritiskiem piekrišanas un ārkārtas terminiem.';

  @override
  String get translationTier3Notice =>
      '⚠️ Šis tulkojums prasa cilvēka pārskatīšanu drošībai kritiskām ārkārtas frāzēm pirms ražošanas lietošanas.';

  @override
  String get translationTier4Notice =>
      '⚠️ Šis ir tikai melnraksta tulkojums. Nepieciešams profesionāls tulkojums pirms ražošanas lietošanas.';

  @override
  String get selectLanguage => 'Izvēlieties valodu';

  @override
  String get searchLanguagesHint => 'Meklēt valodas';

  @override
  String translationQualityLabel(String quality) {
    return 'Tulkojuma kvalitāte: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Palīdziet uzlabot tulkojumus - ziņojiet par problēmām vai sniedziet labākus tulkojumus!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
