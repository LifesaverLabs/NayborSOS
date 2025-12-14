// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen e Minutewomen dei Giorni Nostri';

  @override
  String get signUpToHelp => 'Registrati per aiutare i tuoi vicini';

  @override
  String get enterPhoneNumber =>
      'Inserisci il tuo numero di telefono per iniziare';

  @override
  String get phoneNumberLabel => 'Numero di Telefono';

  @override
  String get phoneNumberHint => '333 123 4567';

  @override
  String get sendVerificationCode => 'Invia Codice di Verifica';

  @override
  String get enterVerificationCode => 'Inserisci il codice di verifica';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Abbiamo inviato un codice al $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Codice di Verifica';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifica e Continua';

  @override
  String get changePhoneNumber => 'Cambia numero di telefono';

  @override
  String get pleaseEnterPhoneNumber => 'Inserisci il tuo numero di telefono';

  @override
  String get pleaseEnterVerificationCode => 'Inserisci il codice di verifica';

  @override
  String get createProfile => 'Crea Profilo';

  @override
  String get tellUsAboutYourself => 'Raccontaci di te';

  @override
  String get profileSetupDescription =>
      'Queste informazioni ci aiutano a metterti in contatto con i vicini che hanno bisogno di aiuto';

  @override
  String get addPhotoOptional => 'Aggiungi foto (facoltativo)';

  @override
  String get fullNameLabel => 'Nome Completo *';

  @override
  String get fullNameHint => 'Mario Rossi';

  @override
  String get homeAddressLabel => 'Indirizzo di Casa *';

  @override
  String get homeAddressHint => 'Via Roma 123, Int. 4B';

  @override
  String get homeAddressHelper =>
      'Utilizzato solo per la corrispondenza di prossimità';

  @override
  String get ageOptionalLabel => 'Età (facoltativo)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Le persone di 70+ anni possono impostare orari di allerta delicati';

  @override
  String get yourPrivacyMatters => 'La tua privacy è importante';

  @override
  String get privacyNotice =>
      'La tua posizione viene interrogata solo durante emergenze attive e non viene mai conservata a lungo termine.';

  @override
  String get continueButton => 'Continua';

  @override
  String get pleaseFillRequiredFields => 'Compila tutti i campi obbligatori';

  @override
  String get home => 'Home';

  @override
  String get alerts => 'Allerte';

  @override
  String get profile => 'Profilo';

  @override
  String get availableToRespond => 'Disponibile a Rispondere';

  @override
  String get notAvailable => 'Non Disponibile';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Riceverai allerte di emergenza nelle vicinanze';

  @override
  String get toggleOnWhenReady => 'Attiva quando sei pronto ad aiutare';

  @override
  String get youreNowAvailable => 'Ora sei disponibile a rispondere';

  @override
  String get youWontReceiveAlerts => 'Non riceverai allerte';

  @override
  String get lifeThreatening247Info =>
      'Le allerte pericolose per la vita ti notificheranno 24/7. Le allerte non urgenti rispettano il tuo orario.';

  @override
  String get requestHelp => 'RICHIEDI AIUTO';

  @override
  String get yourImpact => 'Il Tuo Impatto';

  @override
  String get responses => 'Risposte';

  @override
  String get avgTime => 'Tempo Medio';

  @override
  String get yourCapabilities => 'Le Tue Capacità';

  @override
  String get edit => 'Modifica';

  @override
  String get communityNetwork => 'Rete della Comunità';

  @override
  String get nearbyResponders => 'Soccorritori Vicini';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponibili';
  }

  @override
  String get coverageRadius => 'Raggio di Copertura';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance miglia';
  }

  @override
  String get activeAlerts => 'Allerte Attive';

  @override
  String get none => 'Nessuna';

  @override
  String get yourLocation => 'La Tua Posizione';

  @override
  String get whatDoYouNeedHelpWith => 'Per cosa hai bisogno di aiuto?';

  @override
  String get additionalDetailsOptional => 'Dettagli Aggiuntivi (facoltativo)';

  @override
  String get describeSituation => 'Descrivi la situazione...';

  @override
  String get alertTrustedRespondersFirst =>
      'Avvisa prima i miei soccorritori di fiducia';

  @override
  String get trustedRespondersDescription =>
      'I tuoi amici/familiari selezionati verranno avvisati prima della comunità generale';

  @override
  String sendingAlert(String emergencyType) {
    return 'Invio allerta: $emergencyType';
  }

  @override
  String get sendAlertNow => 'INVIA ALLERTA ORA';

  @override
  String get pleaseSelectEmergencyType => 'Seleziona un tipo di emergenza';

  @override
  String get categoryLifeThreatening => '🔴 Pericolo di Vita';

  @override
  String get categorySecuritySafety => '🟠 Sicurezza/Protezione';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgente Tempo-Critico';

  @override
  String get categoryNonLifeThreatening => '🟢 Non Pericoloso per la Vita';

  @override
  String get emergencyCprCardiacName => 'RCP / Arresto Cardiaco';

  @override
  String get emergencyCprCardiacDesc => 'La persona non risponde e non respira';

  @override
  String get emergencyAedName => 'Consegna DAE';

  @override
  String get emergencyAedDesc => 'Serve un DAE immediatamente';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Sospetta overdose da droga, serve naloxone';

  @override
  String get emergencyChokingName => 'Soffocamento / Manovra di Heimlich';

  @override
  String get emergencyChokingDesc =>
      'La persona sta soffocando e non può respirare';

  @override
  String get emergencyFireName => 'Incendio / Evacuazione';

  @override
  String get emergencyFireDesc =>
      'Emergenza incendio, serve aiuto per evacuazione';

  @override
  String get emergencyConsentName => 'Emergenza Consenso Intimità';

  @override
  String get emergencyConsentDesc =>
      'Parola di sicurezza pronunciata, serve testimone';

  @override
  String get emergencyBystanderName => 'Testimone Attivo';

  @override
  String get emergencyBystanderDesc =>
      'Serve presenza per de-escalare conflitto';

  @override
  String get emergencyMissingPetName => 'Animale Smarrito';

  @override
  String get emergencyMissingPetDesc =>
      'L\'animale è perso o scappato, serve squadra di ricerca';

  @override
  String get emergencyWellnessCheckName => 'Controllo Benessere';

  @override
  String get emergencyWellnessCheckDesc =>
      'Controllare qualcuno che potrebbe aver bisogno di aiuto';

  @override
  String get emergencyQuitCompanionName => 'Compagno per Smettere';

  @override
  String get emergencyQuitCompanionDesc =>
      'Combattendo una voglia, serve supporto';

  @override
  String get emergencyCompanionshipName => 'Compagnia';

  @override
  String get emergencyCompanionshipDesc => 'Mi sento solo o isolato';

  @override
  String get emergency911CoordinationName =>
      'Coordinamento Servizi di Emergenza';

  @override
  String get emergency911CoordinationDesc =>
      'Serve aiuto per chiamare e coordinare i servizi di emergenza';

  @override
  String get equipmentAed => 'DAE';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Le Mie Capacità';

  @override
  String capabilitiesSelected(int count) {
    return '$count selezionate';
  }

  @override
  String get alertSchedule => 'Programma Allerte';

  @override
  String get setAvailabilityHours => 'Imposta i tuoi orari di disponibilità';

  @override
  String get trustedResponders => 'Soccorritori di Fiducia';

  @override
  String get responseHistory => 'Cronologia Risposte';

  @override
  String get privacyAndSafety => 'Privacy e Sicurezza';

  @override
  String get helpAndSupport => 'Aiuto e Supporto';

  @override
  String get aboutNayborSos => 'Info su Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Termini e Informativa Privacy';

  @override
  String get signOut => 'Disconnetti';

  @override
  String version(String version) {
    return 'Versione $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS collega i vicini durante le emergenze, creando una rete di soccorritori rapidi che possono fornire aiuto critico prima dell\'arrivo dei primi soccorritori professionali.';

  @override
  String get aboutDialogContent2 =>
      'Tutti possono essere eroi. Non serve un addestramento speciale per salvare una vita. A volte l\'intervento più potente è semplicemente presentarsi.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Chiudi';

  @override
  String get signOutQuestion => 'Disconnettersi?';

  @override
  String get signOutConfirm => 'Sei sicuro di volerti disconnettere?';

  @override
  String get cancel => 'Annulla';

  @override
  String get signedOutSuccessfully => 'Disconnesso con successo';

  @override
  String get settings => 'Impostazioni';

  @override
  String get capabilityWellnessCheck => 'Controllo Benessere';

  @override
  String get capabilityQuitCompanion => 'Compagno per Smettere';

  @override
  String get capabilityActiveBystander => 'Testimone Attivo';

  @override
  String get translationTier1Label => 'Traduzione IA Alta Affidabilità';

  @override
  String get translationTier2Label => 'Traduzione IA Buona Affidabilità';

  @override
  String get translationTier3Label => 'Traduzione IA Media Affidabilità';

  @override
  String get translationTier4Label => 'Traduzione IA Bassa Affidabilità';

  @override
  String get translationTier1Notice =>
      'Questa traduzione è stata generata dall\'IA con alta affidabilità. Revisione professionale raccomandata per uso in produzione.';

  @override
  String get translationTier2Notice =>
      'Questa traduzione è stata generata dall\'IA con buona affidabilità. Revisione professionale raccomandata per terminologia critica di sicurezza, consenso ed emergenza.';

  @override
  String get translationTier3Notice =>
      '⚠️ Questa traduzione richiede revisione umana per frasi di emergenza critiche per la sicurezza prima dell\'uso in produzione.';

  @override
  String get translationTier4Notice =>
      '⚠️ Questa è solo una bozza di traduzione. Traduzione professionale richiesta prima dell\'uso in produzione.';

  @override
  String get selectLanguage => 'Seleziona Lingua';

  @override
  String get searchLanguagesHint => 'Cerca lingue';

  @override
  String translationQualityLabel(String quality) {
    return 'Qualità Traduzione: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Aiuta a migliorare le traduzioni - segnala problemi o contribuisci con traduzioni migliori!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
