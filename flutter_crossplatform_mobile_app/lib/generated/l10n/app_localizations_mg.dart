// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malagasy (`mg`).
class AppLocalizationsMg extends AppLocalizations {
  AppLocalizationsMg([String locale = 'mg']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Mpiaro ankehitriny - lehilahy sy vehivavy';

  @override
  String get signUpToHelp =>
      'Midira ho mpikambana mba hanampy ny mpiara-monina aminao';

  @override
  String get enterPhoneNumber =>
      'Ampidiro ny nomerao telefaonanao mba hanombohana';

  @override
  String get phoneNumberLabel => 'Nomerao Telefaona';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Alefaso ny Code Famarinana';

  @override
  String get enterVerificationCode => 'Ampidiro ny code famarinana';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Nandefa code tany amin\'ny $phoneNumber izahay';
  }

  @override
  String get verificationCodeLabel => 'Code Famarinana';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Hamarino ary Tohizo';

  @override
  String get changePhoneNumber => 'Ovao ny nomerao telefaona';

  @override
  String get pleaseEnterPhoneNumber =>
      'Mba ampidiro ny nomerao telefaonanao azafady';

  @override
  String get pleaseEnterVerificationCode =>
      'Mba ampidiro ny code famarinana azafady';

  @override
  String get createProfile => 'Mamorona Profil';

  @override
  String get tellUsAboutYourself => 'Lazao aminay ny momba anao';

  @override
  String get profileSetupDescription =>
      'Ireo fampahalalana ireo dia manampy anay hampifandray anao amin\'ny mpiara-monina mila fanampiana';

  @override
  String get addPhotoOptional => 'Ampio sary (tsy tsy maintsy)';

  @override
  String get fullNameLabel => 'Anarana Feno *';

  @override
  String get fullNameHint => 'Rakoto Rabe';

  @override
  String get homeAddressLabel => 'Adiresy ao an-trano *';

  @override
  String get homeAddressHint => 'Lot 123 Lalana Lehibe, Efitra 4B';

  @override
  String get homeAddressHelper =>
      'Ampiasaina ho an\'ny fifandraisana akaiky fotsiny';

  @override
  String get ageOptionalLabel => 'Taona (tsy tsy maintsy)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Ny 70 taona miakatra dia afaka manao ora fanairana malefaka';

  @override
  String get yourPrivacyMatters => 'Zava-dehibe ny fiainana manokana';

  @override
  String get privacyNotice =>
      'Ny toerana misy anao dia asaina mandritra ny vonjy maika ihany ary tsy tehirizina maharitra.';

  @override
  String get continueButton => 'Tohizo';

  @override
  String get pleaseFillRequiredFields =>
      'Mba fenoy ny sehatra takiana rehetra azafady';

  @override
  String get home => 'Fandraisana';

  @override
  String get alerts => 'Fanairana';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Vonona Hamaly';

  @override
  String get notAvailable => 'Tsy Misy';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Hahazo fanairana maika eo akaikiny ianao';

  @override
  String get toggleOnWhenReady => 'Alefaso rehefa vonona hanampy';

  @override
  String get youreNowAvailable => 'Vonona hamaly ianao izao';

  @override
  String get youWontReceiveAlerts => 'Tsy hahazo fanairana ianao';

  @override
  String get lifeThreatening247Info =>
      'Ny fanairana mampidi-doza amin\'ny fiainana dia hampandre anao 24/7. Ny fanairana tsy maika dia manaja ny fandaharana ataonao.';

  @override
  String get requestHelp => 'MANGATAKA FANAMPIANA';

  @override
  String get yourImpact => 'Ny Fiantraikanao';

  @override
  String get responses => 'Valin-teny';

  @override
  String get avgTime => 'Fotoana Salan\'isa';

  @override
  String get yourCapabilities => 'Ny Fahaizanao';

  @override
  String get edit => 'Ovao';

  @override
  String get communityNetwork => 'Tambajotran\'ny Vondrom-piarahamonina';

  @override
  String get nearbyResponders => 'Mpiara-miasa eo akaikiny';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count misy';
  }

  @override
  String get coverageRadius => 'Salan\'ny Fandrakofana';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilaometatra';
  }

  @override
  String get activeAlerts => 'Fanairana Mavitrika';

  @override
  String get none => 'Tsy misy';

  @override
  String get yourLocation => 'Ny Toerana misy anao';

  @override
  String get whatDoYouNeedHelpWith => 'Inona no mila fanampiana?';

  @override
  String get additionalDetailsOptional =>
      'Antsipirihan-pampahalalana fanampiny (tsy tsy maintsy)';

  @override
  String get describeSituation => 'Hazavao ny toe-javatra...';

  @override
  String get alertTrustedRespondersFirst =>
      'Ampandrenesina aloha ny mpiara-miasa matoky';

  @override
  String get trustedRespondersDescription =>
      'Ny namana/fianakavianao voafidy dia hampandrenesina alohan\'ny vondrom-piarahamonina ankapobeny';

  @override
  String sendingAlert(String emergencyType) {
    return 'Mandefa fanairana: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ALEFASO NY FANAIRANA ANKEHITRINY';

  @override
  String get pleaseSelectEmergencyType => 'Mba fidio ny karazana maika azafady';

  @override
  String get categoryLifeThreatening => '🔴 Mampidi-doza amin\'ny Fiainana';

  @override
  String get categorySecuritySafety => '🟠 Fiarovana/Fandriampahalemana';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Maika sy Mahakasika ny Fotoana';

  @override
  String get categoryNonLifeThreatening =>
      '🟢 Tsy Mampidi-doza amin\'ny Fiainana';

  @override
  String get emergencyCprCardiacName => 'CPR / Aretina Fo';

  @override
  String get emergencyCprCardiacDesc =>
      'Tsy mahafantatra ary tsy miaina ny olona';

  @override
  String get emergencyAedName => 'Fandefasana AED';

  @override
  String get emergencyAedDesc => 'Mila AED amin\'ny fotoana';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Ahiahiana fa overdose zava-mahadomelina, mila naloxone';

  @override
  String get emergencyChokingName => 'Mikenona / Heimlich';

  @override
  String get emergencyChokingDesc => 'Mikenona ny olona ary tsy afaka miaina';

  @override
  String get emergencyFireName => 'Afo / Fivoahana';

  @override
  String get emergencyFireDesc => 'Vonjy afo maika, mila fanampiana fivoahana';

  @override
  String get emergencyConsentName => 'Vonjy Maika Faneken\'ny Efi-trano';

  @override
  String get emergencyConsentDesc => 'Safeword niantsoana, mila vavolombelona';

  @override
  String get emergencyBystanderName => 'Vavolombelona Mpijerena Mavitrika';

  @override
  String get emergencyBystanderDesc =>
      'Mila fisehoana mba hampihenana ny fifanolanana';

  @override
  String get emergencyMissingPetName => 'Biby Fiompy Very';

  @override
  String get emergencyMissingPetDesc =>
      'Very ny biby fiompy, mila ekipa fikarohana';

  @override
  String get emergencyWellnessCheckName => 'Fanamarinana Fahasalamana';

  @override
  String get emergencyWellnessCheckDesc =>
      'Jereo ny olona mety mila fanampiana';

  @override
  String get emergencyQuitCompanionName => 'Namana Fiatoana';

  @override
  String get emergencyQuitCompanionDesc =>
      'Miady amin\'ny faniriana, mila fanohanana';

  @override
  String get emergencyCompanionshipName => 'Fiarahana';

  @override
  String get emergencyCompanionshipDesc => 'Mahatsapa ho irery na mitokana';

  @override
  String get emergency911CoordinationName => 'Fandrindrana 911';

  @override
  String get emergency911CoordinationDesc =>
      'Mila fanampiana fiantsoana sy fandrindrana serivisy maika';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Ny Fahaizako';

  @override
  String capabilitiesSelected(int count) {
    return '$count voafidy';
  }

  @override
  String get alertSchedule => 'Fandaharana Fanairana';

  @override
  String get setAvailabilityHours => 'Amboary ny ora misy anao';

  @override
  String get trustedResponders => 'Mpiara-miasa Matoky';

  @override
  String get responseHistory => 'Tantaran\'ny Fanalenan-teny';

  @override
  String get privacyAndSafety => 'Fiainana Manokana sy Fiarovana';

  @override
  String get helpAndSupport => 'Fanampiana sy Fanohanana';

  @override
  String get aboutNayborSos => 'Momba ny Naybor SOS';

  @override
  String get termsAndPrivacyPolicy =>
      'Fepetra sy Politikan\'ny Fiainana Manokana';

  @override
  String get signOut => 'Mivoaka';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Ny Naybor SOS dia mampifandray ny mpiara-monina amin\'ny toe-javatra maika, mamorona tambajotra mpiara-miasa haingana izay afaka manome fanampiana manan-danja alohan\'ny hahatongavan\'ny mpiara-miasa voalohany manam-pahaizana.';

  @override
  String get aboutDialogContent2 =>
      'Ny rehetra dia afaka ho mahery fo. Tsy mila fiofanana manokana ianao mba hamonjena fiainana. Indraindray ny fitsabahana mahery indrindra dia ny fisehoana fotsiny.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Akatona';

  @override
  String get signOutQuestion => 'Mivoaka?';

  @override
  String get signOutConfirm => 'Tena te-hivoaka ve ianao?';

  @override
  String get cancel => 'Foana';

  @override
  String get signedOutSuccessfully => 'Nivoaka tamim-pahombiazana';

  @override
  String get settings => 'Kirakira';

  @override
  String get capabilityWellnessCheck => 'Fanamarinana Fahasalamana';

  @override
  String get capabilityQuitCompanion => 'Namana Fiatoana';

  @override
  String get capabilityActiveBystander => 'Mpijerena Mavitrika';

  @override
  String get translationTier1Label => 'Fandikana AI Matoky Be';

  @override
  String get translationTier2Label => 'Fandikana AI Matoky Tsara';

  @override
  String get translationTier3Label => 'Fandikana AI Matoky Antonony';

  @override
  String get translationTier4Label => 'Fandikana AI Matoky Kely';

  @override
  String get translationTier1Notice =>
      'Ity fandikana ity dia noforonin\'ny AI tamin\'ny fahatokiana ambony. Asaina ny fandinihana manam-pahaizana ho an\'ny fampiasana amin\'ny famokarana.';

  @override
  String get translationTier2Notice =>
      'Ity fandikana ity dia noforonin\'ny AI tamin\'ny fahatokiana tsara. Asaina ny fandinihana manam-pahaizana ho an\'ny faneken\'ny fiarovana sy ny teny maika.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ity fandikana ity dia mila fandinihana olona ho an\'ny andian-teny maika mampidi-doza amin\'ny fiarovana alohan\'ny fampiasana amin\'ny famokarana.';

  @override
  String get translationTier4Notice =>
      '⚠️ Drafitra fandikana ihany io. Fandikana manam-pahaizana takiana alohan\'ny fampiasana amin\'ny famokarana.';

  @override
  String get selectLanguage => 'Fidio ny Fiteny';

  @override
  String get searchLanguagesHint => 'Karohina ny fiteny';

  @override
  String translationQualityLabel(String quality) {
    return 'Kalitaon\'ny Fandikana: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ampaharo ny fanatsarana ny fandikana - tatitra ny olana na mandray anjara amin\'ny fandikana tsara kokoa!';
}
