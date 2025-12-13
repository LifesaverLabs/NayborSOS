// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'المقاتلون المعاصرون والمقاتلات المعاصرات';

  @override
  String get signUpToHelp => 'سجّل للمساعدة في جيرانك';

  @override
  String get enterPhoneNumber => 'أدخل رقم هاتفك للبدء';

  @override
  String get phoneNumberLabel => 'رقم الهاتف';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'إرسال رمز التحقق';

  @override
  String get enterVerificationCode => 'أدخل رمز التحقق';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'أرسلنا رمزاً إلى $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'رمز التحقق';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'تحقق ومتابعة';

  @override
  String get changePhoneNumber => 'تغيير رقم الهاتف';

  @override
  String get pleaseEnterPhoneNumber => 'يرجى إدخال رقم هاتفك';

  @override
  String get pleaseEnterVerificationCode => 'يرجى إدخال رمز التحقق';

  @override
  String get createProfile => 'إنشاء الملف الشخصي';

  @override
  String get tellUsAboutYourself => 'أخبرنا عن نفسك';

  @override
  String get profileSetupDescription =>
      'هذه المعلومات تساعدنا في ربطك بالجيران الذين يحتاجون المساعدة';

  @override
  String get addPhotoOptional => 'إضافة صورة (اختياري)';

  @override
  String get fullNameLabel => 'الاسم الكامل *';

  @override
  String get fullNameHint => 'أحمد محمد';

  @override
  String get homeAddressLabel => 'عنوان المنزل *';

  @override
  String get homeAddressHint => 'شارع النصر 123، شقة 4ب';

  @override
  String get homeAddressHelper => 'يُستخدم لمطابقة القرب فقط';

  @override
  String get ageOptionalLabel => 'العمر (اختياري)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'الأعمار 70+ يمكنها تحديد ساعات التنبيه المريحة';

  @override
  String get yourPrivacyMatters => 'خصوصيتك مهمة';

  @override
  String get privacyNotice =>
      'موقعك يتم الاستعلام عنه فقط أثناء الطوارئ النشطة ولا يُحفظ على المدى الطويل.';

  @override
  String get continueButton => 'متابعة';

  @override
  String get pleaseFillRequiredFields => 'يرجى ملء جميع الحقول المطلوبة';

  @override
  String get home => 'الرئيسية';

  @override
  String get alerts => 'التنبيهات';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get availableToRespond => 'متاح للاستجابة';

  @override
  String get notAvailable => 'غير متاح';

  @override
  String get youllReceiveEmergencyAlerts => 'ستتلقى تنبيهات الطوارئ القريبة';

  @override
  String get toggleOnWhenReady => 'فعّل عندما تكون مستعداً للمساعدة';

  @override
  String get youreNowAvailable => 'أنت الآن متاح للاستجابة';

  @override
  String get youWontReceiveAlerts => 'لن تتلقى التنبيهات';

  @override
  String get lifeThreatening247Info =>
      'تنبيهات الطوارئ المهددة للحياة ستصلك على مدار الساعة. التنبيهات غير العاجلة تحترم جدولك الزمني.';

  @override
  String get requestHelp => 'طلب المساعدة';

  @override
  String get yourImpact => 'أثرك';

  @override
  String get responses => 'الاستجابات';

  @override
  String get avgTime => 'متوسط الوقت';

  @override
  String get yourCapabilities => 'قدراتك';

  @override
  String get edit => 'تعديل';

  @override
  String get communityNetwork => 'شبكة المجتمع';

  @override
  String get nearbyResponders => 'المستجيبون القريبون';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count متاح';
  }

  @override
  String get coverageRadius => 'نطاق التغطية';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance ميل';
  }

  @override
  String get activeAlerts => 'التنبيهات النشطة';

  @override
  String get none => 'لا يوجد';

  @override
  String get yourLocation => 'موقعك';

  @override
  String get whatDoYouNeedHelpWith => 'في أي شيء تحتاج المساعدة؟';

  @override
  String get additionalDetailsOptional => 'تفاصيل إضافية (اختياري)';

  @override
  String get describeSituation => 'اوصف الموقف...';

  @override
  String get alertTrustedRespondersFirst => 'تنبيه المستجيبين الموثوقين أولاً';

  @override
  String get trustedRespondersDescription =>
      'الأصدقاء/العائلة المختارون سيتم إشعارهم قبل المجتمع العام';

  @override
  String sendingAlert(String emergencyType) {
    return 'إرسال تنبيه: $emergencyType';
  }

  @override
  String get sendAlertNow => 'إرسال التنبيه الآن';

  @override
  String get pleaseSelectEmergencyType => 'يرجى اختيار نوع الطارئة';

  @override
  String get categoryLifeThreatening => '🔴 مهدد للحياة';

  @override
  String get categorySecuritySafety => '🟠 أمن/سلامة';

  @override
  String get categoryUrgentTimeSensitive => '🟡 عاجل حساس للوقت';

  @override
  String get categoryNonLifeThreatening => '🟢 غير مهدد للحياة';

  @override
  String get emergencyCprCardiacName => 'إنعاش قلبي رئوي / توقف القلب';

  @override
  String get emergencyCprCardiacDesc => 'الشخص فاقد الوعي ولا يتنفس';

  @override
  String get emergencyAedName => 'توصيل جهاز صدمات القلب';

  @override
  String get emergencyAedDesc => 'أحتاج جهاز صدمات القلب فوراً';

  @override
  String get emergencyOverdoseName => 'جرعة زائدة / نالوكسون';

  @override
  String get emergencyOverdoseDesc =>
      'اشتباه في جرعة زائدة من المخدرات، أحتاج نالوكسون';

  @override
  String get emergencyChokingName => 'اختناق / مناورة هايمليك';

  @override
  String get emergencyChokingDesc => 'الشخص يختنق ولا يستطيع التنفس';

  @override
  String get emergencyFireName => 'حريق / إخلاء';

  @override
  String get emergencyFireDesc => 'طارئة حريق، أحتاج مساعدة في الإخلاء';

  @override
  String get emergencyConsentName => 'طارئة موافقة غرفة النوم';

  @override
  String get emergencyConsentDesc => 'تم استخدام كلمة الأمان، أحتاج شاهد';

  @override
  String get emergencyBystanderName => 'شاهد نشط متدخل';

  @override
  String get emergencyBystanderDesc => 'أحتاج حضور لتهدئة النزاع';

  @override
  String get emergencyMissingPetName => 'حيوان أليف مفقود';

  @override
  String get emergencyMissingPetDesc =>
      'الحيوان الأليف ضائع أو هرب، أحتاج فريق بحث';

  @override
  String get emergencyWellnessCheckName => 'فحص سلامة';

  @override
  String get emergencyWellnessCheckDesc => 'فحص شخص قد يحتاج مساعدة';

  @override
  String get emergencyQuitCompanionName => 'رفيق الإقلاع';

  @override
  String get emergencyQuitCompanionDesc => 'أحارب الرغبة الشديدة، أحتاج دعم';

  @override
  String get emergencyCompanionshipName => 'رفقة';

  @override
  String get emergencyCompanionshipDesc => 'أشعر بالوحدة أو العزلة';

  @override
  String get emergency911CoordinationName => 'تنسيق الطوارئ';

  @override
  String get emergency911CoordinationDesc =>
      'أحتاج مساعدة في الاتصال بخدمات الطوارئ وتنسيقها';

  @override
  String get equipmentAed => 'جهاز صدمات القلب';

  @override
  String get equipmentNaloxone => 'نالوكسون/ناركان';

  @override
  String get myCapabilities => 'قدراتي';

  @override
  String capabilitiesSelected(int count) {
    return '$count محدد';
  }

  @override
  String get alertSchedule => 'جدول التنبيهات';

  @override
  String get setAvailabilityHours => 'حدد ساعات توفرك';

  @override
  String get trustedResponders => 'المستجيبون الموثوقون';

  @override
  String get responseHistory => 'تاريخ الاستجابات';

  @override
  String get privacyAndSafety => 'الخصوصية والأمان';

  @override
  String get helpAndSupport => 'المساعدة والدعم';

  @override
  String get aboutNayborSos => 'حول Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'الشروط وسياسة الخصوصية';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String version(String version) {
    return 'الإصدار $version';
  }

  @override
  String get aboutDialogContent =>
      'يربط Naybor SOS الجيران في الطوارئ، مما ينشئ شبكة من المستجيبين السريعين الذين يمكنهم تقديم المساعدة الحيوية قبل وصول المستجيبين المحترفين.';

  @override
  String get aboutDialogContent2 =>
      'يمكن للجميع أن يكونوا أبطالاً. لا تحتاج تدريباً خاصاً لإنقاذ حياة. أحياناً أقوى تدخل هو مجرد الحضور.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'إغلاق';

  @override
  String get signOutQuestion => 'تسجيل الخروج؟';

  @override
  String get signOutConfirm => 'هل أنت متأكد من رغبتك في تسجيل الخروج؟';

  @override
  String get cancel => 'إلغاء';

  @override
  String get signedOutSuccessfully => 'تم تسجيل الخروج بنجاح';

  @override
  String get settings => 'الإعدادات';

  @override
  String get capabilityWellnessCheck => 'فحص السلامة';

  @override
  String get capabilityQuitCompanion => 'رفيق الإقلاع';

  @override
  String get capabilityActiveBystander => 'الشاهد النشط';

  @override
  String get translationTier1Label => 'ترجمة ذكاء اصطناعي عالية الثقة';

  @override
  String get translationTier2Label => 'ترجمة ذكاء اصطناعي جيدة الثقة';

  @override
  String get translationTier3Label => 'ترجمة ذكاء اصطناعي متوسطة الثقة';

  @override
  String get translationTier4Label => 'ترجمة ذكاء اصطناعي منخفضة الثقة';

  @override
  String get translationTier1Notice =>
      'هذه الترجمة تم إنتاجها بالذكاء الاصطناعي بثقة عالية. يُوصى بالمراجعة المهنية للاستخدام الإنتاجي.';

  @override
  String get translationTier2Notice =>
      'هذه الترجمة تم إنتاجها بالذكاء الاصطناعي بثقة جيدة. يُوصى بالمراجعة المهنية لمصطلحات الموافقة والطوارئ الحرجة للسلامة.';

  @override
  String get translationTier3Notice =>
      '⚠️ هذه الترجمة تتطلب مراجعة بشرية لعبارات الطوارئ الحرجة للسلامة قبل الاستخدام الإنتاجي.';

  @override
  String get translationTier4Notice =>
      '⚠️ هذه مسودة ترجمة فقط. الترجمة المهنية مطلوبة قبل الاستخدام الإنتاجي.';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get searchLanguagesHint => 'ابحث في اللغات';

  @override
  String translationQualityLabel(String quality) {
    return 'جودة الترجمة: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'ساعد في تحسين الترجمات - أبلغ عن المشاكل أو ساهم بترجمات أفضل!';
}
