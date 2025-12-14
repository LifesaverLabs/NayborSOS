// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Çavdêrên Nûjen - Mêr û Jin';

  @override
  String get signUpToHelp => 'Tomar bike ji bo alîkariya cîranên xwe';

  @override
  String get enterPhoneNumber =>
      'Hejmara telefona xwe binivîse da dest pê bikî';

  @override
  String get phoneNumberLabel => 'Hejmara Telefonê';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Koda Piştrastkirinê Bişîne';

  @override
  String get enterVerificationCode => 'Koda piştrastkirinê binivîse';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Me kodek şand bo $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Koda Piştrastkirinê';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Piştast bike û Bidomîne';

  @override
  String get changePhoneNumber => 'Hejmara telefonê biguhere';

  @override
  String get pleaseEnterPhoneNumber =>
      'Ji kerema xwe hejmara telefona xwe binivîse';

  @override
  String get pleaseEnterVerificationCode =>
      'Ji kerema xwe koda piştrastkirinê binivîse';

  @override
  String get createProfile => 'Profîl Biafirîne';

  @override
  String get tellUsAboutYourself => 'Derbarê xwe de ji me re bibêje';

  @override
  String get profileSetupDescription =>
      'Ev zanyarî ji me re dibe alîkar ku te bi cîranên ku alîkariyê hewce ne re girê bide';

  @override
  String get addPhotoOptional => 'Wêne zêde bike (vebijarkî)';

  @override
  String get fullNameLabel => 'Navê Tevahî *';

  @override
  String get fullNameHint => 'Jiwan Silêman';

  @override
  String get homeAddressLabel => 'Navnîşana Malê *';

  @override
  String get homeAddressHint => 'Kolana Serekî 123, Apartman 4B';

  @override
  String get homeAddressHelper => 'Tenê ji bo nêzîkatiya cih tê bikaranîn';

  @override
  String get ageOptionalLabel => 'Temen (vebijarkî)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Temên 70+ dikarin demjimêrên hêdî saz bikin';

  @override
  String get yourPrivacyMatters => 'Nehêniya te girîng e';

  @override
  String get privacyNotice =>
      'Cihê te tenê di demên emerjansiyan de tê pirsîn û hergîz ji bo demek dirêj nayê hilanîn.';

  @override
  String get continueButton => 'Bidomîne';

  @override
  String get pleaseFillRequiredFields =>
      'Ji kerema xwe hemû qadan ku hewce ne dagire';

  @override
  String get home => 'Mal';

  @override
  String get alerts => 'Hişyarî';

  @override
  String get profile => 'Profîl';

  @override
  String get availableToRespond => 'Amade ye ji bo Bersivdanê';

  @override
  String get notAvailable => 'Amade Nîne';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Hûn ê hişyariyên emerjansiyan ên nêzî bistînin';

  @override
  String get toggleOnWhenReady => 'Gava amade bî ji bo alîkariyê veke';

  @override
  String get youreNowAvailable => 'Niha amade yî ji bo bersivdanê';

  @override
  String get youWontReceiveAlerts => 'Hûn ê hişyariyan nebînin';

  @override
  String get lifeThreatening247Info =>
      'Hişyariyên jiyanî-xeternak ê 24/7 agahdar bikin we. Hişyariyên ne-acil rêza wextê we dikin.';

  @override
  String get requestHelp => 'ALÎKARÎ BIPIRSE';

  @override
  String get yourImpact => 'Bandora Te';

  @override
  String get responses => 'Bersiv';

  @override
  String get avgTime => 'Demê Navîn';

  @override
  String get yourCapabilities => 'Jêhatiyên Te';

  @override
  String get edit => 'Serrast bike';

  @override
  String get communityNetwork => 'Tora Civakî';

  @override
  String get nearbyResponders => 'Bersivderên Nêzî';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count amade';
  }

  @override
  String get coverageRadius => 'Dûrbûna Daçûnê';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mîl';
  }

  @override
  String get activeAlerts => 'Hişyariyên Çalak';

  @override
  String get none => 'Tune';

  @override
  String get yourLocation => 'Cihê Te';

  @override
  String get whatDoYouNeedHelpWith => 'Ji bo çi hewcedarî alîkariyê ye?';

  @override
  String get additionalDetailsOptional => 'Hûrguliyên Zêde (vebijarkî)';

  @override
  String get describeSituation => 'Rewşê rave bike...';

  @override
  String get alertTrustedRespondersFirst =>
      'Ewil bersivderên min ên pêbawer agahdar bike';

  @override
  String get trustedRespondersDescription =>
      'Heval/malbata te ya hilbijartî beriya civakê dê bête agahdarkirin';

  @override
  String sendingAlert(String emergencyType) {
    return 'Hişyarî tê şandin: $emergencyType';
  }

  @override
  String get sendAlertNow => 'NIHA HIŞYARÎ BIŞÎNE';

  @override
  String get pleaseSelectEmergencyType =>
      'Ji kerema xwe cureyê emerjansiyan hilbijêre';

  @override
  String get categoryLifeThreatening => '🔴 Jiyanî-Xeternak';

  @override
  String get categorySecuritySafety => '🟠 Ewlekarî/Aramî';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Acil Wextgir';

  @override
  String get categoryNonLifeThreatening => '🟢 Ne-Jiyanî-Xeternak';

  @override
  String get emergencyCprCardiacName => 'CPR / Rawestana Dil';

  @override
  String get emergencyCprCardiacDesc => 'Kes bersiv nade û nefes nake';

  @override
  String get emergencyAedName => 'Radestkirina AED';

  @override
  String get emergencyAedDesc => 'Tavilê AED-ê hewce ye';

  @override
  String get emergencyOverdoseName => 'Zêdedoz / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Zêdedoza dermanan ya gumangîn, naloxone hewce ye';

  @override
  String get emergencyChokingName => 'Xençik / Heimlich';

  @override
  String get emergencyChokingDesc => 'Kes xençî dibe û nikare nefes bike';

  @override
  String get emergencyFireName => 'Agir / Vala kirin';

  @override
  String get emergencyFireDesc =>
      'Emerjansia agirê, ji bo valakirinê alîkarî hewce ye';

  @override
  String get emergencyConsentName => 'Emerjansia Razîbûna Odeyê';

  @override
  String get emergencyConsentDesc => 'Peyva ewlehiyê hat gotin, şahid hewce ye';

  @override
  String get emergencyBystanderName => 'Şahidê Çalak';

  @override
  String get emergencyBystanderDesc =>
      'Ji bo kêmkirina nakokiyan hebûn hewce ye';

  @override
  String get emergencyMissingPetName => 'Heywanê Winda';

  @override
  String get emergencyMissingPetDesc =>
      'Heywanê mala winda ye an reviyaye, koma lêgerînê hewce ye';

  @override
  String get emergencyWellnessCheckName => 'Kontrola Tendurustiyê';

  @override
  String get emergencyWellnessCheckDesc =>
      'Li kesekî binêre ku dibe ku alîkariyê hewce be';

  @override
  String get emergencyQuitCompanionName => 'Hevala Berdan';

  @override
  String get emergencyQuitCompanionDesc =>
      'Li dijî vîsê şer dike, piştgirî hewce ye';

  @override
  String get emergencyCompanionshipName => 'Hevaltî';

  @override
  String get emergencyCompanionshipDesc => 'Bi tenêtî an veqetandî hîs dike';

  @override
  String get emergency911CoordinationName => 'Hevahengiya 911';

  @override
  String get emergency911CoordinationDesc =>
      'Ji bo gazîkirin û hevahengiya 911-ê alîkarî hewce ye';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Jêhatiyên Min';

  @override
  String capabilitiesSelected(int count) {
    return '$count hatine hilbijartin';
  }

  @override
  String get alertSchedule => 'Pêşbircê Hişyariyan';

  @override
  String get setAvailabilityHours => 'Demjimêrên hebûna xwe saz bike';

  @override
  String get trustedResponders => 'Bersivderên Pêbawer';

  @override
  String get responseHistory => 'Dîroka Bersivan';

  @override
  String get privacyAndSafety => 'Nehênî û Ewlehî';

  @override
  String get helpAndSupport => 'Alîkarî û Piştgirî';

  @override
  String get aboutNayborSos => 'Derbarê Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Mercên û Polîtîkaya Nehêniyê';

  @override
  String get signOut => 'Derkeve';

  @override
  String version(String version) {
    return 'Guherto $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS cîranan di emerjansiyan de girê dide hev, toreke bersivderên bilez diafirîne ku dikarin berî bersivderên pîşeyî alîkariya pêwîst peyda bikin.';

  @override
  String get aboutDialogContent2 =>
      'Her kes dikare bibe qehreman. Tu hewcedarî rahînaneke taybetî ji bo xilas kirina jiyanek nînî. Carinan berxwedana herî bi hêz tenê xuya bûn e.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Bigire';

  @override
  String get signOutQuestion => 'Derkevî?';

  @override
  String get signOutConfirm => 'Tu piştrast î ku dixwazî derkevî?';

  @override
  String get cancel => 'Betal bike';

  @override
  String get signedOutSuccessfully => 'Bi serkeftinê derket';

  @override
  String get settings => 'Mîhengkirin';

  @override
  String get capabilityWellnessCheck => 'Kontrola Tendurustiyê';

  @override
  String get capabilityQuitCompanion => 'Hevala Berdan';

  @override
  String get capabilityActiveBystander => 'Şahidê Çalak';

  @override
  String get translationTier1Label => 'Wergera AI-ya Pêbaweriya Bilind';

  @override
  String get translationTier2Label => 'Wergera AI-ya Pêbaweriya Baş';

  @override
  String get translationTier3Label => 'Wergera AI-ya Pêbaweriya Navîn';

  @override
  String get translationTier4Label => 'Wergera AI-ya Pêbaweriya Kêm';

  @override
  String get translationTier1Notice =>
      'Ev werger bi pêbaweriya bilind ji hêla AI-yê ve hatiye çêkirin. Ji bo bikaranîna hilberînê nirxandina pîşeyî tê pêşniyaz kirin.';

  @override
  String get translationTier2Notice =>
      'Ev werger bi pêbaweriya baş ji hêla AI-yê ve hatiye çêkirin. Ji bo termên ewlehî-krîtîk ên razîbûn û emerjansiyan nirxandina pîşeyî tê pêşniyaz kirin.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ev werger ji bo gotinên emerjansiyan ên ewlehî-krîtîk berî bikaranîna hilberînê hewcedarî nirxandina mirov e.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ev tenê wergera reşnivîsê ye. Berî bikaranîna hilberînê wergera pîşeyî hewce ye.';

  @override
  String get selectLanguage => 'Ziman Hilbijêre';

  @override
  String get searchLanguagesHint => 'Li zimanan bigere';

  @override
  String translationQualityLabel(String quality) {
    return 'Kalîteya Wergerê: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ji bo baştirkirina wergêran alîkarî bike - pirsgirêkan ragihîne an wergerên çêtir beşdar bike!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
