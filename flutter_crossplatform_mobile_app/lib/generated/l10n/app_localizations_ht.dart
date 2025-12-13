// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haitian Haitian Creole (`ht`).
class AppLocalizationsHt extends AppLocalizations {
  AppLocalizationsHt([String locale = 'ht']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Sòlda Modèn yo ak Fanm Sòlda yo';

  @override
  String get signUpToHelp => 'Enskri w pou ede vwazen yo';

  @override
  String get enterPhoneNumber => 'Antre nimewo telefòn ou an pou w kòmanse';

  @override
  String get phoneNumberLabel => 'Nimewo Telefòn';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Voye Kòd Verifikasyon';

  @override
  String get enterVerificationCode => 'Antre kòd verifikasyon an';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Nou voye yon kòd nan $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kòd Verifikasyon';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifye ak Kontinye';

  @override
  String get changePhoneNumber => 'Chanje nimewo telefòn';

  @override
  String get pleaseEnterPhoneNumber => 'Tanpri antre nimewo telefòn ou';

  @override
  String get pleaseEnterVerificationCode => 'Tanpri antre kòd verifikasyon an';

  @override
  String get createProfile => 'Kreye Pwofil';

  @override
  String get tellUsAboutYourself => 'Di nou bagay sou tèt ou';

  @override
  String get profileSetupDescription =>
      'Enfòmasyon sa yo ede nou konekte w ak vwazen yo ki bezwen èd';

  @override
  String get addPhotoOptional => 'Ajoute foto (opsyonèl)';

  @override
  String get fullNameLabel => 'Non Konplè *';

  @override
  String get fullNameHint => 'Jan Smith';

  @override
  String get homeAddressLabel => 'Adrès Kay la *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'Yo sèlman itilize sa pou kalkile distans la';

  @override
  String get ageOptionalLabel => 'Laj (opsyonèl)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Moun ki gen 70 an ak pi plis ka chwazi èd nan òrè dou yo';

  @override
  String get yourPrivacyMatters => 'Vi prive w lan enpòtan';

  @override
  String get privacyNotice =>
      'Yo sèlman chèche kote w ye pandan ijans ak yo pa janm kenbe l longè.';

  @override
  String get continueButton => 'Kontinye';

  @override
  String get pleaseFillRequiredFields =>
      'Tanpri ranpli tout jan yo ki obligatwa yo';

  @override
  String get home => 'Kay';

  @override
  String get alerts => 'Alèt yo';

  @override
  String get profile => 'Pwofil';

  @override
  String get availableToRespond => 'Disponib pou Reponn';

  @override
  String get notAvailable => 'Pa Disponib';

  @override
  String get youllReceiveEmergencyAlerts =>
      'W ap resevwa alèt ijans yo ki tou pre';

  @override
  String get toggleOnWhenReady => 'Limen l lè w pare pou ede';

  @override
  String get youreNowAvailable => 'Ou disponib kounye a pou reponn';

  @override
  String get youWontReceiveAlerts => 'W ap pa resevwa alèt yo';

  @override
  String get lifeThreatening247Info =>
      'Alèt ki ka touye yo ap notifye w 24/7. Alèt ki pa ijan yo ap respekte òrè w yo.';

  @override
  String get requestHelp => 'MANDE ÈD';

  @override
  String get yourImpact => 'Enpak Ou';

  @override
  String get responses => 'Repons yo';

  @override
  String get avgTime => 'Tan Mwayèn';

  @override
  String get yourCapabilities => 'Kapasite Ou yo';

  @override
  String get edit => 'Modifye';

  @override
  String get communityNetwork => 'Rezo Kominote a';

  @override
  String get nearbyResponders => 'Moun ki ka Reponn yo ki Tou Pre';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponib';
  }

  @override
  String get coverageRadius => 'Zo Kouvèti';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Alèt Aktif yo';

  @override
  String get none => 'Okenn';

  @override
  String get yourLocation => 'Kote w ye';

  @override
  String get whatDoYouNeedHelpWith => 'Ki sa w bezwen èd ak?';

  @override
  String get additionalDetailsOptional => 'Detay Adisyonèl yo (opsyonèl)';

  @override
  String get describeSituation => 'Dekri sitiyasyon an...';

  @override
  String get alertTrustedRespondersFirst =>
      'Avèti moun ki ka reponn yo m fè konfyans yo an premye';

  @override
  String get trustedRespondersDescription =>
      'Zanmi ak fanmi ou chwazi yo ap resevwa avis yo anvan kominote jeneral la';

  @override
  String sendingAlert(String emergencyType) {
    return 'Y ap voye alèt: $emergencyType';
  }

  @override
  String get sendAlertNow => 'VOYE ALÈT KOUNYE A';

  @override
  String get pleaseSelectEmergencyType => 'Tanpri chwazi yon kalite ijans';

  @override
  String get categoryLifeThreatening => '🔴 Ki Ka Touye';

  @override
  String get categorySecuritySafety => '🟠 Sekirite/Pwoteksyon';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Ijan ak Sensitif ak Tan';

  @override
  String get categoryNonLifeThreatening => '🟢 Ki Pa Ka Touye';

  @override
  String get emergencyCprCardiacName => 'CPR / Krèt Kè';

  @override
  String get emergencyCprCardiacDesc => 'Moun nan pa reponn ak li pa respire';

  @override
  String get emergencyAedName => 'Livrezon AED';

  @override
  String get emergencyAedDesc => 'Bezwen yon AED imedyatman';

  @override
  String get emergencyOverdoseName => 'Sèdòz / Naloxone';

  @override
  String get emergencyOverdoseDesc => 'Yo sispèk sèdòz dwòg, bezwen naloxone';

  @override
  String get emergencyChokingName => 'Boukannen / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Moun nan ap boukannen ak li pa ka respire';

  @override
  String get emergencyFireName => 'Dife / Evakiyasyon';

  @override
  String get emergencyFireDesc => 'Ijans dife, bezwen èd pou evakiyasyon';

  @override
  String get emergencyConsentName => 'Ijans Konsantman nan Chanm';

  @override
  String get emergencyConsentDesc => 'Yo rele mo sekirite a, bezwen temwen';

  @override
  String get emergencyBystanderName => 'Temwen Moun k ap Gade';

  @override
  String get emergencyBystanderDesc => 'Bezwen prezans pou kalme konfli';

  @override
  String get emergencyMissingPetName => 'Bèt ki Pèdi';

  @override
  String get emergencyMissingPetDesc =>
      'Bèt la pèdi oswa li kouri ale, bezwen gwoup rechèch';

  @override
  String get emergencyWellnessCheckName => 'Kontwòl Sante';

  @override
  String get emergencyWellnessCheckDesc => 'Gade yon moun ki ka bezwen èd';

  @override
  String get emergencyQuitCompanionName => 'Konpanyen pou Sispann';

  @override
  String get emergencyQuitCompanionDesc => 'Y ap goumen ak antèn, bezwen sipò';

  @override
  String get emergencyCompanionshipName => 'Konpanyen';

  @override
  String get emergencyCompanionshipDesc => 'Santi m izole oswa pou kont mwen';

  @override
  String get emergency911CoordinationName => 'Kowòdinasyon 911';

  @override
  String get emergency911CoordinationDesc =>
      'Bezwen èd pou rele ak kowòdone 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Kapasite Mwen yo';

  @override
  String capabilitiesSelected(int count) {
    return '$count chwazi';
  }

  @override
  String get alertSchedule => 'Orè Alèt yo';

  @override
  String get setAvailabilityHours => 'Fikse òrè disponibilite w yo';

  @override
  String get trustedResponders => 'Moun ki ka Reponn yo m Fè Konfyans yo';

  @override
  String get responseHistory => 'Istwa Repons yo';

  @override
  String get privacyAndSafety => 'Vi Prive ak Sekirite';

  @override
  String get helpAndSupport => 'Èd ak Sipò';

  @override
  String get aboutNayborSos => 'Bagay sou Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Kondisyon yo ak Politik Vi Prive';

  @override
  String get signOut => 'Soti';

  @override
  String version(String version) {
    return 'Vèsyon $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS konekte vwazen yo nan ijans yo, li kreye yon rezo moun ki ka reponn rapidman yo ki ka bay èd kritik anvan moun k ap travay nan premye sekou yo rive.';

  @override
  String get aboutDialogContent2 =>
      'Tout moun ka yon ewo. Ou pa bezwen fòmasyon espesyal pou sove yon lavi. Pafwa entèvansyon ki pi pwisan an se sèlman parèt.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Fèmen';

  @override
  String get signOutQuestion => 'Soti?';

  @override
  String get signOutConfirm => 'Èske w si w vle soti?';

  @override
  String get cancel => 'Anile';

  @override
  String get signedOutSuccessfully => 'Ou soti ak siksè';

  @override
  String get settings => 'Paramèt yo';

  @override
  String get capabilityWellnessCheck => 'Kontwòl Sante';

  @override
  String get capabilityQuitCompanion => 'Konpanyen pou Sispann';

  @override
  String get capabilityActiveBystander => 'Moun k ap Gade Aktif';

  @override
  String get translationTier1Label => 'Tradiksyon AI ak Konfyans Segondè';

  @override
  String get translationTier2Label => 'Tradiksyon AI ak Bon Konfyans';

  @override
  String get translationTier3Label => 'Tradiksyon AI ak Konfyans Mwayen';

  @override
  String get translationTier4Label => 'Tradiksyon AI ak Ti Konfyans';

  @override
  String get translationTier1Notice =>
      'Tradiksyon sa a AI te fè l ak konfyans segondè. Yo rekòmande revizyon pwofesyonèl pou itilizasyon nan pwodiksyon.';

  @override
  String get translationTier2Notice =>
      'Tradiksyon sa a AI te fè l ak bon konfyans. Yo rekòmande revizyon pwofesyonèl pou konsantman ak tèm ijans yo ki kritik pou sekirite.';

  @override
  String get translationTier3Notice =>
      '⚠️ Tradiksyon sa a mande revizyon moun pou fraz ijans yo ki kritik pou sekirite anvan yo itilize l nan pwodiksyon.';

  @override
  String get translationTier4Notice =>
      '⚠️ Sa a se sèlman yon bouyon tradiksyon. Yo mande tradiksyon pwofesyonèl anvan itilizasyon nan pwodiksyon.';

  @override
  String get selectLanguage => 'Chwazi Lang';

  @override
  String get searchLanguagesHint => 'Chèche lang yo';

  @override
  String translationQualityLabel(String quality) {
    return 'Kalite Tradiksyon: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ede yo amelyore tradiksyon yo - rapòte pwoblèm yo oswa kontribye tradiksyon yo ki pi bon!';
}
