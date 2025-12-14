// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'د نننیو ورځو منټمین او منټویمن';

  @override
  String get signUpToHelp => 'د خپلو ګاونډیانو سره د مرستې لپاره نوملیکنه وکړئ';

  @override
  String get enterPhoneNumber => 'د پیل لپاره خپل د تلیفون شمیره داخل کړئ';

  @override
  String get phoneNumberLabel => 'د تلیفون شمیره';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'د تصدیق کوډ واستوئ';

  @override
  String get enterVerificationCode => 'د تصدیق کوډ داخل کړئ';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'موږ $phoneNumber ته یو کوډ واستاوه';
  }

  @override
  String get verificationCodeLabel => 'د تصدیق کوډ';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'تصدیق او دوام ورکړئ';

  @override
  String get changePhoneNumber => 'د تلیفون شمیره بدل کړئ';

  @override
  String get pleaseEnterPhoneNumber =>
      'مهرباني وکړئ خپل د تلیفون شمیره داخل کړئ';

  @override
  String get pleaseEnterVerificationCode => 'مهرباني وکړئ د تصدیق کوډ داخل کړئ';

  @override
  String get createProfile => 'پروفایل جوړ کړئ';

  @override
  String get tellUsAboutYourself => 'موږ ته د خپل ځان په اړه ووایاست';

  @override
  String get profileSetupDescription =>
      'دا معلومات موږ سره مرسته کوي چې تاسو د هغو ګاونډیانو سره وتړو چې مرستې ته اړتیا لري';

  @override
  String get addPhotoOptional => 'انځور اضافه کړئ (اختیاري)';

  @override
  String get fullNameLabel => 'بشپړ نوم *';

  @override
  String get fullNameHint => 'احمد علي';

  @override
  String get homeAddressLabel => 'د کور پته *';

  @override
  String get homeAddressHint => 'د اصلي سرک ۱۲۳، شقه ۴ب';

  @override
  String get homeAddressHelper => 'یوازې د نږدېوالي پورې تړاو لپاره کارول کیږي';

  @override
  String get ageOptionalLabel => 'عمر (اختیاري)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'د ۷۰+ کلنۍ کولی شي د نرم خبرداری ساعتونه وټاکي';

  @override
  String get yourPrivacyMatters => 'ستاسو محرمیت مهم دی';

  @override
  String get privacyNotice =>
      'ستاسو ځای یوازې د فعالو بیړنیو حالاتو په وخت کې پوښتنه کیږي او هیڅکله اوږدمهاله زیرمه نشي.';

  @override
  String get continueButton => 'دوام ورکړئ';

  @override
  String get pleaseFillRequiredFields => 'مهرباني وکړئ ټول اړین ساحې ډک کړئ';

  @override
  String get home => 'کور';

  @override
  String get alerts => 'خبرداری';

  @override
  String get profile => 'پروفایل';

  @override
  String get availableToRespond => 'د ځواب ورکولو لپاره چمتو';

  @override
  String get notAvailable => 'شتون نلري';

  @override
  String get youllReceiveEmergencyAlerts =>
      'تاسو به د نږدې بیړني خبردارۍ ترلاسه کړئ';

  @override
  String get toggleOnWhenReady => 'کله چې د مرستې لپاره چمتو یاست تبدیل کړئ';

  @override
  String get youreNowAvailable => 'تاسو اوس د ځواب ورکولو لپاره چمتو یاست';

  @override
  String get youWontReceiveAlerts => 'تاسو به خبردارۍ و نه ګورئ';

  @override
  String get lifeThreatening247Info =>
      'د ژوند له خطر څخه ډک خبردارۍ به ۲۴/۷ تاسو ته اطلاع ورکړي. غیر بیړني خبردارۍ ستاسو د وخت احترام کوي.';

  @override
  String get requestHelp => 'د مرستې غوښتنه';

  @override
  String get yourImpact => 'ستاسو تاثیر';

  @override
  String get responses => 'ځوابونه';

  @override
  String get avgTime => 'اوسط وخت';

  @override
  String get yourCapabilities => 'ستاسو وړتیاوې';

  @override
  String get edit => 'تصحیح';

  @override
  String get communityNetwork => 'د ټولنې شبکه';

  @override
  String get nearbyResponders => 'نږدې ځواب ورکوونکي';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count شتون لري';
  }

  @override
  String get coverageRadius => 'د پوښښ ریډیوس';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance میله';
  }

  @override
  String get activeAlerts => 'فعال خبردارۍ';

  @override
  String get none => 'هیڅ';

  @override
  String get yourLocation => 'ستاسو ځای';

  @override
  String get whatDoYouNeedHelpWith => 'تاسو د څه لپاره مرستې ته اړتیا لرئ؟';

  @override
  String get additionalDetailsOptional => 'اضافي توضیحات (اختیاري)';

  @override
  String get describeSituation => 'د وضعیت تشریح وکړئ...';

  @override
  String get alertTrustedRespondersFirst =>
      'لومړی زما د باور وړ ځواب ورکوونکو ته خبرداری ورکړئ';

  @override
  String get trustedRespondersDescription =>
      'ستاسو غوره شوي ملګري/کورنۍ به د عمومي ټولنې دمخه خبر شي';

  @override
  String sendingAlert(String emergencyType) {
    return 'خبرداری لیږل: $emergencyType';
  }

  @override
  String get sendAlertNow => 'اوس خبرداری واستوئ';

  @override
  String get pleaseSelectEmergencyType => 'مهرباني وکړئ د بیړني حالت ډول وټاکئ';

  @override
  String get categoryLifeThreatening => '🔴 د ژوند له خطر څخه ډک';

  @override
  String get categorySecuritySafety => '🟠 امنیت/خوندیتوب';

  @override
  String get categoryUrgentTimeSensitive => '🟡 بیړني وخت حساس';

  @override
  String get categoryNonLifeThreatening => '🟢 د ژوند له خطر څخه بې خطره';

  @override
  String get emergencyCprCardiacName => 'د زړه بیا راژوندی کول / د زړه درېدل';

  @override
  String get emergencyCprCardiacDesc => 'سړی ځواب نه ورکوي او ساه نه اخلي';

  @override
  String get emergencyAedName => 'د AED تحویلي';

  @override
  String get emergencyAedDesc => 'سمدستي AED ته اړتیا لرم';

  @override
  String get emergencyOverdoseName => 'د زیاتو درملو / نالوکسون';

  @override
  String get emergencyOverdoseDesc => 'د زیاتو درملو شک، نالوکسون ته اړتیا';

  @override
  String get emergencyChokingName => 'ټک کول / هایملیک';

  @override
  String get emergencyChokingDesc => 'سړی ټک کوي او نشي ساه واخیستلی';

  @override
  String get emergencyFireName => 'اور / انتقال';

  @override
  String get emergencyFireDesc => 'د اور بیړني حالت، د انتقال مرستې ته اړتیا';

  @override
  String get emergencyConsentName => 'د خونې د رضایت بیړني حالت';

  @override
  String get emergencyConsentDesc => 'د خوندیتوب کلمه ویل شوې، شاهد ته اړتیا';

  @override
  String get emergencyBystanderName => 'فعال د لیدونکي شاهد';

  @override
  String get emergencyBystanderDesc => 'د شخړې د کمولو لپاره شتون ته اړتیا';

  @override
  String get emergencyMissingPetName => 'ورک حیوان';

  @override
  String get emergencyMissingPetDesc =>
      'حیوان ورک یا وتښتید، د پلټنې ډلې ته اړتیا';

  @override
  String get emergencyWellnessCheckName => 'د روغتیا کتنه';

  @override
  String get emergencyWellnessCheckDesc =>
      'د یو چا څانګه وکړئ چې ممکن مرستې ته اړتیا ولري';

  @override
  String get emergencyQuitCompanionName => 'د پریښودو ملګری';

  @override
  String get emergencyQuitCompanionDesc =>
      'د لیوالتیا سره جګړه، ملاتړ ته اړتیا';

  @override
  String get emergencyCompanionshipName => 'ملګرتیا';

  @override
  String get emergencyCompanionshipDesc => 'د یوازیتوب یا جلا کېدو احساس';

  @override
  String get emergency911CoordinationName => 'د ۹۱۱ همغږي';

  @override
  String get emergency911CoordinationDesc =>
      'د ۹۱۱ ټلیفون او همغږۍ کې مرستې ته اړتیا';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'نالوکسون/نارکان';

  @override
  String get myCapabilities => 'زما وړتیاوې';

  @override
  String capabilitiesSelected(int count) {
    return '$count غوره شوي';
  }

  @override
  String get alertSchedule => 'د خبرداری مهالویش';

  @override
  String get setAvailabilityHours => 'د خپل شتون ساعتونه وټاکئ';

  @override
  String get trustedResponders => 'د باور وړ ځواب ورکوونکي';

  @override
  String get responseHistory => 'د ځواب تاریخچه';

  @override
  String get privacyAndSafety => 'محرمیت او خوندیتوب';

  @override
  String get helpAndSupport => 'مرسته او ملاتړ';

  @override
  String get aboutNayborSos => 'د Naybor SOS په اړه';

  @override
  String get termsAndPrivacyPolicy => 'شرایط او د محرمیت پالیسي';

  @override
  String get signOut => 'وتل';

  @override
  String version(String version) {
    return 'نسخه $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS د بیړنیو حالاتو کې ګاونډیان وصلوي، د چټک ځواب ورکوونکو شبکه جوړوي کوم چې کولی شي د مسلکي لومړنیو ځواب ورکوونکو څخه دمخه اړین مرسته وړاندې کړي.';

  @override
  String get aboutDialogContent2 =>
      'هرڅوک کولی شي اتل وي. تاسو د ژوند د ژغورلو لپاره ځانګړي روزنې ته اړتیا نلرئ. ځینې وخت ترټولو قوي لاسوهنه یوازې ښکارېدل دي.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs د عامه ګټې شرکت';

  @override
  String get close => 'تړل';

  @override
  String get signOutQuestion => 'وتل؟';

  @override
  String get signOutConfirm => 'تاسو ډاډه یاست چې غواړئ ووځئ؟';

  @override
  String get cancel => 'لغوه';

  @override
  String get signedOutSuccessfully => 'په بریالیتوب سره وووت';

  @override
  String get settings => 'تنظیمات';

  @override
  String get capabilityWellnessCheck => 'د روغتیا کتنه';

  @override
  String get capabilityQuitCompanion => 'د پریښودو ملګری';

  @override
  String get capabilityActiveBystander => 'فعال لیدونکی';

  @override
  String get translationTier1Label => 'د لوړ باور د AI ژباړه';

  @override
  String get translationTier2Label => 'د ښه باور د AI ژباړه';

  @override
  String get translationTier3Label => 'د منځني باور د AI ژباړه';

  @override
  String get translationTier4Label => 'د ټیټ باور د AI ژباړه';

  @override
  String get translationTier1Notice =>
      'دا ژباړه د AI لخوا د لوړ باور سره جوړه شوې. د تولید کارونې لپاره مسلکي بیاکتنه وړاندیز کیږي.';

  @override
  String get translationTier2Notice =>
      'دا ژباړه د AI لخوا د ښه باور سره جوړه شوې. د خوندیتوب-اړین رضایت او بیړني اصطلاحاتو لپاره مسلکي بیاکتنه وړاندیز کیږي.';

  @override
  String get translationTier3Notice =>
      '⚠️ دا ژباړه د تولید کارونې دمخه د خوندیتوب-اړین بیړنیو جملو لپاره د انساني بیاکتنې ته اړتیا لري.';

  @override
  String get translationTier4Notice =>
      '⚠️ دا یوازې د مسودې ژباړه دی. د تولید کارونې دمخه مسلکي ژباړې ته اړتیا.';

  @override
  String get selectLanguage => 'ژبه وټاکئ';

  @override
  String get searchLanguagesHint => 'ژبې لټون';

  @override
  String translationQualityLabel(String quality) {
    return 'د ژباړې کیفیت: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'د ژباړو ښه کولو کې مرسته وکړئ - ستونزې راپور ورکړئ یا غوره ژباړې مرسته وکړئ!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
