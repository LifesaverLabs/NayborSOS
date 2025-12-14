// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen y Minutewomen Modernos';

  @override
  String get signUpToHelp => 'Regístrate para ayudar a tus vecinos';

  @override
  String get enterPhoneNumber => 'Ingresa tu número de teléfono para comenzar';

  @override
  String get phoneNumberLabel => 'Número de Teléfono';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Enviar Código de Verificación';

  @override
  String get enterVerificationCode => 'Ingresa el código de verificación';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Enviamos un código a $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Código de Verificación';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verificar y Continuar';

  @override
  String get changePhoneNumber => 'Cambiar número de teléfono';

  @override
  String get pleaseEnterPhoneNumber =>
      'Por favor ingresa tu número de teléfono';

  @override
  String get pleaseEnterVerificationCode =>
      'Por favor ingresa el código de verificación';

  @override
  String get createProfile => 'Crear Perfil';

  @override
  String get tellUsAboutYourself => 'Cuéntanos sobre ti';

  @override
  String get profileSetupDescription =>
      'Esta información nos ayuda a conectarte con vecinos que necesitan ayuda';

  @override
  String get addPhotoOptional => 'Agregar foto (opcional)';

  @override
  String get fullNameLabel => 'Nombre Completo *';

  @override
  String get fullNameHint => 'Juan García';

  @override
  String get homeAddressLabel => 'Dirección de Casa *';

  @override
  String get homeAddressHint => 'Calle Principal 123, Apt 4B';

  @override
  String get homeAddressHelper =>
      'Solo se usa para emparejamiento por proximidad';

  @override
  String get ageOptionalLabel => 'Edad (opcional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Mayores de 70 pueden configurar horas de alerta suaves';

  @override
  String get yourPrivacyMatters => 'Tu privacidad importa';

  @override
  String get privacyNotice =>
      'Tu ubicación solo se consulta durante emergencias activas y nunca se almacena a largo plazo.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get pleaseFillRequiredFields =>
      'Por favor completa todos los campos requeridos';

  @override
  String get home => 'Inicio';

  @override
  String get alerts => 'Alertas';

  @override
  String get profile => 'Perfil';

  @override
  String get availableToRespond => 'Disponible para Responder';

  @override
  String get notAvailable => 'No Disponible';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Recibirás alertas de emergencia cercanas';

  @override
  String get toggleOnWhenReady => 'Activa cuando estés listo para ayudar';

  @override
  String get youreNowAvailable => 'Ahora estás disponible para responder';

  @override
  String get youWontReceiveAlerts => 'No recibirás alertas';

  @override
  String get lifeThreatening247Info =>
      'Las alertas de amenaza vital te notificarán 24/7. Las alertas no urgentes respetan tu horario.';

  @override
  String get requestHelp => 'SOLICITAR AYUDA';

  @override
  String get yourImpact => 'Tu Impacto';

  @override
  String get responses => 'Respuestas';

  @override
  String get avgTime => 'Tiempo Prom';

  @override
  String get yourCapabilities => 'Tus Capacidades';

  @override
  String get edit => 'Editar';

  @override
  String get communityNetwork => 'Red Comunitaria';

  @override
  String get nearbyResponders => 'Respondedores Cercanos';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponibles';
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
  String get none => 'Ninguna';

  @override
  String get yourLocation => 'Tu Ubicación';

  @override
  String get whatDoYouNeedHelpWith => '¿Con qué necesitas ayuda?';

  @override
  String get additionalDetailsOptional => 'Detalles Adicionales (opcional)';

  @override
  String get describeSituation => 'Describe la situación...';

  @override
  String get alertTrustedRespondersFirst =>
      'Alertar primero a mis respondedores de confianza';

  @override
  String get trustedRespondersDescription =>
      'Tus amigos/familiares seleccionados serán notificados antes que la comunidad general';

  @override
  String sendingAlert(String emergencyType) {
    return 'Enviando alerta: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ENVIAR ALERTA AHORA';

  @override
  String get pleaseSelectEmergencyType =>
      'Por favor selecciona un tipo de emergencia';

  @override
  String get categoryLifeThreatening => '🔴 Amenaza Vital';

  @override
  String get categorySecuritySafety => '🟠 Seguridad';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgente Sensible al Tiempo';

  @override
  String get categoryNonLifeThreatening => '🟢 No Amenaza Vital';

  @override
  String get emergencyCprCardiacName => 'RCP / Paro Cardíaco';

  @override
  String get emergencyCprCardiacDesc => 'Persona no responde y no respira';

  @override
  String get emergencyAedName => 'Entrega de DEA';

  @override
  String get emergencyAedDesc => 'Necesito un DEA inmediatamente';

  @override
  String get emergencyOverdoseName => 'Sobredosis / Naloxona';

  @override
  String get emergencyOverdoseDesc =>
      'Sobredosis sospechada, necesito naloxona';

  @override
  String get emergencyChokingName => 'Atragantamiento / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Persona se está atragantando y no puede respirar';

  @override
  String get emergencyFireName => 'Incendio / Evacuación';

  @override
  String get emergencyFireDesc =>
      'Emergencia de incendio, necesito ayuda para evacuar';

  @override
  String get emergencyConsentName => 'Emergencia de Consentimiento';

  @override
  String get emergencyConsentDesc =>
      'Palabra de seguridad dicha, necesito testigo';

  @override
  String get emergencyBystanderName => 'Testigo Activo';

  @override
  String get emergencyBystanderDesc =>
      'Necesito presencia para desescalar conflicto';

  @override
  String get emergencyMissingPetName => 'Mascota Perdida';

  @override
  String get emergencyMissingPetDesc =>
      'Mascota perdida o escapó, necesito grupo de búsqueda';

  @override
  String get emergencyWellnessCheckName => 'Verificación de Bienestar';

  @override
  String get emergencyWellnessCheckDesc =>
      'Verificar a alguien que puede necesitar ayuda';

  @override
  String get emergencyQuitCompanionName => 'Compañero para Dejar';

  @override
  String get emergencyQuitCompanionDesc =>
      'Luchando contra el deseo, necesito apoyo';

  @override
  String get emergencyCompanionshipName => 'Compañía';

  @override
  String get emergencyCompanionshipDesc => 'Sintiéndome solo o aislado';

  @override
  String get emergency911CoordinationName => 'Coordinación 911';

  @override
  String get emergency911CoordinationDesc =>
      'Necesito ayuda llamando y coordinando 911';

  @override
  String get equipmentAed => 'DEA';

  @override
  String get equipmentNaloxone => 'Naloxona/Narcan';

  @override
  String get myCapabilities => 'Mis Capacidades';

  @override
  String capabilitiesSelected(int count) {
    return '$count seleccionadas';
  }

  @override
  String get alertSchedule => 'Horario de Alertas';

  @override
  String get setAvailabilityHours => 'Establece tus horas de disponibilidad';

  @override
  String get trustedResponders => 'Respondedores de Confianza';

  @override
  String get responseHistory => 'Historial de Respuestas';

  @override
  String get privacyAndSafety => 'Privacidad y Seguridad';

  @override
  String get helpAndSupport => 'Ayuda y Soporte';

  @override
  String get aboutNayborSos => 'Acerca de Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Términos y Política de Privacidad';

  @override
  String get signOut => 'Cerrar Sesión';

  @override
  String version(String version) {
    return 'Versión $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS conecta vecinos en emergencias, creando una red de respondedores rápidos que pueden proporcionar ayuda crítica antes de que lleguen los primeros respondedores profesionales.';

  @override
  String get aboutDialogContent2 =>
      'Todos pueden ser héroes. No necesitas entrenamiento especial para salvar una vida. A veces la intervención más poderosa es simplemente aparecer.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Corporación de Beneficio Público';

  @override
  String get close => 'Cerrar';

  @override
  String get signOutQuestion => '¿Cerrar Sesión?';

  @override
  String get signOutConfirm => '¿Estás seguro de que quieres cerrar sesión?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get signedOutSuccessfully => 'Sesión cerrada exitosamente';

  @override
  String get settings => 'Configuración';

  @override
  String get capabilityWellnessCheck => 'Verificación de Bienestar';

  @override
  String get capabilityQuitCompanion => 'Compañero para Dejar';

  @override
  String get capabilityActiveBystander => 'Testigo Activo';

  @override
  String get translationTier1Label => 'Traducción IA de Alta Confianza';

  @override
  String get translationTier2Label => 'Traducción IA de Buena Confianza';

  @override
  String get translationTier3Label => 'Traducción IA de Confianza Media';

  @override
  String get translationTier4Label => 'Traducción IA de Baja Confianza';

  @override
  String get translationTier1Notice =>
      'Esta traducción fue generada por IA con alta confianza. Se recomienda revisión profesional para uso en producción.';

  @override
  String get translationTier2Notice =>
      'Esta traducción fue generada por IA con buena confianza. Se recomienda revisión profesional para terminología crítica de seguridad y emergencias.';

  @override
  String get translationTier3Notice =>
      '⚠️ Esta traducción requiere revisión humana para frases de emergencia críticas para la seguridad antes del uso en producción.';

  @override
  String get translationTier4Notice =>
      '⚠️ Esta es solo una traducción provisional. Se requiere traducción profesional antes del uso en producción.';

  @override
  String get selectLanguage => 'Seleccionar Idioma';

  @override
  String get searchLanguagesHint => 'Buscar idiomas';

  @override
  String translationQualityLabel(String quality) {
    return 'Calidad de traducción: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ayuda a mejorar las traducciones - reporta problemas o contribuye mejores traducciones!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
