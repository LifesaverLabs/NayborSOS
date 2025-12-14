// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen e Minutewomen dos Tempos Modernos';

  @override
  String get signUpToHelp => 'Rexístrate para axudar aos teus veciños';

  @override
  String get enterPhoneNumber =>
      'Introduce o teu número de teléfono para comezar';

  @override
  String get phoneNumberLabel => 'Número de Teléfono';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Enviar Código de Verificación';

  @override
  String get enterVerificationCode => 'Introduce o código de verificación';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Enviámosche un código a $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Código de Verificación';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verificar e Continuar';

  @override
  String get changePhoneNumber => 'Cambiar número de teléfono';

  @override
  String get pleaseEnterPhoneNumber =>
      'Por favor, introduce o teu número de teléfono';

  @override
  String get pleaseEnterVerificationCode =>
      'Por favor, introduce o código de verificación';

  @override
  String get createProfile => 'Crear Perfil';

  @override
  String get tellUsAboutYourself => 'Fálanos de ti';

  @override
  String get profileSetupDescription =>
      'Esta información axúdanos a conectarte con veciños que necesitan axuda';

  @override
  String get addPhotoOptional => 'Engadir foto (opcional)';

  @override
  String get fullNameLabel => 'Nome Completo *';

  @override
  String get fullNameHint => 'Juan Pérez';

  @override
  String get homeAddressLabel => 'Enderezo do Fogar *';

  @override
  String get homeAddressHint => 'Rúa Principal 123, Piso 4B';

  @override
  String get homeAddressHelper =>
      'Úsase só para correspondencia de proximidade';

  @override
  String get ageOptionalLabel => 'Idade (opcional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Maiores de 70 anos poden establecer horarios de alerta suaves';

  @override
  String get yourPrivacyMatters => 'A túa privacidade importa';

  @override
  String get privacyNotice =>
      'A túa localización só se consulta durante emerxencias activas e nunca se almacena a longo prazo.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get pleaseFillRequiredFields =>
      'Por favor, completa todos os campos obrigatorios';

  @override
  String get home => 'Inicio';

  @override
  String get alerts => 'Alertas';

  @override
  String get profile => 'Perfil';

  @override
  String get availableToRespond => 'Dispoñible para Responder';

  @override
  String get notAvailable => 'Non Dispoñible';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Recibirás alertas de emerxencia cercanas';

  @override
  String get toggleOnWhenReady => 'Activa cando esteas preparado para axudar';

  @override
  String get youreNowAvailable => 'Xa estás dispoñible para responder';

  @override
  String get youWontReceiveAlerts => 'Non recibirás alertas';

  @override
  String get lifeThreatening247Info =>
      'As alertas de perigo mortal notificaranche 24/7. As alertas non urxentes respectan o teu horario.';

  @override
  String get requestHelp => 'SOLICITAR AXUDA';

  @override
  String get yourImpact => 'O Teu Impacto';

  @override
  String get responses => 'Respostas';

  @override
  String get avgTime => 'Tempo Medio';

  @override
  String get yourCapabilities => 'As Túas Capacidades';

  @override
  String get edit => 'Editar';

  @override
  String get communityNetwork => 'Rede Comunitaria';

  @override
  String get nearbyResponders => 'Respondentes Cercanos';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count dispoñibles';
  }

  @override
  String get coverageRadius => 'Radio de Cobertura';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance millas';
  }

  @override
  String get activeAlerts => 'Alertas Activas';

  @override
  String get none => 'Ningunha';

  @override
  String get yourLocation => 'A Túa Localización';

  @override
  String get whatDoYouNeedHelpWith => 'Con que necesitas axuda?';

  @override
  String get additionalDetailsOptional => 'Detalles Adicionais (opcional)';

  @override
  String get describeSituation => 'Describe a situación...';

  @override
  String get alertTrustedRespondersFirst =>
      'Alertar primeiro aos meus respondentes de confianza';

  @override
  String get trustedRespondersDescription =>
      'Os teus amigos/familia seleccionados serán notificados antes da comunidade xeral';

  @override
  String sendingAlert(String emergencyType) {
    return 'Enviando alerta: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ENVIAR ALERTA AGORA';

  @override
  String get pleaseSelectEmergencyType =>
      'Por favor, selecciona un tipo de emerxencia';

  @override
  String get categoryLifeThreatening => '🔴 Perigo Mortal';

  @override
  String get categorySecuritySafety => '🟠 Seguridade/Seguranza';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urxente Sensible ao Tempo';

  @override
  String get categoryNonLifeThreatening => '🟢 Sen Perigo Mortal';

  @override
  String get emergencyCprCardiacName => 'RCP / Parada Cardíaca';

  @override
  String get emergencyCprCardiacDesc => 'A persoa non responde e non respira';

  @override
  String get emergencyAedName => 'Entrega de DEA';

  @override
  String get emergencyAedDesc => 'Necesito un DEA inmediatamente';

  @override
  String get emergencyOverdoseName => 'Sobredose / Naloxona';

  @override
  String get emergencyOverdoseDesc =>
      'Sospéitase sobredose de drogas, necesítase naloxona';

  @override
  String get emergencyChokingName => 'Afogo / Maniobra de Heimlich';

  @override
  String get emergencyChokingDesc =>
      'A persoa está afogándose e non pode respirar';

  @override
  String get emergencyFireName => 'Lume / Evacuación';

  @override
  String get emergencyFireDesc =>
      'Emerxencia de lume, necesítase axuda para evacuar';

  @override
  String get emergencyConsentName =>
      'Emerxencia de Consentimento no Dormitorio';

  @override
  String get emergencyConsentDesc =>
      'Palabra de seguridade pronunciada, necesítase testemuña';

  @override
  String get emergencyBystanderName => 'Testemuña Activa';

  @override
  String get emergencyBystanderDesc =>
      'Necesítase presenza para desescalar conflito';

  @override
  String get emergencyMissingPetName => 'Mascota Perdida';

  @override
  String get emergencyMissingPetDesc =>
      'A mascota perdeu-se ou fuxiu, necesítase grupo de busca';

  @override
  String get emergencyWellnessCheckName => 'Comprobación de Benestar';

  @override
  String get emergencyWellnessCheckDesc =>
      'Comprobar alguén que pode necesitar axuda';

  @override
  String get emergencyQuitCompanionName => 'Compañeiro de Abandono';

  @override
  String get emergencyQuitCompanionDesc =>
      'Loitando contra o desexo, necesito apoio';

  @override
  String get emergencyCompanionshipName => 'Compañía';

  @override
  String get emergencyCompanionshipDesc => 'Síntome só ou illado';

  @override
  String get emergency911CoordinationName => 'Coordinación 112';

  @override
  String get emergency911CoordinationDesc =>
      'Necesito axuda para chamar e coordinar co 112';

  @override
  String get equipmentAed => 'DEA';

  @override
  String get equipmentNaloxone => 'Naloxona/Narcan';

  @override
  String get myCapabilities => 'As Miñas Capacidades';

  @override
  String capabilitiesSelected(int count) {
    return '$count seleccionadas';
  }

  @override
  String get alertSchedule => 'Horario de Alertas';

  @override
  String get setAvailabilityHours =>
      'Establece as túas horas de dispoñibilidade';

  @override
  String get trustedResponders => 'Respondentes de Confianza';

  @override
  String get responseHistory => 'Historial de Respostas';

  @override
  String get privacyAndSafety => 'Privacidade e Seguridade';

  @override
  String get helpAndSupport => 'Axuda e Apoio';

  @override
  String get aboutNayborSos => 'Acerca de Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Termos e Política de Privacidade';

  @override
  String get signOut => 'Pechar Sesión';

  @override
  String version(String version) {
    return 'Versión $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS conecta veciños en emerxencias, creando unha rede de respondentes rápidos que poden proporcionar axuda crítica antes de que cheguen os primeiros respondentes profesionais.';

  @override
  String get aboutDialogContent2 =>
      'Todos poden ser heroes. Non necesitas adestramento especial para salvar unha vida. Ás veces a intervención máis poderosa é simplemente aparecer.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Pechar';

  @override
  String get signOutQuestion => 'Pechar Sesión?';

  @override
  String get signOutConfirm => 'Estás seguro de que queres pechar a sesión?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get signedOutSuccessfully => 'Sesión pechada con éxito';

  @override
  String get settings => 'Configuración';

  @override
  String get capabilityWellnessCheck => 'Comprobación de Benestar';

  @override
  String get capabilityQuitCompanion => 'Compañeiro de Abandono';

  @override
  String get capabilityActiveBystander => 'Testemuña Activa';

  @override
  String get translationTier1Label => 'Tradución IA de Alta Confianza';

  @override
  String get translationTier2Label => 'Tradución IA de Boa Confianza';

  @override
  String get translationTier3Label => 'Tradución IA de Confianza Media';

  @override
  String get translationTier4Label => 'Tradución IA de Baixa Confianza';

  @override
  String get translationTier1Notice =>
      'Esta tradución foi xerada por IA con alta confianza. Recóméndase revisión profesional para uso en produción.';

  @override
  String get translationTier2Notice =>
      'Esta tradución foi xerada por IA con boa confianza. Recóméndase revisión profesional para terminoloxía crítica de seguridade sobre consentimento e emerxencias.';

  @override
  String get translationTier3Notice =>
      '⚠️ Esta tradución require revisión humana para frases de emerxencia críticas de seguridade antes do uso en produción.';

  @override
  String get translationTier4Notice =>
      '⚠️ Esta é só unha tradución borrador. Requírese tradución profesional antes do uso en produción.';

  @override
  String get selectLanguage => 'Seleccionar Idioma';

  @override
  String get searchLanguagesHint => 'Buscar idiomas';

  @override
  String translationQualityLabel(String quality) {
    return 'Calidade da Tradución: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Axuda a mellorar as traducións - informa de problemas ou contribue con mellores traducións!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
