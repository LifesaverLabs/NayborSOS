// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Quechua (`qu`).
class AppLocalizationsQu extends AppLocalizations {
  AppLocalizationsQu([String locale = 'qu']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Kunan Pachak Yanapakuqkuna';

  @override
  String get signUpToHelp => 'Qayllaykikuna yanapanaykipaq qillqakuy';

  @override
  String get enterPhoneNumber =>
      'Telefono yupaykita qillqay qallariykunaykipaq';

  @override
  String get phoneNumberLabel => 'Telefono Yupay';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Takyachiy Codigo Kachay';

  @override
  String get enterVerificationCode => 'Takyachiy codigota qillqay';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Huk codigota kachaykuqa $phoneNumber-man';
  }

  @override
  String get verificationCodeLabel => 'Takyachiy Codigo';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Takyachiy hinaspa Purichiy';

  @override
  String get changePhoneNumber => 'Telefono yupayta tikray';

  @override
  String get pleaseEnterPhoneNumber =>
      'Ama hina kaspa, telefono yupaykita qillqay';

  @override
  String get pleaseEnterVerificationCode =>
      'Ama hina kaspa, takyachiy codigota qillqay';

  @override
  String get createProfile => 'Perfil Ruray';

  @override
  String get tellUsAboutYourself => 'Kikiykimanta willaykuway';

  @override
  String get profileSetupDescription =>
      'Kay willaykuna yanapawankuqa yanapana munaq qayllaykikunawan tinkichinaykupaq';

  @override
  String get addPhotoOptional => 'Foto yapay (munasqa)';

  @override
  String get fullNameLabel => 'Hunt\'a Suti *';

  @override
  String get fullNameHint => 'Juan Quispe';

  @override
  String get homeAddressLabel => 'Wasiyki Direccion *';

  @override
  String get homeAddressHint => '123 Hatun Ñan, Cuarto 4B';

  @override
  String get homeAddressHelper => 'Askhaylla maskhanaypaqlla llamk\'achisqa';

  @override
  String get ageOptionalLabel => 'Wata (munasqalla)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70 watayuq aswan hatunkuna sumaq alerta pachakuna churaymanku';

  @override
  String get yourPrivacyMatters => 'Pakasqayki ancha chanin';

  @override
  String get privacyNotice =>
      'Maypiykasqayki emergenciakuna kaqllapi tapusqa, manataqmi unay pachapaq waqaychasqachu kanqa.';

  @override
  String get continueButton => 'Purichiy';

  @override
  String get pleaseFillRequiredFields =>
      'Ama hina kaspa, llapa necesario kaq qillqakunata hunt\'achiy';

  @override
  String get home => 'Wasi';

  @override
  String get alerts => 'Alertakuna';

  @override
  String get profile => 'Perfil';

  @override
  String get availableToRespond => 'Kutichiykunapaq Wakichisqa';

  @override
  String get notAvailable => 'Mana Wakichisqa';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Qayllaykipi emergencia alertakuna chaskimunki';

  @override
  String get toggleOnWhenReady => 'Yanapaykunapaq wakichisqa kaptiyki wichay';

  @override
  String get youreNowAvailable => 'Kunanqa wakichisqañam kanki kutichiypaq';

  @override
  String get youWontReceiveAlerts => 'Mana alertakuna chaskimunkichu';

  @override
  String get lifeThreatening247Info =>
      'Kawsaypa pisiyachiq alertakuna 24/7 willanki. Mana utqaylla alertakuna horariykiraq kasunkichik.';

  @override
  String get requestHelp => 'YANAPAKUY MAÑAY';

  @override
  String get yourImpact => 'Rurasqayki';

  @override
  String get responses => 'Kutichiykuna';

  @override
  String get avgTime => 'Chawpi Pacha';

  @override
  String get yourCapabilities => 'Atiyniykikuna';

  @override
  String get edit => 'Allichay';

  @override
  String get communityNetwork => 'Ayllu Llika';

  @override
  String get nearbyResponders => 'Qaylla Kutichiq';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count wakichisqa';
  }

  @override
  String get coverageRadius => 'Qhapaq Radio';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance milla';
  }

  @override
  String get activeAlerts => 'Llamk\'aq Alertakuna';

  @override
  String get none => 'Mana ima';

  @override
  String get yourLocation => 'Maypiykasqayki';

  @override
  String get whatDoYouNeedHelpWith => 'Imataq yanapakuyta necesitanki?';

  @override
  String get additionalDetailsOptional => 'Yapana Riqsichikuy (munasqalla)';

  @override
  String get describeSituation => 'Imaynatam kasqanta willay...';

  @override
  String get alertTrustedRespondersFirst =>
      'Ñawpaqta confiasqa kutichiqniykunata alertar';

  @override
  String get trustedRespondersDescription =>
      'Aklasqayki amigokuna/ayllu ñawpaqta willasqa kanqaku sapan ayllu kachkaspa';

  @override
  String sendingAlert(String emergencyType) {
    return 'Alertata kachashani: $emergencyType';
  }

  @override
  String get sendAlertNow => 'KUNAN ALERTATA KACHAY';

  @override
  String get pleaseSelectEmergencyType =>
      'Ama hina kaspa, emergencia layata akllakuy';

  @override
  String get categoryLifeThreatening => '🔴 Kawsaypa Pisiyachiq';

  @override
  String get categorySecuritySafety => '🟠 Waqaychay/Takyay';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Utqay Pacha Sentitivo';

  @override
  String get categoryNonLifeThreatening => '🟢 Mana Kawsaypa Pisiyachiq';

  @override
  String get emergencyCprCardiacName => 'CPR / Sonqo Sayay';

  @override
  String get emergencyCprCardiacDesc =>
      'Runakaq mana kutichiqchu hinaspa mana samaqchuña';

  @override
  String get emergencyAedName => 'AED Apamuy';

  @override
  String get emergencyAedDesc => 'AED utqayllaña necesitakuni';

  @override
  String get emergencyOverdoseName => 'Overdosis / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Jampi unuy yuyasqa, naloxone necesitakuni';

  @override
  String get emergencyChokingName => 'T\'uquy / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Runakaq t\'uqushaqmi hinaspa mana atinchu samaqta';

  @override
  String get emergencyFireName => 'Nina / Lluqsichiy';

  @override
  String get emergencyFireDesc =>
      'Nina emergencia, lluqsichiy yanapakuy necesitakuni';

  @override
  String get emergencyConsentName => 'Puñuy Wasi Suyay Emergencia';

  @override
  String get emergencyConsentDesc => 'Waqayrimana rimana, qhawaq necesitakuni';

  @override
  String get emergencyBystanderName => 'Llamk\'aq Qhawaq Rikuq';

  @override
  String get emergencyBystanderDesc =>
      'Makinakuyta pisiyachinaypaq kayay necesitakuni';

  @override
  String get emergencyMissingPetName => 'Chinkasqa Uywa';

  @override
  String get emergencyMissingPetDesc =>
      'Uyway chinkasqam utaq ayqerusqam, maskay ayllu necesitakuni';

  @override
  String get emergencyWellnessCheckName => 'Qhali Kay Qhaway';

  @override
  String get emergencyWellnessCheckDesc =>
      'Pipas yanapakuy necesitanman chayta qhaway';

  @override
  String get emergencyQuitCompanionName => 'Saqey Yanapaykuq';

  @override
  String get emergencyQuitCompanionDesc =>
      'Munaywan makinakushani, yanapakuy necesitakuni';

  @override
  String get emergencyCompanionshipName => 'Yanay Kay';

  @override
  String get emergencyCompanionshipDesc => 'Saqrasqa utaq karu sientekuni';

  @override
  String get emergency911CoordinationName => '911 Coordinacion';

  @override
  String get emergency911CoordinationDesc =>
      '911 waqaypi hinaspa coordinaypi yanapakuy necesitakuni';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Atiyniykuna';

  @override
  String capabilitiesSelected(int count) {
    return '$count aklasqa';
  }

  @override
  String get alertSchedule => 'Alerta Pachakuy';

  @override
  String get setAvailabilityHours => 'Wakichikuy pachakunayki churaykuy';

  @override
  String get trustedResponders => 'Confiasqa Kutichiqkuna';

  @override
  String get responseHistory => 'Kutichiy Historia';

  @override
  String get privacyAndSafety => 'Pakasqa hinaspa Takyay';

  @override
  String get helpAndSupport => 'Yanapay hinaspa Yanapakuy';

  @override
  String get aboutNayborSos => 'Naybor SOS-manta';

  @override
  String get termsAndPrivacyPolicy => 'Kamachikuy hinaspa Pakasqa Kamachiy';

  @override
  String get signOut => 'Lluqsiy';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS emergenciakunapi qayllakunata tinkin, utqay kutichiqkunaq llikanta ruraspa profesional ñawpaq kutichiq jamunankama yanapakuy qunku.';

  @override
  String get aboutDialogContent2 =>
      'Tukuymi heroe kayta atinku. Mana especialista yachay necesitankichu kawsayta qhispichiykunapaq. Wakinpi aswan kallpasapa yanapakuyqa chayayllam.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Sapan Allin Kay Compañia';

  @override
  String get close => 'Wichqay';

  @override
  String get signOutQuestion => 'Lluqsiyta munanki?';

  @override
  String get signOutConfirm => 'Chiqaqtachu lluqsiyta munanki?';

  @override
  String get cancel => 'Saykuy';

  @override
  String get signedOutSuccessfully => 'Allinta lluqsishani';

  @override
  String get settings => 'Churanakuna';

  @override
  String get capabilityWellnessCheck => 'Qhali Kay Qhaway';

  @override
  String get capabilityQuitCompanion => 'Saqey Yanapaykuq';

  @override
  String get capabilityActiveBystander => 'Llamk\'aq Qhawaq';

  @override
  String get translationTier1Label => 'Hatun Confianza AI T\'ikray';

  @override
  String get translationTier2Label => 'Allin Confianza AI T\'ikray';

  @override
  String get translationTier3Label => 'Chawpi Confianza AI T\'ikray';

  @override
  String get translationTier4Label => 'Pisilla Confianza AI T\'ikray';

  @override
  String get translationTier1Notice =>
      'Kay t\'ikrayqa AI-wan rurasqa hatun confianzawan. Profesional qhaway recomendado ruray llamk\'aypaq.';

  @override
  String get translationTier2Notice =>
      'Kay t\'ikrayqa AI-wan rurasqa allin confianzawan. Profesional qhaway recomendado waqaychay-critico suyay hinaspa emergencia rimaykuna.';

  @override
  String get translationTier3Notice =>
      '⚠️ Kay t\'ikrayqa runa qhaway necesitan waqaychay-critico emergencia rimaykunapaq ruray kachkaspa.';

  @override
  String get translationTier4Notice =>
      '⚠️ Kayqa borrador t\'ikrayllam. Profesional t\'ikray necesario ruray kachkaspa.';

  @override
  String get selectLanguage => 'Rimay Akllakuy';

  @override
  String get searchLanguagesHint => 'Rimaykunata maskay';

  @override
  String translationQualityLabel(String quality) {
    return 'T\'ikray Kalidad: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'T\'ikraykunata aswan allinta ruyayta yanapay - sasachakuykunata willakuy utaq aswan allin t\'ikraykunawan yanapakuy!';
}
