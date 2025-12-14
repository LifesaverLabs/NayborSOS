// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen i Minutewomen Moderns';

  @override
  String get signUpToHelp => 'Registra\'t per ajudar els teus veïns';

  @override
  String get enterPhoneNumber =>
      'Introdueix el teu número de telèfon per començar';

  @override
  String get phoneNumberLabel => 'Número de Telèfon';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Enviar Codi de Verificació';

  @override
  String get enterVerificationCode => 'Introdueix el codi de verificació';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Hem enviat un codi a $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Codi de Verificació';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verificar i Continuar';

  @override
  String get changePhoneNumber => 'Canviar número de telèfon';

  @override
  String get pleaseEnterPhoneNumber =>
      'Si us plau, introdueix el teu número de telèfon';

  @override
  String get pleaseEnterVerificationCode =>
      'Si us plau, introdueix el codi de verificació';

  @override
  String get createProfile => 'Crear Perfil';

  @override
  String get tellUsAboutYourself => 'Explica\'ns sobre tu';

  @override
  String get profileSetupDescription =>
      'Aquesta informació ens ajuda a connectar-te amb veïns que necessiten ajuda';

  @override
  String get addPhotoOptional => 'Afegir foto (opcional)';

  @override
  String get fullNameLabel => 'Nom Complet *';

  @override
  String get fullNameHint => 'Joan Garcia';

  @override
  String get homeAddressLabel => 'Adreça de Casa *';

  @override
  String get homeAddressHint => 'Carrer Major 123, Pis 4B';

  @override
  String get homeAddressHelper => 'Només s\'usa per proximitat';

  @override
  String get ageOptionalLabel => 'Edat (opcional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Edats 70+ poden establir horaris d\'alerta suaus';

  @override
  String get yourPrivacyMatters => 'La teva privacitat importa';

  @override
  String get privacyNotice =>
      'La teva ubicació només es consulta durant emergències actives i mai s\'emmagatzema a llarg termini.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get pleaseFillRequiredFields =>
      'Si us plau, omple tots els camps obligatoris';

  @override
  String get home => 'Inici';

  @override
  String get alerts => 'Alertes';

  @override
  String get profile => 'Perfil';

  @override
  String get availableToRespond => 'Disponible per Respondre';

  @override
  String get notAvailable => 'No Disponible';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Rebràs alertes d\'emergència properes';

  @override
  String get toggleOnWhenReady => 'Activa quan estiguis llest per ajudar';

  @override
  String get youreNowAvailable => 'Ara estàs disponible per respondre';

  @override
  String get youWontReceiveAlerts => 'No rebràs alertes';

  @override
  String get lifeThreatening247Info =>
      'Les alertes de risc vital et notificaran 24/7. Les alertes no urgents respecten el teu horari.';

  @override
  String get requestHelp => 'SOL·LICITAR AJUDA';

  @override
  String get yourImpact => 'El Teu Impacte';

  @override
  String get responses => 'Respostes';

  @override
  String get avgTime => 'Temps Mitjà';

  @override
  String get yourCapabilities => 'Les Teves Capacitats';

  @override
  String get edit => 'Editar';

  @override
  String get communityNetwork => 'Xarxa Comunitària';

  @override
  String get nearbyResponders => 'Respondedors Propers';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponibles';
  }

  @override
  String get coverageRadius => 'Radi de Cobertura';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance milles';
  }

  @override
  String get activeAlerts => 'Alertes Actives';

  @override
  String get none => 'Cap';

  @override
  String get yourLocation => 'La Teva Ubicació';

  @override
  String get whatDoYouNeedHelpWith => 'Amb què necessites ajuda?';

  @override
  String get additionalDetailsOptional => 'Detalls Addicionals (opcional)';

  @override
  String get describeSituation => 'Descriu la situació...';

  @override
  String get alertTrustedRespondersFirst =>
      'Alertar primer els meus respondedors de confiança';

  @override
  String get trustedRespondersDescription =>
      'Els teus amics/família seleccionats seran notificats abans que la comunitat general';

  @override
  String sendingAlert(String emergencyType) {
    return 'Enviant alerta: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ENVIAR ALERTA ARA';

  @override
  String get pleaseSelectEmergencyType =>
      'Si us plau, selecciona un tipus d\'emergència';

  @override
  String get categoryLifeThreatening => '🔴 Risc Vital';

  @override
  String get categorySecuritySafety => '🟠 Seguretat';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent i Urgent';

  @override
  String get categoryNonLifeThreatening => '🟢 Sense Risc Vital';

  @override
  String get emergencyCprCardiacName => 'RCP / Aturada Cardíaca';

  @override
  String get emergencyCprCardiacDesc => 'La persona no respon i no respira';

  @override
  String get emergencyAedName => 'Lliurament DEA';

  @override
  String get emergencyAedDesc => 'Necessito un DEA immediatament';

  @override
  String get emergencyOverdoseName => 'Sobredosi / Naloxona';

  @override
  String get emergencyOverdoseDesc =>
      'Sospita de sobredosi de drogues, necessito naloxona';

  @override
  String get emergencyChokingName => 'Ofegament / Heimlich';

  @override
  String get emergencyChokingDesc => 'La persona s\'ofega i no pot respirar';

  @override
  String get emergencyFireName => 'Incendi / Evacuació';

  @override
  String get emergencyFireDesc =>
      'Emergència d\'incendi, necessito ajuda per evacuar';

  @override
  String get emergencyConsentName => 'Emergència de Consentiment en Dormitori';

  @override
  String get emergencyConsentDesc =>
      'Paraula de seguretat dita, necessito testimoni';

  @override
  String get emergencyBystanderName => 'Testimoni Espectador Actiu';

  @override
  String get emergencyBystanderDesc =>
      'Necessito presència per desescalar conflicte';

  @override
  String get emergencyMissingPetName => 'Mascota Perduda';

  @override
  String get emergencyMissingPetDesc =>
      'La mascota està perduda o ha fugit, necessito grup de cerca';

  @override
  String get emergencyWellnessCheckName => 'Control de Benestar';

  @override
  String get emergencyWellnessCheckDesc =>
      'Comprovar algú que pot necessitar ajuda';

  @override
  String get emergencyQuitCompanionName => 'Company per Deixar-ho';

  @override
  String get emergencyQuitCompanionDesc =>
      'Lluitant contra l\'ansietat, necessito suport';

  @override
  String get emergencyCompanionshipName => 'Companyia';

  @override
  String get emergencyCompanionshipDesc => 'Em sento sol o aïllat';

  @override
  String get emergency911CoordinationName => 'Coordinació 112';

  @override
  String get emergency911CoordinationDesc =>
      'Necessito ajuda per trucar i coordinar el 112';

  @override
  String get equipmentAed => 'DEA';

  @override
  String get equipmentNaloxone => 'Naloxona/Narcan';

  @override
  String get myCapabilities => 'Les Meves Capacitats';

  @override
  String capabilitiesSelected(int count) {
    return '$count seleccionades';
  }

  @override
  String get alertSchedule => 'Horari d\'Alertes';

  @override
  String get setAvailabilityHours =>
      'Estableix les teves hores de disponibilitat';

  @override
  String get trustedResponders => 'Respondedors de Confiança';

  @override
  String get responseHistory => 'Historial de Respostes';

  @override
  String get privacyAndSafety => 'Privacitat i Seguretat';

  @override
  String get helpAndSupport => 'Ajuda i Suport';

  @override
  String get aboutNayborSos => 'Sobre Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Termes i Política de Privacitat';

  @override
  String get signOut => 'Tancar Sessió';

  @override
  String version(String version) {
    return 'Versió $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS connecta veïns en emergències, creant una xarxa de respondedors ràpids que poden proporcionar ajuda crítica abans que arribin els primers auxiliadors professionals.';

  @override
  String get aboutDialogContent2 =>
      'Tothom pot ser un heroi. No necessites entrenament especial per salvar una vida. De vegades la intervenció més poderosa és simplement aparèixer.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Tancar';

  @override
  String get signOutQuestion => 'Tancar Sessió?';

  @override
  String get signOutConfirm => 'Estàs segur que vols tancar la sessió?';

  @override
  String get cancel => 'Cancel·lar';

  @override
  String get signedOutSuccessfully => 'Sessió tancada amb èxit';

  @override
  String get settings => 'Configuració';

  @override
  String get capabilityWellnessCheck => 'Control de Benestar';

  @override
  String get capabilityQuitCompanion => 'Company per Deixar-ho';

  @override
  String get capabilityActiveBystander => 'Espectador Actiu';

  @override
  String get translationTier1Label => 'Traducció IA d\'Alta Confiança';

  @override
  String get translationTier2Label => 'Traducció IA de Bona Confiança';

  @override
  String get translationTier3Label => 'Traducció IA de Confiança Mitjana';

  @override
  String get translationTier4Label => 'Traducció IA de Baixa Confiança';

  @override
  String get translationTier1Notice =>
      'Aquesta traducció va ser generada per IA amb alta confiança. Es recomana revisió professional per ús en producció.';

  @override
  String get translationTier2Notice =>
      'Aquesta traducció va ser generada per IA amb bona confiança. Es recomana revisió professional per terminologia crítica de seguretat i consentiment d\'emergència.';

  @override
  String get translationTier3Notice =>
      '⚠️ Aquesta traducció requereix revisió humana per frases crítiques d\'emergència abans de l\'ús en producció.';

  @override
  String get translationTier4Notice =>
      '⚠️ Aquesta és només una traducció esborrany. Es requereix traducció professional abans de l\'ús en producció.';

  @override
  String get selectLanguage => 'Seleccionar Idioma';

  @override
  String get searchLanguagesHint => 'Cercar idiomes';

  @override
  String translationQualityLabel(String quality) {
    return 'Qualitat de Traducció: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ajuda a millorar les traduccions - informa de problemes o contribueix amb millors traduccions!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
