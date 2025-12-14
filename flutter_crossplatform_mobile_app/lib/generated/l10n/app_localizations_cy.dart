// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemyn a Minutewragedd yr Oes Fodern';

  @override
  String get signUpToHelp => 'Cofrestrwch i helpu eich cymdogion';

  @override
  String get enterPhoneNumber => 'Rhowch eich rhif ffôn i ddechrau';

  @override
  String get phoneNumberLabel => 'Rhif Ffôn';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Anfon Côd Dilysu';

  @override
  String get enterVerificationCode => 'Rhowch y côd dilysu';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Anfonwyd côd i $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Côd Dilysu';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Dilysu a Pharhau';

  @override
  String get changePhoneNumber => 'Newid rhif ffôn';

  @override
  String get pleaseEnterPhoneNumber =>
      'Rhowch eich rhif ffôn os gwelwch yn dda';

  @override
  String get pleaseEnterVerificationCode =>
      'Rhowch y côd dilysu os gwelwch yn dda';

  @override
  String get createProfile => 'Creu Proffil';

  @override
  String get tellUsAboutYourself => 'Dywedwch wrthym amdanoch chi eich hun';

  @override
  String get profileSetupDescription =>
      'Mae\'r wybodaeth hon yn ein helpu i\'ch cysylltu â chymdogion sydd angen help';

  @override
  String get addPhotoOptional => 'Ychwanegu llun (dewisol)';

  @override
  String get fullNameLabel => 'Enw Llawn *';

  @override
  String get fullNameHint => 'Siôn Jones';

  @override
  String get homeAddressLabel => 'Cyfeiriad Cartref *';

  @override
  String get homeAddressHint => '123 Stryd Fawr, Fflat 4B';

  @override
  String get homeAddressHelper => 'Defnyddir ar gyfer paru agosrwydd yn unig';

  @override
  String get ageOptionalLabel => 'Oed (dewisol)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Gall pobl 70+ osod oriau rhybudd tyner';

  @override
  String get yourPrivacyMatters => 'Mae eich preifatrwydd yn bwysig';

  @override
  String get privacyNotice =>
      'Dim ond yn ystod argyfyngau gweithredol y holir eich lleoliad ac nid yw\'n cael ei storio\'n hirdymor.';

  @override
  String get continueButton => 'Parhau';

  @override
  String get pleaseFillRequiredFields =>
      'Llenwch yr holl feysydd gofynnol os gwelwch yn dda';

  @override
  String get home => 'Cartref';

  @override
  String get alerts => 'Rhybuddion';

  @override
  String get profile => 'Proffil';

  @override
  String get availableToRespond => 'Ar Gael i Ymateb';

  @override
  String get notAvailable => 'Ddim ar Gael';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Byddwch yn derbyn rhybuddion brys gerllaw';

  @override
  String get toggleOnWhenReady => 'Trowch ymlaen pan yn barod i helpu';

  @override
  String get youreNowAvailable => 'Rydych chi nawr ar gael i ymateb';

  @override
  String get youWontReceiveAlerts => 'Ni fyddwch yn derbyn rhybuddion';

  @override
  String get lifeThreatening247Info =>
      'Bydd rhybuddion sy\'n bygwth bywyd yn eich hysbysu 24/7. Mae rhybuddion anfyrbwyll yn parchu eich amserlen.';

  @override
  String get requestHelp => 'GOFYN AM HELP';

  @override
  String get yourImpact => 'Eich Effaith';

  @override
  String get responses => 'Ymatebion';

  @override
  String get avgTime => 'Amser Cyfartalog';

  @override
  String get yourCapabilities => 'Eich Galluoedd';

  @override
  String get edit => 'Golygu';

  @override
  String get communityNetwork => 'Rhwydwaith Cymunedol';

  @override
  String get nearbyResponders => 'Ymatebwyr Cyfagos';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count ar gael';
  }

  @override
  String get coverageRadius => 'Radiws Cwmpas';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance milltir';
  }

  @override
  String get activeAlerts => 'Rhybuddion Gweithredol';

  @override
  String get none => 'Dim';

  @override
  String get yourLocation => 'Eich Lleoliad';

  @override
  String get whatDoYouNeedHelpWith => 'Gyda beth mae angen help arnoch?';

  @override
  String get additionalDetailsOptional => 'Manylion Ychwanegol (dewisol)';

  @override
  String get describeSituation => 'Disgrifiwch y sefyllfa...';

  @override
  String get alertTrustedRespondersFirst =>
      'Rhybuddio fy ymatebwyr dibynadwy gyntaf';

  @override
  String get trustedRespondersDescription =>
      'Caiff eich ffrindiau/teulu a ddewiswyd eu hysbysu cyn y gymuned gyffredinol';

  @override
  String sendingAlert(String emergencyType) {
    return 'Anfon rhybudd: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ANFON RHYBUDD NAWR';

  @override
  String get pleaseSelectEmergencyType =>
      'Dewiswch fath o argyfwng os gwelwch yn dda';

  @override
  String get categoryLifeThreatening => '🔴 Yn Bygwth Bywyd';

  @override
  String get categorySecuritySafety => '🟠 Diogelwch';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Brys Amser-Sensitif';

  @override
  String get categoryNonLifeThreatening => '🟢 Ddim yn Bygwth Bywyd';

  @override
  String get emergencyCprCardiacName => 'CPR / Atal y Galon';

  @override
  String get emergencyCprCardiacDesc =>
      'Mae person yn anymwybodol ac ddim yn anadlu';

  @override
  String get emergencyAedName => 'Dosbarthu AED';

  @override
  String get emergencyAedDesc => 'Angen AED ar unwaith';

  @override
  String get emergencyOverdoseName => 'Gordos / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Gordos cyffuriau tybiedig, angen naloxone';

  @override
  String get emergencyChokingName => 'Tagu / Heimlich';

  @override
  String get emergencyChokingDesc => 'Mae person yn tagu ac yn methu anadlu';

  @override
  String get emergencyFireName => 'Tân / Gwacáu';

  @override
  String get emergencyFireDesc => 'Argyfwng tân, angen help gwacáu';

  @override
  String get emergencyConsentName => 'Argyfwng Cydsyniad Ystafell Wely';

  @override
  String get emergencyConsentDesc => 'Galwyd gair diogel, angen tyst';

  @override
  String get emergencyBystanderName => 'Tyst Gweithredol';

  @override
  String get emergencyBystanderDesc =>
      'Angen presenoldeb i ddad-ddrwgdybio gwrthdaro';

  @override
  String get emergencyMissingPetName => 'Anifail Anwes ar Goll';

  @override
  String get emergencyMissingPetDesc =>
      'Mae anifail anwes ar goll neu wedi rhedeg i ffwrdd, angen parti chwilio';

  @override
  String get emergencyWellnessCheckName => 'Gwiriad Lles';

  @override
  String get emergencyWellnessCheckDesc =>
      'Gwirio ar rywun a allai fod angen help';

  @override
  String get emergencyQuitCompanionName => 'Cymar Rhoi\'r Gorau';

  @override
  String get emergencyQuitCompanionDesc =>
      'Yn brwydro yn erbyn chwant, angen cefnogaeth';

  @override
  String get emergencyCompanionshipName => 'Cwmniaeth';

  @override
  String get emergencyCompanionshipDesc => 'Teimlo\'n unig neu wedi\'ch ynysu';

  @override
  String get emergency911CoordinationName => 'Cydlynu 999';

  @override
  String get emergency911CoordinationDesc =>
      'Angen help i ffonio a chydlynu gyda\'r gwasanaethau brys';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Fy Ngalluoedd';

  @override
  String capabilitiesSelected(int count) {
    return '$count wedi\'u dewis';
  }

  @override
  String get alertSchedule => 'Amserlen Rhybuddion';

  @override
  String get setAvailabilityHours => 'Gosodwch eich oriau argaeledd';

  @override
  String get trustedResponders => 'Ymatebwyr Dibynadwy';

  @override
  String get responseHistory => 'Hanes Ymateb';

  @override
  String get privacyAndSafety => 'Preifatrwydd a Diogelwch';

  @override
  String get helpAndSupport => 'Help a Chymorth';

  @override
  String get aboutNayborSos => 'Am Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Telerau a Pholisi Preifatrwydd';

  @override
  String get signOut => 'Allgofnodi';

  @override
  String version(String version) {
    return 'Fersiwn $version';
  }

  @override
  String get aboutDialogContent =>
      'Mae Naybor SOS yn cysylltu cymdogion mewn argyfyngau, gan greu rhwydwaith o ymatebwyr cyflym a all ddarparu cymorth hanfodol cyn i ymatebwyr cymorth cyntaf proffesiynol gyrraedd.';

  @override
  String get aboutDialogContent2 =>
      'Gall pawb fod yn arwr. Does dim angen hyfforddiant arbennig i achub bywyd. Weithiau\'r ymyrraeth fwyaf pwerus yw syml troi i fyny.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Cau';

  @override
  String get signOutQuestion => 'Allgofnodi?';

  @override
  String get signOutConfirm => 'Ydych chi\'n siŵr eich bod am allgofnodi?';

  @override
  String get cancel => 'Canslo';

  @override
  String get signedOutSuccessfully => 'Allgofnodwyd yn llwyddiannus';

  @override
  String get settings => 'Gosodiadau';

  @override
  String get capabilityWellnessCheck => 'Gwiriad Lles';

  @override
  String get capabilityQuitCompanion => 'Cymar Rhoi\'r Gorau';

  @override
  String get capabilityActiveBystander => 'Gwyliwr Gweithredol';

  @override
  String get translationTier1Label => 'Cyfieithiad AI Hyder Uchel';

  @override
  String get translationTier2Label => 'Cyfieithiad AI Hyder Da';

  @override
  String get translationTier3Label => 'Cyfieithiad AI Hyder Canolig';

  @override
  String get translationTier4Label => 'Cyfieithiad AI Hyder Isel';

  @override
  String get translationTier1Notice =>
      'Cynhyrchwyd y cyfieithiad hwn gan AI gyda hyder uchel. Argymhellir adolygiad proffesiynol ar gyfer defnydd cynhyrchu.';

  @override
  String get translationTier2Notice =>
      'Cynhyrchwyd y cyfieithiad hwn gan AI gyda hyder da. Argymhellir adolygiad proffesiynol ar gyfer terminoleg cydsyniad a brys sy\'n hanfodol i ddiogelwch.';

  @override
  String get translationTier3Notice =>
      '⚠️ Mae\'r cyfieithiad hwn yn gofyn am adolygiad dynol ar gyfer ymadroddion brys sy\'n hanfodol i ddiogelwch cyn defnydd cynhyrchu.';

  @override
  String get translationTier4Notice =>
      '⚠️ Drafft cyfieithiad yn unig yw hwn. Mae angen cyfieithiad proffesiynol cyn defnydd cynhyrchu.';

  @override
  String get selectLanguage => 'Dewis Iaith';

  @override
  String get searchLanguagesHint => 'Chwilio ieithoedd';

  @override
  String translationQualityLabel(String quality) {
    return 'Ansawdd Cyfieithiad: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Helpwch wella cyfieithiadau - rhowch wybod am broblemau neu gyfranwch gyfieithiadau gwell!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
