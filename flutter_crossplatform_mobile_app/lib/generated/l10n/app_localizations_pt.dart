// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen e Minutewomen dos Tempos Modernos';

  @override
  String get signUpToHelp => 'Inscreva-se para ajudar seus vizinhos';

  @override
  String get enterPhoneNumber => 'Digite seu número de telefone para começar';

  @override
  String get phoneNumberLabel => 'Número de Telefone';

  @override
  String get phoneNumberHint => '(11) 99999-9999';

  @override
  String get sendVerificationCode => 'Enviar Código de Verificação';

  @override
  String get enterVerificationCode => 'Digite o código de verificação';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Enviamos um código para $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Código de Verificação';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verificar e Continuar';

  @override
  String get changePhoneNumber => 'Alterar número de telefone';

  @override
  String get pleaseEnterPhoneNumber =>
      'Por favor, digite seu número de telefone';

  @override
  String get pleaseEnterVerificationCode =>
      'Por favor, digite o código de verificação';

  @override
  String get createProfile => 'Criar Perfil';

  @override
  String get tellUsAboutYourself => 'Conte-nos sobre você';

  @override
  String get profileSetupDescription =>
      'Essas informações nos ajudam a conectá-lo com vizinhos que precisam de ajuda';

  @override
  String get addPhotoOptional => 'Adicionar foto (opcional)';

  @override
  String get fullNameLabel => 'Nome Completo *';

  @override
  String get fullNameHint => 'João Silva';

  @override
  String get homeAddressLabel => 'Endereço Residencial *';

  @override
  String get homeAddressHint => 'Rua Principal, 123, Apto 4B';

  @override
  String get homeAddressHelper =>
      'Usado apenas para correspondência de proximidade';

  @override
  String get ageOptionalLabel => 'Idade (opcional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Pessoas 70+ podem definir horários de alerta suaves';

  @override
  String get yourPrivacyMatters => 'Sua privacidade importa';

  @override
  String get privacyNotice =>
      'Sua localização é consultada apenas durante emergências ativas e nunca armazenada a longo prazo.';

  @override
  String get continueButton => 'Continuar';

  @override
  String get pleaseFillRequiredFields =>
      'Por favor, preencha todos os campos obrigatórios';

  @override
  String get home => 'Início';

  @override
  String get alerts => 'Alertas';

  @override
  String get profile => 'Perfil';

  @override
  String get availableToRespond => 'Disponível para Responder';

  @override
  String get notAvailable => 'Não Disponível';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Você receberá alertas de emergência próximos';

  @override
  String get toggleOnWhenReady => 'Ative quando estiver pronto para ajudar';

  @override
  String get youreNowAvailable => 'Você está disponível para responder';

  @override
  String get youWontReceiveAlerts => 'Você não receberá alertas';

  @override
  String get lifeThreatening247Info =>
      'Alertas de risco de vida o notificarão 24h por dia. Alertas não urgentes respeitam sua agenda.';

  @override
  String get requestHelp => 'SOLICITAR AJUDA';

  @override
  String get yourImpact => 'Seu Impacto';

  @override
  String get responses => 'Respostas';

  @override
  String get avgTime => 'Tempo Médio';

  @override
  String get yourCapabilities => 'Suas Capacidades';

  @override
  String get edit => 'Editar';

  @override
  String get communityNetwork => 'Rede da Comunidade';

  @override
  String get nearbyResponders => 'Socorristas Próximos';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponíveis';
  }

  @override
  String get coverageRadius => 'Raio de Cobertura';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance quilômetros';
  }

  @override
  String get activeAlerts => 'Alertas Ativos';

  @override
  String get none => 'Nenhum';

  @override
  String get yourLocation => 'Sua Localização';

  @override
  String get whatDoYouNeedHelpWith => 'Com o que você precisa de ajuda?';

  @override
  String get additionalDetailsOptional => 'Detalhes Adicionais (opcional)';

  @override
  String get describeSituation => 'Descreva a situação...';

  @override
  String get alertTrustedRespondersFirst =>
      'Alertar meus socorristas de confiança primeiro';

  @override
  String get trustedRespondersDescription =>
      'Seus amigos/familiares selecionados serão notificados antes da comunidade em geral';

  @override
  String sendingAlert(String emergencyType) {
    return 'Enviando alerta: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ENVIAR ALERTA AGORA';

  @override
  String get pleaseSelectEmergencyType =>
      'Por favor, selecione um tipo de emergência';

  @override
  String get categoryLifeThreatening => '🔴 Risco de Vida';

  @override
  String get categorySecuritySafety => '🟠 Segurança/Proteção';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgente Sensível ao Tempo';

  @override
  String get categoryNonLifeThreatening => '🟢 Sem Risco de Vida';

  @override
  String get emergencyCprCardiacName => 'RCP / Parada Cardíaca';

  @override
  String get emergencyCprCardiacDesc =>
      'Pessoa não responde e não está respirando';

  @override
  String get emergencyAedName => 'Entrega de DEA';

  @override
  String get emergencyAedDesc => 'Preciso de um DEA imediatamente';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxona';

  @override
  String get emergencyOverdoseDesc =>
      'Suspeita de overdose, preciso de naloxona';

  @override
  String get emergencyChokingName => 'Engasgo / Manobra de Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Pessoa está engasgando e não consegue respirar';

  @override
  String get emergencyFireName => 'Incêndio / Evacuação';

  @override
  String get emergencyFireDesc =>
      'Emergência de incêndio, preciso de ajuda para evacuação';

  @override
  String get emergencyConsentName => 'Emergência de Consentimento Íntimo';

  @override
  String get emergencyConsentDesc =>
      'Palavra de segurança acionada, preciso de testemunha';

  @override
  String get emergencyBystanderName => 'Testemunha Ativa';

  @override
  String get emergencyBystanderDesc =>
      'Preciso de presença para amenizar conflito';

  @override
  String get emergencyMissingPetName => 'Animal de Estimação Perdido';

  @override
  String get emergencyMissingPetDesc =>
      'Pet está perdido ou fugiu, preciso de grupo de busca';

  @override
  String get emergencyWellnessCheckName => 'Verificação de Bem-estar';

  @override
  String get emergencyWellnessCheckDesc =>
      'Verificar alguém que pode precisar de ajuda';

  @override
  String get emergencyQuitCompanionName => 'Companheiro de Cessação';

  @override
  String get emergencyQuitCompanionDesc =>
      'Lutando contra desejo, preciso de apoio';

  @override
  String get emergencyCompanionshipName => 'Companhia';

  @override
  String get emergencyCompanionshipDesc => 'Me sentindo solitário ou isolado';

  @override
  String get emergency911CoordinationName => 'Coordenação de Emergência';

  @override
  String get emergency911CoordinationDesc =>
      'Preciso de ajuda para ligar e coordenar serviços de emergência';

  @override
  String get equipmentAed => 'DEA';

  @override
  String get equipmentNaloxone => 'Naloxona/Narcan';

  @override
  String get myCapabilities => 'Minhas Capacidades';

  @override
  String capabilitiesSelected(int count) {
    return '$count selecionadas';
  }

  @override
  String get alertSchedule => 'Agenda de Alertas';

  @override
  String get setAvailabilityHours => 'Defina seus horários de disponibilidade';

  @override
  String get trustedResponders => 'Socorristas de Confiança';

  @override
  String get responseHistory => 'Histórico de Respostas';

  @override
  String get privacyAndSafety => 'Privacidade e Segurança';

  @override
  String get helpAndSupport => 'Ajuda e Suporte';

  @override
  String get aboutNayborSos => 'Sobre Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Termos e Política de Privacidade';

  @override
  String get signOut => 'Sair';

  @override
  String version(String version) {
    return 'Versão $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS conecta vizinhos em emergências, criando uma rede de socorristas rápidos que podem fornecer ajuda crítica antes da chegada dos primeiros socorristas profissionais.';

  @override
  String get aboutDialogContent2 =>
      'Todos podem ser heróis. Você não precisa de treinamento especial para salvar uma vida. Às vezes, a intervenção mais poderosa é simplesmente aparecer.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Fechar';

  @override
  String get signOutQuestion => 'Sair?';

  @override
  String get signOutConfirm => 'Tem certeza de que deseja sair?';

  @override
  String get cancel => 'Cancelar';

  @override
  String get signedOutSuccessfully => 'Logout realizado com sucesso';

  @override
  String get settings => 'Configurações';

  @override
  String get capabilityWellnessCheck => 'Verificação de Bem-estar';

  @override
  String get capabilityQuitCompanion => 'Companheiro de Cessação';

  @override
  String get capabilityActiveBystander => 'Testemunha Ativa';

  @override
  String get translationTier1Label => 'Tradução IA de Alta Confiança';

  @override
  String get translationTier2Label => 'Tradução IA de Boa Confiança';

  @override
  String get translationTier3Label => 'Tradução IA de Confiança Média';

  @override
  String get translationTier4Label => 'Tradução IA de Baixa Confiança';

  @override
  String get translationTier1Notice =>
      'Esta tradução foi gerada por IA com alta confiança. Revisão profissional recomendada para uso em produção.';

  @override
  String get translationTier2Notice =>
      'Esta tradução foi gerada por IA com boa confiança. Revisão profissional recomendada para terminologia crítica de segurança, consentimento e emergência.';

  @override
  String get translationTier3Notice =>
      '⚠️ Esta tradução requer revisão humana para frases críticas de emergência antes do uso em produção.';

  @override
  String get translationTier4Notice =>
      '⚠️ Esta é apenas uma tradução rascunho. Tradução profissional necessária antes do uso em produção.';

  @override
  String get selectLanguage => 'Selecionar Idioma';

  @override
  String get searchLanguagesHint => 'Buscar idiomas';

  @override
  String translationQualityLabel(String quality) {
    return 'Qualidade da Tradução: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ajude a melhorar as traduções - reporte problemas ou contribua com traduções melhores!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
