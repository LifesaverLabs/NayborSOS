// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'سربازان دقیقه‌ای مدرن';

  @override
  String get signUpToHelp => 'ثبت‌نام کنید تا به همسایگان خود کمک کنید';

  @override
  String get enterPhoneNumber => 'شماره تلفن خود را وارد کنید تا شروع کنیم';

  @override
  String get phoneNumberLabel => 'شماره تلفن';

  @override
  String get phoneNumberHint => '09123456789';

  @override
  String get sendVerificationCode => 'ارسال کد تأیید';

  @override
  String get enterVerificationCode => 'کد تأیید را وارد کنید';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'کدی به $phoneNumber ارسال کردیم';
  }

  @override
  String get verificationCodeLabel => 'کد تأیید';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'تأیید و ادامه';

  @override
  String get changePhoneNumber => 'تغییر شماره تلفن';

  @override
  String get pleaseEnterPhoneNumber => 'لطفاً شماره تلفن خود را وارد کنید';

  @override
  String get pleaseEnterVerificationCode => 'لطفاً کد تأیید را وارد کنید';

  @override
  String get createProfile => 'ایجاد پروفایل';

  @override
  String get tellUsAboutYourself => 'درباره خودتان بگویید';

  @override
  String get profileSetupDescription =>
      'این اطلاعات به ما کمک می‌کند شما را با همسایگانی که نیاز به کمک دارند، مرتبط کنیم';

  @override
  String get addPhotoOptional => 'افزودن عکس (اختیاری)';

  @override
  String get fullNameLabel => 'نام کامل *';

  @override
  String get fullNameHint => 'علی احمدی';

  @override
  String get homeAddressLabel => 'آدرس منزل *';

  @override
  String get homeAddressHint => 'تهران، خیابان ولیعصر، پلاک ۱۲۳';

  @override
  String get homeAddressHelper => 'فقط برای تطبیق مسافت استفاده می‌شود';

  @override
  String get ageOptionalLabel => 'سن (اختیاری)';

  @override
  String get ageHint => '۲۵';

  @override
  String get ageHelper =>
      'افراد بالای ۷۰ سال می‌توانند ساعات هشدار آرام تنظیم کنند';

  @override
  String get yourPrivacyMatters => 'حریم خصوصی شما مهم است';

  @override
  String get privacyNotice =>
      'موقعیت شما فقط در طول اورژانس‌های فعال پرس و جو می‌شود و هرگز طولانی‌مدت ذخیره نمی‌شود.';

  @override
  String get continueButton => 'ادامه';

  @override
  String get pleaseFillRequiredFields => 'لطفاً تمام فیلدهای اجباری را پر کنید';

  @override
  String get home => 'خانه';

  @override
  String get alerts => 'هشدارها';

  @override
  String get profile => 'پروفایل';

  @override
  String get availableToRespond => 'آماده پاسخ‌دهی';

  @override
  String get notAvailable => 'در دسترس نیست';

  @override
  String get youllReceiveEmergencyAlerts =>
      'هشدارهای اورژانس اطراف را دریافت خواهید کرد';

  @override
  String get toggleOnWhenReady => 'وقتی آماده کمک هستید روشن کنید';

  @override
  String get youreNowAvailable => 'اکنون آماده پاسخ‌دهی هستید';

  @override
  String get youWontReceiveAlerts => 'هشدارها را دریافت نخواهید کرد';

  @override
  String get lifeThreatening247Info =>
      'هشدارهای تهدیدکننده حیات ۲۴/۷ شما را آگاه می‌کنند. هشدارهای غیراضطراری برنامه شما را رعایت می‌کنند.';

  @override
  String get requestHelp => 'درخواست کمک';

  @override
  String get yourImpact => 'تأثیر شما';

  @override
  String get responses => 'پاسخ‌ها';

  @override
  String get avgTime => 'میانگین زمان';

  @override
  String get yourCapabilities => 'قابلیت‌های شما';

  @override
  String get edit => 'ویرایش';

  @override
  String get communityNetwork => 'شبکه اجتماعی';

  @override
  String get nearbyResponders => 'پاسخ‌دهندگان اطراف';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count در دسترس';
  }

  @override
  String get coverageRadius => 'شعاع پوشش';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance کیلومتر';
  }

  @override
  String get activeAlerts => 'هشدارهای فعال';

  @override
  String get none => 'هیچ';

  @override
  String get yourLocation => 'موقعیت شما';

  @override
  String get whatDoYouNeedHelpWith => 'به چه کمکی نیاز دارید؟';

  @override
  String get additionalDetailsOptional => 'جزئیات اضافی (اختیاری)';

  @override
  String get describeSituation => 'وضعیت را شرح دهید...';

  @override
  String get alertTrustedRespondersFirst =>
      'ابتدا پاسخ‌دهندگان مورد اعتماد من را آگاه کن';

  @override
  String get trustedRespondersDescription =>
      'دوستان/خانواده انتخابی شما قبل از اجتماع عمومی آگاه خواهند شد';

  @override
  String sendingAlert(String emergencyType) {
    return 'ارسال هشدار: $emergencyType';
  }

  @override
  String get sendAlertNow => 'هم‌اکنون هشدار بفرست';

  @override
  String get pleaseSelectEmergencyType => 'لطفاً نوع اورژانس را انتخاب کنید';

  @override
  String get categoryLifeThreatening => '🔴 تهدیدکننده حیات';

  @override
  String get categorySecuritySafety => '🟠 امنیت/ایمنی';

  @override
  String get categoryUrgentTimeSensitive => '🟡 فوری و زمان‌بر';

  @override
  String get categoryNonLifeThreatening => '🟢 غیرتهدیدکننده حیات';

  @override
  String get emergencyCprCardiacName => 'احیای قلبی ریوی / ایست قلبی';

  @override
  String get emergencyCprCardiacDesc => 'فرد بی‌هوش است و نفس نمی‌کشد';

  @override
  String get emergencyAedName => 'تحویل دستگاه AED';

  @override
  String get emergencyAedDesc => 'فوراً به دستگاه AED نیاز دارم';

  @override
  String get emergencyOverdoseName => 'مسمومیت دارویی / نالوکسان';

  @override
  String get emergencyOverdoseDesc =>
      'مشکوک به مسمومیت دارویی، نیاز به نالوکسان';

  @override
  String get emergencyChokingName => 'خفگی / مانور هایملیش';

  @override
  String get emergencyChokingDesc => 'فرد خفه شده و نمی‌تواند نفس بکشد';

  @override
  String get emergencyFireName => 'آتش‌سوزی / تخلیه';

  @override
  String get emergencyFireDesc => 'اورژانس آتش‌سوزی، نیاز به کمک تخلیه';

  @override
  String get emergencyConsentName => 'اورژانس رضایت خصوصی';

  @override
  String get emergencyConsentDesc => 'کلمه امان گفته شده، نیاز به شاهد';

  @override
  String get emergencyBystanderName => 'شاهد فعال ناظر';

  @override
  String get emergencyBystanderDesc => 'نیاز به حضور برای کاهش تنش درگیری';

  @override
  String get emergencyMissingPetName => 'حیوان خانگی گمشده';

  @override
  String get emergencyMissingPetDesc =>
      'حیوان خانگی گم شده، نیاز به تیم جست‌وجو';

  @override
  String get emergencyWellnessCheckName => 'بررسی سلامت';

  @override
  String get emergencyWellnessCheckDesc =>
      'بررسی وضعیت کسی که ممکن است نیاز به کمک داشته باشد';

  @override
  String get emergencyQuitCompanionName => 'همراه ترک عادت';

  @override
  String get emergencyQuitCompanionDesc =>
      'با ولع مبارزه می‌کنم، نیاز به حمایت';

  @override
  String get emergencyCompanionshipName => 'همراهی';

  @override
  String get emergencyCompanionshipDesc => 'احساس تنهایی یا انزوا می‌کنم';

  @override
  String get emergency911CoordinationName => 'هماهنگی خدمات اورژانس';

  @override
  String get emergency911CoordinationDesc =>
      'نیاز به کمک برای تماس و هماهنگی با خدمات اورژانس';

  @override
  String get equipmentAed => 'دستگاه AED';

  @override
  String get equipmentNaloxone => 'نالوکسان/نارکان';

  @override
  String get myCapabilities => 'قابلیت‌های من';

  @override
  String capabilitiesSelected(int count) {
    return '$count انتخاب شده';
  }

  @override
  String get alertSchedule => 'برنامه هشدار';

  @override
  String get setAvailabilityHours => 'ساعات در دسترس بودن خود را تنظیم کنید';

  @override
  String get trustedResponders => 'پاسخ‌دهندگان مورد اعتماد';

  @override
  String get responseHistory => 'تاریخچه پاسخ‌ها';

  @override
  String get privacyAndSafety => 'حریم خصوصی و ایمنی';

  @override
  String get helpAndSupport => 'کمک و پشتیبانی';

  @override
  String get aboutNayborSos => 'درباره Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'شرایط استفاده و حریم خصوصی';

  @override
  String get signOut => 'خروج';

  @override
  String version(String version) {
    return 'نسخه $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS همسایگان را در اورژانس متصل می‌کند و شبکه‌ای از پاسخ‌دهندگان سریع ایجاد می‌کند که می‌توانند قبل از رسیدن امدادگران حرفه‌ای، کمک‌های حیاتی ارائه دهند.';

  @override
  String get aboutDialogContent2 =>
      'همه می‌توانند قهرمان باشند. برای نجات جان به آموزش ویژه نیاز ندارید. گاهی قدرتمندترین مداخله صرفاً حضور یافتن است.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs شرکت منفعت عمومی';

  @override
  String get close => 'بستن';

  @override
  String get signOutQuestion => 'خروج؟';

  @override
  String get signOutConfirm => 'آیا مطمئن هستید که می‌خواهید خارج شوید؟';

  @override
  String get cancel => 'لغو';

  @override
  String get signedOutSuccessfully => 'با موفقیت خارج شدید';

  @override
  String get settings => 'تنظیمات';

  @override
  String get capabilityWellnessCheck => 'بررسی سلامت';

  @override
  String get capabilityQuitCompanion => 'همراه ترک عادت';

  @override
  String get capabilityActiveBystander => 'ناظر فعال';

  @override
  String get translationTier1Label => 'ترجمه هوش مصنوعی با اعتماد بالا';

  @override
  String get translationTier2Label => 'ترجمه هوش مصنوعی با اعتماد خوب';

  @override
  String get translationTier3Label => 'ترجمه هوش مصنوعی با اعتماد متوسط';

  @override
  String get translationTier4Label => 'ترجمه هوش مصنوعی با اعتماد پایین';

  @override
  String get translationTier1Notice =>
      'این ترجمه توسط هوش مصنوعی با اعتماد بالا تولید شده. بررسی حرفه‌ای برای استفاده تولیدی توصیه می‌شود.';

  @override
  String get translationTier2Notice =>
      'این ترجمه توسط هوش مصنوعی با اعتماد خوب تولید شده. بررسی حرفه‌ای برای اصطلاحات حیاتی رضایت و اورژانس توصیه می‌شود.';

  @override
  String get translationTier3Notice =>
      '⚠️ این ترجمه نیاز به بررسی انسانی برای عبارات اورژانس حیاتی قبل از استفاده تولیدی دارد.';

  @override
  String get translationTier4Notice =>
      '⚠️ این فقط پیش‌نویس ترجمه است. ترجمه حرفه‌ای قبل از استفاده تولیدی لازم است.';

  @override
  String get selectLanguage => 'انتخاب زبان';

  @override
  String get searchLanguagesHint => 'جست‌وجوی زبان‌ها';

  @override
  String translationQualityLabel(String quality) {
    return 'کیفیت ترجمه: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'به بهبود ترجمه‌ها کمک کنید - مشکلات را گزارش دهید یا ترجمه‌های بهتری ارائه دهید!';
}
