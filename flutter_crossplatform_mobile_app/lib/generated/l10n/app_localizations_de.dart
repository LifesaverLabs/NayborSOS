// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderne Bürgerwehr für Männer und Frauen';

  @override
  String get signUpToHelp =>
      'Registrieren Sie sich, um Ihren Nachbarn zu helfen';

  @override
  String get enterPhoneNumber =>
      'Geben Sie Ihre Telefonnummer ein, um zu beginnen';

  @override
  String get phoneNumberLabel => 'Telefonnummer';

  @override
  String get phoneNumberHint => '(030) 123-4567';

  @override
  String get sendVerificationCode => 'Bestätigungscode senden';

  @override
  String get enterVerificationCode => 'Bestätigungscode eingeben';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Wir haben einen Code an $phoneNumber gesendet';
  }

  @override
  String get verificationCodeLabel => 'Bestätigungscode';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Bestätigen & Fortfahren';

  @override
  String get changePhoneNumber => 'Telefonnummer ändern';

  @override
  String get pleaseEnterPhoneNumber => 'Bitte geben Sie Ihre Telefonnummer ein';

  @override
  String get pleaseEnterVerificationCode =>
      'Bitte geben Sie den Bestätigungscode ein';

  @override
  String get createProfile => 'Profil erstellen';

  @override
  String get tellUsAboutYourself => 'Erzählen Sie uns etwas über sich';

  @override
  String get profileSetupDescription =>
      'Diese Informationen helfen uns, Sie mit hilfsbedürftigen Nachbarn zu verbinden';

  @override
  String get addPhotoOptional => 'Foto hinzufügen (optional)';

  @override
  String get fullNameLabel => 'Vollständiger Name *';

  @override
  String get fullNameHint => 'Max Mustermann';

  @override
  String get homeAddressLabel => 'Wohnadresse *';

  @override
  String get homeAddressHint => 'Musterstraße 123, Wohnung 4B';

  @override
  String get homeAddressHelper => 'Nur für Entfernungsberechnung verwendet';

  @override
  String get ageOptionalLabel => 'Alter (optional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Ab 70 Jahren können schonende Alarmzeiten eingestellt werden';

  @override
  String get yourPrivacyMatters => 'Ihr Datenschutz ist wichtig';

  @override
  String get privacyNotice =>
      'Ihr Standort wird nur bei aktiven Notfällen abgefragt und niemals langfristig gespeichert.';

  @override
  String get continueButton => 'Fortfahren';

  @override
  String get pleaseFillRequiredFields =>
      'Bitte füllen Sie alle Pflichtfelder aus';

  @override
  String get home => 'Startseite';

  @override
  String get alerts => 'Alarme';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Einsatzbereit';

  @override
  String get notAvailable => 'Nicht verfügbar';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Sie erhalten Notfallalarme in Ihrer Nähe';

  @override
  String get toggleOnWhenReady => 'Aktivieren, wenn Sie bereit sind zu helfen';

  @override
  String get youreNowAvailable => 'Sie sind jetzt einsatzbereit';

  @override
  String get youWontReceiveAlerts => 'Sie erhalten keine Alarme';

  @override
  String get lifeThreatening247Info =>
      'Lebensbedrohliche Alarme benachrichtigen Sie rund um die Uhr. Nicht dringende Alarme respektieren Ihren Zeitplan.';

  @override
  String get requestHelp => 'HILFE ANFORDERN';

  @override
  String get yourImpact => 'Ihre Wirkung';

  @override
  String get responses => 'Einsätze';

  @override
  String get avgTime => 'Ø Zeit';

  @override
  String get yourCapabilities => 'Ihre Fähigkeiten';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get communityNetwork => 'Gemeinschaftsnetzwerk';

  @override
  String get nearbyResponders => 'Nahegelegene Helfer';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count verfügbar';
  }

  @override
  String get coverageRadius => 'Einsatzradius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance Kilometer';
  }

  @override
  String get activeAlerts => 'Aktive Alarme';

  @override
  String get none => 'Keine';

  @override
  String get yourLocation => 'Ihr Standort';

  @override
  String get whatDoYouNeedHelpWith => 'Wobei brauchen Sie Hilfe?';

  @override
  String get additionalDetailsOptional => 'Zusätzliche Details (optional)';

  @override
  String get describeSituation => 'Beschreiben Sie die Situation...';

  @override
  String get alertTrustedRespondersFirst =>
      'Zuerst meine vertrauenswürdigen Helfer benachrichtigen';

  @override
  String get trustedRespondersDescription =>
      'Ihre ausgewählten Freunde/Familie werden vor der allgemeinen Gemeinschaft benachrichtigt';

  @override
  String sendingAlert(String emergencyType) {
    return 'Sende Alarm: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ALARM JETZT SENDEN';

  @override
  String get pleaseSelectEmergencyType =>
      'Bitte wählen Sie einen Notfalltyp aus';

  @override
  String get categoryLifeThreatening => '🔴 Lebensbedrohlich';

  @override
  String get categorySecuritySafety => '🟠 Sicherheit/Schutz';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Dringend zeitkritisch';

  @override
  String get categoryNonLifeThreatening => '🟢 Nicht lebensbedrohlich';

  @override
  String get emergencyCprCardiacName => 'Wiederbelebung / Herzstillstand';

  @override
  String get emergencyCprCardiacDesc => 'Person ist bewusstlos und atmet nicht';

  @override
  String get emergencyAedName => 'Defibrillator-Lieferung';

  @override
  String get emergencyAedDesc => 'Benötige sofort einen Defibrillator';

  @override
  String get emergencyOverdoseName => 'Überdosis / Naloxon';

  @override
  String get emergencyOverdoseDesc =>
      'Verdacht auf Drogenüberdosis, benötige Naloxon';

  @override
  String get emergencyChokingName => 'Ersticken / Heimlich-Manöver';

  @override
  String get emergencyChokingDesc => 'Person erstickt und kann nicht atmen';

  @override
  String get emergencyFireName => 'Feuer / Evakuierung';

  @override
  String get emergencyFireDesc => 'Feuernotfall, benötige Evakuierungshilfe';

  @override
  String get emergencyConsentName => 'Intimitäts-Notfall';

  @override
  String get emergencyConsentDesc => 'Safeword ausgesprochen, benötige Zeugen';

  @override
  String get emergencyBystanderName => 'Aktive Zeugenschaft';

  @override
  String get emergencyBystanderDesc =>
      'Benötige Präsenz zur Konfliktentschärfung';

  @override
  String get emergencyMissingPetName => 'Vermisstes Haustier';

  @override
  String get emergencyMissingPetDesc =>
      'Haustier ist entlaufen, benötige Suchtrupp';

  @override
  String get emergencyWellnessCheckName => 'Wellness-Check';

  @override
  String get emergencyWellnessCheckDesc =>
      'Nach jemandem sehen, der Hilfe brauchen könnte';

  @override
  String get emergencyQuitCompanionName => 'Entzugs-Begleitung';

  @override
  String get emergencyQuitCompanionDesc =>
      'Kämpfe gegen Suchtdruck, benötige Unterstützung';

  @override
  String get emergencyCompanionshipName => 'Gesellschaft';

  @override
  String get emergencyCompanionshipDesc => 'Fühle mich einsam oder isoliert';

  @override
  String get emergency911CoordinationName => 'Notruf-Koordination';

  @override
  String get emergency911CoordinationDesc =>
      'Benötige Hilfe beim Anrufen und Koordinieren des Notrufs';

  @override
  String get equipmentAed => 'Defibrillator';

  @override
  String get equipmentNaloxone => 'Naloxon/Narcan';

  @override
  String get myCapabilities => 'Meine Fähigkeiten';

  @override
  String capabilitiesSelected(int count) {
    return '$count ausgewählt';
  }

  @override
  String get alertSchedule => 'Alarm-Zeitplan';

  @override
  String get setAvailabilityHours =>
      'Stellen Sie Ihre Verfügbarkeitszeiten ein';

  @override
  String get trustedResponders => 'Vertrauenswürdige Helfer';

  @override
  String get responseHistory => 'Einsatzhistorie';

  @override
  String get privacyAndSafety => 'Datenschutz & Sicherheit';

  @override
  String get helpAndSupport => 'Hilfe & Support';

  @override
  String get aboutNayborSos => 'Über Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'AGB & Datenschutzerklärung';

  @override
  String get signOut => 'Abmelden';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS verbindet Nachbarn in Notfällen und schafft ein Netzwerk schneller Helfer, die kritische Hilfe leisten können, bevor professionelle Ersthelfer eintreffen.';

  @override
  String get aboutDialogContent2 =>
      'Jeder kann ein Held sein. Sie brauchen keine spezielle Ausbildung, um ein Leben zu retten. Manchmal ist die wirkungsvollste Hilfe einfach da zu sein.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Schließen';

  @override
  String get signOutQuestion => 'Abmelden?';

  @override
  String get signOutConfirm =>
      'Sind Sie sicher, dass Sie sich abmelden möchten?';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get signedOutSuccessfully => 'Erfolgreich abgemeldet';

  @override
  String get settings => 'Einstellungen';

  @override
  String get capabilityWellnessCheck => 'Wellness-Check';

  @override
  String get capabilityQuitCompanion => 'Entzugs-Begleitung';

  @override
  String get capabilityActiveBystander => 'Aktive Zeugenschaft';

  @override
  String get translationTier1Label => 'Hochwertige KI-Übersetzung';

  @override
  String get translationTier2Label => 'Gute KI-Übersetzung';

  @override
  String get translationTier3Label => 'Mittlere KI-Übersetzung';

  @override
  String get translationTier4Label => 'Einfache KI-Übersetzung';

  @override
  String get translationTier1Notice =>
      'Diese Übersetzung wurde von KI mit hoher Zuverlässigkeit erstellt. Professionelle Überprüfung für Produktiveinsatz empfohlen.';

  @override
  String get translationTier2Notice =>
      'Diese Übersetzung wurde von KI mit guter Zuverlässigkeit erstellt. Professionelle Überprüfung für sicherheitskritische Einverständnis- und Notfallterminologie empfohlen.';

  @override
  String get translationTier3Notice =>
      '⚠️ Diese Übersetzung erfordert menschliche Überprüfung für sicherheitskritische Notfallformulierungen vor Produktiveinsatz.';

  @override
  String get translationTier4Notice =>
      '⚠️ Dies ist nur ein Übersetzungsentwurf. Professionelle Übersetzung vor Produktiveinsatz erforderlich.';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get searchLanguagesHint => 'Sprachen durchsuchen';

  @override
  String translationQualityLabel(String quality) {
    return 'Übersetzungsqualität: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Helfen Sie bei der Verbesserung der Übersetzungen - melden Sie Probleme oder tragen Sie bessere Übersetzungen bei!';
}
