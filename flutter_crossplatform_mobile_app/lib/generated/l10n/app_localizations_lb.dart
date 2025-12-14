// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luxembourgish Letzeburgesch (`lb`).
class AppLocalizationsLb extends AppLocalizations {
  AppLocalizationsLb([String locale = 'lb']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Modern Minutemen & Minutefraen';

  @override
  String get signUpToHelp => 'Mellt Iech un fir Är Noperen ze hëllefen';

  @override
  String get enterPhoneNumber => 'Gitt Är Telefonnummer an fir ze ufänken';

  @override
  String get phoneNumberLabel => 'Telefonnummer';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Verifizéierungscode schécken';

  @override
  String get enterVerificationCode => 'Gitt de Verifizéierungscode an';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Mir hunn e Code op $phoneNumber geschéckt';
  }

  @override
  String get verificationCodeLabel => 'Verifizéierungscode';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifizéieren & Weiderfueren';

  @override
  String get changePhoneNumber => 'Telefonnummer änneren';

  @override
  String get pleaseEnterPhoneNumber => 'Gitt w.e.g. Är Telefonnummer an';

  @override
  String get pleaseEnterVerificationCode =>
      'Gitt w.e.g. de Verifizéierungscode an';

  @override
  String get createProfile => 'Profil erstellen';

  @override
  String get tellUsAboutYourself => 'Erzielt eis iwwer Iech';

  @override
  String get profileSetupDescription =>
      'Dës Informatioun hëlleft eis Iech mat Noperen ze verbannen déi Hëllef brauchen';

  @override
  String get addPhotoOptional => 'Foto derbäisetzen (optional)';

  @override
  String get fullNameLabel => 'Komplette Numm *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Heemadress *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'Nëmmen fir Proximitéit benotzt';

  @override
  String get ageOptionalLabel => 'Alter (optional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Leit iwwer 70 kënnen sanft Alarm-Stonnen setzen';

  @override
  String get yourPrivacyMatters => 'Är Privatsphär ass wichteg';

  @override
  String get privacyNotice =>
      'Är Positioun gëtt nëmmen bei aktiven Noutfäll ofgefrot an ni laangfristeg gespäichert.';

  @override
  String get continueButton => 'Weiderfueren';

  @override
  String get pleaseFillRequiredFields =>
      'Fëllt w.e.g. all erfuerderlech Felder aus';

  @override
  String get home => 'Doheem';

  @override
  String get alerts => 'Alarmer';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Bereet ze reagéieren';

  @override
  String get notAvailable => 'Net verfügbar';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Dir kritt Noutfall-Alarmer an der Géigend';

  @override
  String get toggleOnWhenReady => 'Aschalten wann Dir bereet sidd ze hëllefen';

  @override
  String get youreNowAvailable => 'Dir sidd elo bereet ze reagéieren';

  @override
  String get youWontReceiveAlerts => 'Dir kritt keng Alarmer';

  @override
  String get lifeThreatening247Info =>
      'Liewensgeféierlech Alarmer mellen Iech 24/7. Net-urgent Alarmer respektéieren Ären Zäitplang.';

  @override
  String get requestHelp => 'HËLLEF UFUERDEREN';

  @override
  String get yourImpact => 'Ären Impakt';

  @override
  String get responses => 'Äntwerten';

  @override
  String get avgTime => 'Duerchschn. Zäit';

  @override
  String get yourCapabilities => 'Är Fäegkeeten';

  @override
  String get edit => 'Änneren';

  @override
  String get communityNetwork => 'Gemeng-Netzwierk';

  @override
  String get nearbyResponders => 'Noper Respondenten';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count verfügbar';
  }

  @override
  String get coverageRadius => 'Deckungsradius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance Meilen';
  }

  @override
  String get activeAlerts => 'Aktiv Alarmer';

  @override
  String get none => 'Keng';

  @override
  String get yourLocation => 'Är Positioun';

  @override
  String get whatDoYouNeedHelpWith => 'Wobäi braucht Dir Hëllef?';

  @override
  String get additionalDetailsOptional => 'Zousätzlech Detailer (optional)';

  @override
  String get describeSituation => 'Beschreift d\'Situatioun...';

  @override
  String get alertTrustedRespondersFirst =>
      'Meng vertraute Respondenten als éischt alarmmen';

  @override
  String get trustedRespondersDescription =>
      'Är ausgewielten Frënn/Familie ginn informéiert ier d\'Gemeng';

  @override
  String sendingAlert(String emergencyType) {
    return 'Alarm schécken: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ALARM ELO SCHÉCKEN';

  @override
  String get pleaseSelectEmergencyType => 'Wielt w.e.g. en Noutfall-Typ aus';

  @override
  String get categoryLifeThreatening => '🔴 Liewensgeféierlech';

  @override
  String get categorySecuritySafety => '🟠 Sécherheet/Séchert';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent Zäit-Sensitiv';

  @override
  String get categoryNonLifeThreatening => '🟢 Net-Liewensgeféierlech';

  @override
  String get emergencyCprCardiacName => 'CPR / Herz-Arrestatioun';

  @override
  String get emergencyCprCardiacDesc => 'Persoun reagéiert net an ootemt net';

  @override
  String get emergencyAedName => 'AED Liwwerung';

  @override
  String get emergencyAedDesc => 'Brauchen direkt een AED';

  @override
  String get emergencyOverdoseName => 'Iwwerdosis / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Verdächteg Drogen-Iwwerdosis, brauchen Naloxone';

  @override
  String get emergencyChokingName => 'Erstécken / Heimlich';

  @override
  String get emergencyChokingDesc => 'Persoun erstéckt an kann net ootmen';

  @override
  String get emergencyFireName => 'Feier / Evakuatioun';

  @override
  String get emergencyFireDesc => 'Feier-Noutfall, brauchen Evakuatiounshëllef';

  @override
  String get emergencyConsentName => 'Schlofkummer Zoustëmmungs-Noutfall';

  @override
  String get emergencyConsentDesc => 'Séchert-Wuert geruff, brauchen Zeien';

  @override
  String get emergencyBystanderName => 'Aktiv Zeien-Hëllefer';

  @override
  String get emergencyBystanderDesc =>
      'Präsenz gebraucht fir Konflikt ze berouegen';

  @override
  String get emergencyMissingPetName => 'Verschwonnent Hausdéier';

  @override
  String get emergencyMissingPetDesc =>
      'Hausdéier ass fort oder fortgelaf, brauchen Sichgrupp';

  @override
  String get emergencyWellnessCheckName => 'Wellness-Check';

  @override
  String get emergencyWellnessCheckDesc =>
      'Nokucken op een dee vläicht Hëllef brauch';

  @override
  String get emergencyQuitCompanionName => 'Stop-Begleeder';

  @override
  String get emergencyQuitCompanionDesc =>
      'Kämpfen géint Verlaangen, brauchen Ënnerstëtzung';

  @override
  String get emergencyCompanionshipName => 'Gesellschaft';

  @override
  String get emergencyCompanionshipDesc => 'Fillen eensam oder isoléiert';

  @override
  String get emergency911CoordinationName => '112 Koordinatioun';

  @override
  String get emergency911CoordinationDesc =>
      'Brauchen Hëllef fir 112 ze ruffen an ze koordinéieren';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Meng Fäegkeeten';

  @override
  String capabilitiesSelected(int count) {
    return '$count ausgewielt';
  }

  @override
  String get alertSchedule => 'Alarm-Zäitplang';

  @override
  String get setAvailabilityHours => 'Setzt Är Verfügbarkeets-Stonnen';

  @override
  String get trustedResponders => 'Vertraute Respondenten';

  @override
  String get responseHistory => 'Äntwert-Geschicht';

  @override
  String get privacyAndSafety => 'Privatsphär & Sécherheet';

  @override
  String get helpAndSupport => 'Hëllef & Ënnerstëtzung';

  @override
  String get aboutNayborSos => 'Iwwer Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Bedéngungen & Privatsphär-Richtlinn';

  @override
  String get signOut => 'Ofmellen';

  @override
  String version(String version) {
    return 'Versioun $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS verbannen Noperen am Noutfall, erschaaft e Netzwierk vu schnelle Respondenten déi kritisch Hëllef kënnen liwweren ier professionell éischt Respondenten ukommen.';

  @override
  String get aboutDialogContent2 =>
      'Jiddereen kann en Held sinn. Dir braucht keng speziell Formatioun fir e Liewen ze retten. Heiansdo ass déi mächtigst Interventioun einfach ze kommen.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Zoumaachen';

  @override
  String get signOutQuestion => 'Ofmellen?';

  @override
  String get signOutConfirm => 'Sidd Dir sécher datt Dir Iech wëllt ofmellen?';

  @override
  String get cancel => 'Ofbriechen';

  @override
  String get signedOutSuccessfully => 'Erfollegräich ofgemellt';

  @override
  String get settings => 'Astellungen';

  @override
  String get capabilityWellnessCheck => 'Wellness-Check';

  @override
  String get capabilityQuitCompanion => 'Stop-Begleeder';

  @override
  String get capabilityActiveBystander => 'Aktiv Zeien-Hëllefer';

  @override
  String get translationTier1Label => 'Héich Vertrauen AI Iwwersetzung';

  @override
  String get translationTier2Label => 'Gutt Vertrauen AI Iwwersetzung';

  @override
  String get translationTier3Label => 'Mëttel-Vertrauen AI Iwwersetzung';

  @override
  String get translationTier4Label => 'Niddreg Vertrauen AI Iwwersetzung';

  @override
  String get translationTier1Notice =>
      'Dës Iwwersetzung gouf AI-generéiert mat héichem Vertrauen. Professionell Iwwerpréiwung recommandéiert fir Produktiounsgebrauch.';

  @override
  String get translationTier2Notice =>
      'Dës Iwwersetzung gouf AI-generéiert mat gutem Vertrauen. Professionell Iwwerpréiwung recommandéiert fir sécherheetskritesch Zoustëmmung an Noutfall-Terminologie.';

  @override
  String get translationTier3Notice =>
      '⚠️ Dës Iwwersetzung erfuerdert mënschlech Iwwerpréiwung fir sécherheetskritesch Noutfall-Sätze virum Produktiounsgebrauch.';

  @override
  String get translationTier4Notice =>
      '⚠️ Dëst ass nëmmen eng Draft-Iwwersetzung. Professionell Iwwersetzung erfuerdert virum Produktiounsgebrauch.';

  @override
  String get selectLanguage => 'Sprooch wielen';

  @override
  String get searchLanguagesHint => 'Sproochen sichen';

  @override
  String translationQualityLabel(String quality) {
    return 'Iwwersetzungsqualitéit: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Hëlleft Iwwersetzungen ze verbesseren - meldet Problemer oder bäidräg besser Iwwersetzungen!';
}
