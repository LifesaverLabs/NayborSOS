// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderna Minutmän & Minutkvinnor';

  @override
  String get signUpToHelp => 'Registrera dig för att hjälpa dina grannar';

  @override
  String get enterPhoneNumber => 'Ange ditt telefonnummer för att komma igång';

  @override
  String get phoneNumberLabel => 'Telefonnummer';

  @override
  String get phoneNumberHint => '070 123 45 67';

  @override
  String get sendVerificationCode => 'Skicka verifieringskod';

  @override
  String get enterVerificationCode => 'Ange verifieringskod';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Vi skickade en kod till $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Verifieringskod';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifiera & Fortsätt';

  @override
  String get changePhoneNumber => 'Ändra telefonnummer';

  @override
  String get pleaseEnterPhoneNumber => 'Vänligen ange ditt telefonnummer';

  @override
  String get pleaseEnterVerificationCode => 'Vänligen ange verifieringskoden';

  @override
  String get createProfile => 'Skapa profil';

  @override
  String get tellUsAboutYourself => 'Berätta om dig själv';

  @override
  String get profileSetupDescription =>
      'Denna information hjälper oss koppla dig till grannar som behöver hjälp';

  @override
  String get addPhotoOptional => 'Lägg till foto (valfritt)';

  @override
  String get fullNameLabel => 'Fullständigt namn *';

  @override
  String get fullNameHint => 'Anna Andersson';

  @override
  String get homeAddressLabel => 'Hemadress *';

  @override
  String get homeAddressHint => 'Storgatan 123, Lgh 4B';

  @override
  String get homeAddressHelper => 'Används endast för närhetsmatchning';

  @override
  String get ageOptionalLabel => 'Ålder (valfritt)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Ålder 70+ kan ställa in lugna varningsscheman';

  @override
  String get yourPrivacyMatters => 'Din integritet är viktig';

  @override
  String get privacyNotice =>
      'Din plats efterfrågas endast under aktiva nödsituationer och lagras aldrig långsiktigt.';

  @override
  String get continueButton => 'Fortsätt';

  @override
  String get pleaseFillRequiredFields =>
      'Vänligen fyll i alla obligatoriska fält';

  @override
  String get home => 'Hem';

  @override
  String get alerts => 'Larm';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Tillgänglig att Svara';

  @override
  String get notAvailable => 'Inte Tillgänglig';

  @override
  String get youllReceiveEmergencyAlerts => 'Du kommer få nödlarm i närheten';

  @override
  String get toggleOnWhenReady => 'Växla på när du är redo att hjälpa';

  @override
  String get youreNowAvailable => 'Du är nu tillgänglig att svara';

  @override
  String get youWontReceiveAlerts => 'Du kommer inte få larm';

  @override
  String get lifeThreatening247Info =>
      'Livshotande larm meddelar dig dygnet runt. Icke-brådskande larm respekterar ditt schema.';

  @override
  String get requestHelp => 'BEGÄR HJÄLP';

  @override
  String get yourImpact => 'Din påverkan';

  @override
  String get responses => 'Svar';

  @override
  String get avgTime => 'Snitttid';

  @override
  String get yourCapabilities => 'Dina förmågor';

  @override
  String get edit => 'Redigera';

  @override
  String get communityNetwork => 'Samhällsnätverk';

  @override
  String get nearbyResponders => 'Närliggande hjälpare';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count tillgängliga';
  }

  @override
  String get coverageRadius => 'Täckningsradie';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Aktiva larm';

  @override
  String get none => 'Inga';

  @override
  String get yourLocation => 'Din plats';

  @override
  String get whatDoYouNeedHelpWith => 'Vad behöver du hjälp med?';

  @override
  String get additionalDetailsOptional => 'Ytterligare detaljer (valfritt)';

  @override
  String get describeSituation => 'Beskriv situationen...';

  @override
  String get alertTrustedRespondersFirst =>
      'Larmera mina betrodda hjälpare först';

  @override
  String get trustedRespondersDescription =>
      'Dina valda vänner/familj meddelas innan det allmänna samhället';

  @override
  String sendingAlert(String emergencyType) {
    return 'Skickar larm: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SKICKA LARM NU';

  @override
  String get pleaseSelectEmergencyType => 'Vänligen välj en nödsituationstyp';

  @override
  String get categoryLifeThreatening => '🔴 Livshotande';

  @override
  String get categorySecuritySafety => '🟠 Säkerhet';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Brådskande Tidskänsligt';

  @override
  String get categoryNonLifeThreatening => '🟢 Icke-Livshotande';

  @override
  String get emergencyCprCardiacName => 'HLR / Hjärtstopp';

  @override
  String get emergencyCprCardiacDesc => 'Person svarar inte och andas inte';

  @override
  String get emergencyAedName => 'Hjärtstartare-leverans';

  @override
  String get emergencyAedDesc => 'Behöver hjärtstartare omedelbart';

  @override
  String get emergencyOverdoseName => 'Överdos / Naloxon';

  @override
  String get emergencyOverdoseDesc => 'Misstänkt drogöverdos, behöver naloxon';

  @override
  String get emergencyChokingName => 'Kvävning / Heimlich';

  @override
  String get emergencyChokingDesc => 'Person kväver och kan inte andas';

  @override
  String get emergencyFireName => 'Brand / Evakuering';

  @override
  String get emergencyFireDesc => 'Brandnödsituation, behöver evakueringshjälp';

  @override
  String get emergencyConsentName => 'Sovrumssamtycke-nödsituation';

  @override
  String get emergencyConsentDesc => 'Säkerhetsord använt, behöver vittne';

  @override
  String get emergencyBystanderName => 'Aktivt åskådarvittne';

  @override
  String get emergencyBystanderDesc =>
      'Behöver närvaro för att lugna konflikter';

  @override
  String get emergencyMissingPetName => 'Försvunnet husdjur';

  @override
  String get emergencyMissingPetDesc =>
      'Husdjur försvunnet eller rymt, behöver sökgrupp';

  @override
  String get emergencyWellnessCheckName => 'Välmåendekontroll';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kontrollera någon som kan behöva hjälp';

  @override
  String get emergencyQuitCompanionName => 'Slutkamrat';

  @override
  String get emergencyQuitCompanionDesc => 'Kämpar mot begär, behöver stöd';

  @override
  String get emergencyCompanionshipName => 'Sällskap';

  @override
  String get emergencyCompanionshipDesc => 'Känner sig ensam eller isolerad';

  @override
  String get emergency911CoordinationName => '112-koordinering';

  @override
  String get emergency911CoordinationDesc =>
      'Behöver hjälp att ringa och koordinera med räddningstjänsten';

  @override
  String get equipmentAed => 'Hjärtstartare';

  @override
  String get equipmentNaloxone => 'Naloxon/Narcan';

  @override
  String get myCapabilities => 'Mina förmågor';

  @override
  String capabilitiesSelected(int count) {
    return '$count valda';
  }

  @override
  String get alertSchedule => 'Larmschema';

  @override
  String get setAvailabilityHours => 'Ställ in dina tillgänglighetstider';

  @override
  String get trustedResponders => 'Betrodda hjälpare';

  @override
  String get responseHistory => 'Svarshistorik';

  @override
  String get privacyAndSafety => 'Integritet och säkerhet';

  @override
  String get helpAndSupport => 'Hjälp och support';

  @override
  String get aboutNayborSos => 'Om Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Villkor och integritetspolicy';

  @override
  String get signOut => 'Logga ut';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS kopplar samman grannar i nödsituationer och skapar ett nätverk av snabba hjälpare som kan ge kritisk hjälp innan professionella räddningstjänster anländer.';

  @override
  String get aboutDialogContent2 =>
      'Alla kan vara en hjälte. Du behöver ingen specialutbildning för att rädda liv. Ibland är den kraftfullaste åtgärden att helt enkelt dyka upp.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Stäng';

  @override
  String get signOutQuestion => 'Logga ut?';

  @override
  String get signOutConfirm => 'Är du säker på att du vill logga ut?';

  @override
  String get cancel => 'Avbryt';

  @override
  String get signedOutSuccessfully => 'Utloggad framgångsrikt';

  @override
  String get settings => 'Inställningar';

  @override
  String get capabilityWellnessCheck => 'Välmåendekontroll';

  @override
  String get capabilityQuitCompanion => 'Slutkamrat';

  @override
  String get capabilityActiveBystander => 'Aktiv åskådare';

  @override
  String get translationTier1Label => 'Hög tillförlitlighet AI-översättning';

  @override
  String get translationTier2Label => 'God tillförlitlighet AI-översättning';

  @override
  String get translationTier3Label => 'Medel tillförlitlighet AI-översättning';

  @override
  String get translationTier4Label => 'Låg tillförlitlighet AI-översättning';

  @override
  String get translationTier1Notice =>
      'Denna översättning genererades av AI med hög tillförlitlighet. Professionell granskning rekommenderas för produktionsanvändning.';

  @override
  String get translationTier2Notice =>
      'Denna översättning genererades av AI med god tillförlitlighet. Professionell granskning rekommenderas för säkerhetskritisk samtyckes- och nödsituationsterminologi.';

  @override
  String get translationTier3Notice =>
      '⚠️ Denna översättning kräver mänsklig granskning av säkerhetskritiska nödfraser innan produktionsanvändning.';

  @override
  String get translationTier4Notice =>
      '⚠️ Detta är endast en utkastöversättning. Professionell översättning krävs innan produktionsanvändning.';

  @override
  String get selectLanguage => 'Välj språk';

  @override
  String get searchLanguagesHint => 'Sök språk';

  @override
  String translationQualityLabel(String quality) {
    return 'Översättningskvalitet: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Hjälp förbättra översättningar - rapportera problem eller bidra med bättre översättningar!';
}
