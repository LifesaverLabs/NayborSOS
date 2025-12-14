// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Hommes et Femmes-Minutes Modernes';

  @override
  String get signUpToHelp => 'Inscrivez-vous pour aider vos voisins';

  @override
  String get enterPhoneNumber =>
      'Entrez votre numéro de téléphone pour commencer';

  @override
  String get phoneNumberLabel => 'Numéro de téléphone';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Envoyer le code de vérification';

  @override
  String get enterVerificationCode => 'Entrez le code de vérification';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Nous avons envoyé un code à $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Code de vérification';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Vérifier et continuer';

  @override
  String get changePhoneNumber => 'Changer le numéro de téléphone';

  @override
  String get pleaseEnterPhoneNumber =>
      'Veuillez entrer votre numéro de téléphone';

  @override
  String get pleaseEnterVerificationCode =>
      'Veuillez entrer le code de vérification';

  @override
  String get createProfile => 'Créer un profil';

  @override
  String get tellUsAboutYourself => 'Parlez-nous de vous';

  @override
  String get profileSetupDescription =>
      'Ces informations nous aident à vous connecter avec les voisins qui ont besoin d\'aide';

  @override
  String get addPhotoOptional => 'Ajouter une photo (optionnel)';

  @override
  String get fullNameLabel => 'Nom complet *';

  @override
  String get fullNameHint => 'Jean Dupont';

  @override
  String get homeAddressLabel => 'Adresse du domicile *';

  @override
  String get homeAddressHint => '123 Rue Principale, Apt 4B';

  @override
  String get homeAddressHelper =>
      'Utilisé uniquement pour la correspondance de proximité';

  @override
  String get ageOptionalLabel => 'Âge (optionnel)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Les 70+ ans peuvent définir des heures d\'alerte douces';

  @override
  String get yourPrivacyMatters => 'Votre vie privée compte';

  @override
  String get privacyNotice =>
      'Votre emplacement n\'est interrogé que pendant les urgences actives et n\'est jamais stocké à long terme.';

  @override
  String get continueButton => 'Continuer';

  @override
  String get pleaseFillRequiredFields =>
      'Veuillez remplir tous les champs obligatoires';

  @override
  String get home => 'Accueil';

  @override
  String get alerts => 'Alertes';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Disponible pour répondre';

  @override
  String get notAvailable => 'Non disponible';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Vous recevrez des alertes d\'urgence à proximité';

  @override
  String get toggleOnWhenReady => 'Activez quand vous êtes prêt à aider';

  @override
  String get youreNowAvailable =>
      'Vous êtes maintenant disponible pour répondre';

  @override
  String get youWontReceiveAlerts => 'Vous ne recevrez pas d\'alertes';

  @override
  String get lifeThreatening247Info =>
      'Les alertes vitales vous notifieront 24h/24 et 7j/7. Les alertes non urgentes respectent votre emploi du temps.';

  @override
  String get requestHelp => 'DEMANDER DE L\'AIDE';

  @override
  String get yourImpact => 'Votre impact';

  @override
  String get responses => 'Réponses';

  @override
  String get avgTime => 'Temps moyen';

  @override
  String get yourCapabilities => 'Vos capacités';

  @override
  String get edit => 'Modifier';

  @override
  String get communityNetwork => 'Réseau communautaire';

  @override
  String get nearbyResponders => 'Intervenants à proximité';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponibles';
  }

  @override
  String get coverageRadius => 'Rayon de couverture';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance miles';
  }

  @override
  String get activeAlerts => 'Alertes actives';

  @override
  String get none => 'Aucun';

  @override
  String get yourLocation => 'Votre emplacement';

  @override
  String get whatDoYouNeedHelpWith => 'De quoi avez-vous besoin d\'aide?';

  @override
  String get additionalDetailsOptional => 'Détails supplémentaires (optionnel)';

  @override
  String get describeSituation => 'Décrivez la situation...';

  @override
  String get alertTrustedRespondersFirst =>
      'Alerter d\'abord mes intervenants de confiance';

  @override
  String get trustedRespondersDescription =>
      'Vos amis/famille sélectionnés seront notifiés avant la communauté générale';

  @override
  String sendingAlert(String emergencyType) {
    return 'Envoi de l\'alerte: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ENVOYER L\'ALERTE MAINTENANT';

  @override
  String get pleaseSelectEmergencyType =>
      'Veuillez sélectionner un type d\'urgence';

  @override
  String get categoryLifeThreatening => '🔴 Danger mortel';

  @override
  String get categorySecuritySafety => '🟠 Sécurité';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent - Temps limité';

  @override
  String get categoryNonLifeThreatening => '🟢 Non mortel';

  @override
  String get emergencyCprCardiacName => 'RCR / Arrêt cardiaque';

  @override
  String get emergencyCprCardiacDesc =>
      'La personne ne répond pas et ne respire pas';

  @override
  String get emergencyAedName => 'Livraison de DAE';

  @override
  String get emergencyAedDesc => 'Besoin d\'un DAE immédiatement';

  @override
  String get emergencyOverdoseName => 'Surdose / Naloxone';

  @override
  String get emergencyOverdoseDesc => 'Surdose suspectée, besoin de naloxone';

  @override
  String get emergencyChokingName => 'Étouffement / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'La personne s\'étouffe et ne peut pas respirer';

  @override
  String get emergencyFireName => 'Incendie / Évacuation';

  @override
  String get emergencyFireDesc =>
      'Urgence d\'incendie, besoin d\'aide pour évacuer';

  @override
  String get emergencyConsentName => 'Urgence de consentement';

  @override
  String get emergencyConsentDesc => 'Mot de sécurité appelé, besoin de témoin';

  @override
  String get emergencyBystanderName => 'Témoin actif';

  @override
  String get emergencyBystanderDesc =>
      'Besoin de présence pour désamorcer le conflit';

  @override
  String get emergencyMissingPetName => 'Animal perdu';

  @override
  String get emergencyMissingPetDesc =>
      'Animal perdu ou enfui, besoin d\'équipe de recherche';

  @override
  String get emergencyWellnessCheckName => 'Vérification du bien-être';

  @override
  String get emergencyWellnessCheckDesc =>
      'Vérifier quelqu\'un qui pourrait avoir besoin d\'aide';

  @override
  String get emergencyQuitCompanionName => 'Compagnon d\'arrêt';

  @override
  String get emergencyQuitCompanionDesc =>
      'Lutte contre l\'envie, besoin de soutien';

  @override
  String get emergencyCompanionshipName => 'Compagnie';

  @override
  String get emergencyCompanionshipDesc => 'Se sentir seul ou isolé';

  @override
  String get emergency911CoordinationName => 'Coordination 911';

  @override
  String get emergency911CoordinationDesc =>
      'Besoin d\'aide pour appeler et coordonner le 911';

  @override
  String get equipmentAed => 'DAE';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Mes capacités';

  @override
  String capabilitiesSelected(int count) {
    return '$count sélectionnées';
  }

  @override
  String get alertSchedule => 'Horaire d\'alerte';

  @override
  String get setAvailabilityHours => 'Définissez vos heures de disponibilité';

  @override
  String get trustedResponders => 'Intervenants de confiance';

  @override
  String get responseHistory => 'Historique des réponses';

  @override
  String get privacyAndSafety => 'Confidentialité et sécurité';

  @override
  String get helpAndSupport => 'Aide et support';

  @override
  String get aboutNayborSos => 'À propos de Naybor SOS';

  @override
  String get termsAndPrivacyPolicy =>
      'Conditions et politique de confidentialité';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS connecte les voisins en cas d\'urgence, créant un réseau d\'intervenants rapides qui peuvent fournir une aide critique avant l\'arrivée des premiers intervenants professionnels.';

  @override
  String get aboutDialogContent2 =>
      'Tout le monde peut être un héros. Vous n\'avez pas besoin d\'une formation spéciale pour sauver une vie. Parfois, l\'intervention la plus puissante est simplement d\'être présent.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Société à but lucratif public';

  @override
  String get close => 'Fermer';

  @override
  String get signOutQuestion => 'Se déconnecter?';

  @override
  String get signOutConfirm => 'Êtes-vous sûr de vouloir vous déconnecter?';

  @override
  String get cancel => 'Annuler';

  @override
  String get signedOutSuccessfully => 'Déconnecté avec succès';

  @override
  String get settings => 'Paramètres';

  @override
  String get capabilityWellnessCheck => 'Vérification du bien-être';

  @override
  String get capabilityQuitCompanion => 'Compagnon d\'arrêt';

  @override
  String get capabilityActiveBystander => 'Témoin actif';

  @override
  String get translationTier1Label => 'Traduction IA de Haute Confiance';

  @override
  String get translationTier2Label => 'Traduction IA de Bonne Confiance';

  @override
  String get translationTier3Label => 'Traduction IA de Confiance Moyenne';

  @override
  String get translationTier4Label => 'Traduction IA de Faible Confiance';

  @override
  String get translationTier1Notice =>
      'Cette traduction a été générée par IA avec une haute confiance. Révision professionnelle recommandée pour une utilisation en production.';

  @override
  String get translationTier2Notice =>
      'Cette traduction a été générée par IA avec une bonne confiance. Révision professionnelle recommandée pour la terminologie critique de sécurité et d\'urgence.';

  @override
  String get translationTier3Notice =>
      '⚠️ Cette traduction nécessite une révision humaine pour les phrases d\'urgence critiques pour la sécurité avant l\'utilisation en production.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ceci n\'est qu\'une traduction provisoire. Traduction professionnelle requise avant l\'utilisation en production.';

  @override
  String get selectLanguage => 'Sélectionner la Langue';

  @override
  String get searchLanguagesHint => 'Rechercher des langues';

  @override
  String translationQualityLabel(String quality) {
    return 'Qualité de traduction: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Aidez à améliorer les traductions - signalez les problèmes ou contribuez de meilleures traductions!';
}
