// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Заманауи Минутшылар мен Минутшы Әйелдер';

  @override
  String get signUpToHelp => 'Көршілеріңізге көмектесу үшін тіркеліңіз';

  @override
  String get enterPhoneNumber => 'Бастау үшін телефон нөміріңізді енгізіңіз';

  @override
  String get phoneNumberLabel => 'Телефон нөмірі';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Растау кодын жіберу';

  @override
  String get enterVerificationCode => 'Растау кодын енгізіңіз';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Біз $phoneNumber нөміріне код жібердік';
  }

  @override
  String get verificationCodeLabel => 'Растау коды';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Растау және жалғастыру';

  @override
  String get changePhoneNumber => 'Телефон нөмірін өзгерту';

  @override
  String get pleaseEnterPhoneNumber => 'Телефон нөміріңізді енгізіңіз';

  @override
  String get pleaseEnterVerificationCode => 'Растау кодын енгізіңіз';

  @override
  String get createProfile => 'Профиль жасау';

  @override
  String get tellUsAboutYourself => 'Өзіңіз туралы айтыңыз';

  @override
  String get profileSetupDescription =>
      'Бұл ақпарат сізді көмекке мұқтаж көршілермен байланыстыруға көмектеседі';

  @override
  String get addPhotoOptional => 'Сурет қосу (міндетті емес)';

  @override
  String get fullNameLabel => 'Толық аты-жөні *';

  @override
  String get fullNameHint => 'Иван Петров';

  @override
  String get homeAddressLabel => 'Үй мекенжайы *';

  @override
  String get homeAddressHint => 'Абай көшесі 123, 4Б пәтер';

  @override
  String get homeAddressHelper =>
      'Тек жақын орналасуды анықтау үшін қолданылады';

  @override
  String get ageOptionalLabel => 'Жасы (міндетті емес)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70+ жастағылар жұмсақ ескерту уақытын орната алады';

  @override
  String get yourPrivacyMatters => 'Сіздің құпиялылығыңыз маңызды';

  @override
  String get privacyNotice =>
      'Сіздің орналасуыңыз тек белсенді төтенше жағдайлар кезінде сұралады және ұзақ мерзімге сақталмайды.';

  @override
  String get continueButton => 'Жалғастыру';

  @override
  String get pleaseFillRequiredFields => 'Барлық міндетті өрістерді толтырыңыз';

  @override
  String get home => 'Басты бет';

  @override
  String get alerts => 'Ескертулер';

  @override
  String get profile => 'Профиль';

  @override
  String get availableToRespond => 'Жауап беруге дайын';

  @override
  String get notAvailable => 'Қолжетімді емес';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Сіз жақын жердегі төтенше ескертулерді аласыз';

  @override
  String get toggleOnWhenReady => 'Көмектесуге дайын болғанда қосыңыз';

  @override
  String get youreNowAvailable => 'Енді сіз жауап беруге дайынсыз';

  @override
  String get youWontReceiveAlerts => 'Сіз ескертулер алмайсыз';

  @override
  String get lifeThreatening247Info =>
      'Өмірге қауіпті ескертулер сізді тәулік бойы хабардар етеді. Шұғыл емес ескертулер сіздің кестеңізді құрметтейді.';

  @override
  String get requestHelp => 'КӨМЕК СҰРАУ';

  @override
  String get yourImpact => 'Сіздің үлесіңіз';

  @override
  String get responses => 'Жауаптар';

  @override
  String get avgTime => 'Орташа уақыт';

  @override
  String get yourCapabilities => 'Сіздің мүмкіндіктеріңіз';

  @override
  String get edit => 'Өңдеу';

  @override
  String get communityNetwork => 'Қоғамдық желі';

  @override
  String get nearbyResponders => 'Жақын жердегі жауап берушілер';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count қолжетімді';
  }

  @override
  String get coverageRadius => 'Қамту радиусы';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance миля';
  }

  @override
  String get activeAlerts => 'Белсенді ескертулер';

  @override
  String get none => 'Жоқ';

  @override
  String get yourLocation => 'Сіздің орналасуыңыз';

  @override
  String get whatDoYouNeedHelpWith => 'Сізге не үшін көмек керек?';

  @override
  String get additionalDetailsOptional => 'Қосымша мәліметтер (міндетті емес)';

  @override
  String get describeSituation => 'Жағдайды сипаттаңыз...';

  @override
  String get alertTrustedRespondersFirst =>
      'Алдымен сенімді жауап берушілерімді ескерту';

  @override
  String get trustedRespondersDescription =>
      'Сіздің таңдалған достарыңыз/отбасыңыз жалпы қоғамдастықтан бұрын хабардар етіледі';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ескерту жіберілуде: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ҚАЗІР ЕСКЕРТУ ЖІБЕРУ';

  @override
  String get pleaseSelectEmergencyType => 'Төтенше жағдай түрін таңдаңыз';

  @override
  String get categoryLifeThreatening => '🔴 Өмірге қауіпті';

  @override
  String get categorySecuritySafety => '🟠 Қауіпсіздік';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Шұғыл уақытқа сезімтал';

  @override
  String get categoryNonLifeThreatening => '🟢 Өмірге қауіпті емес';

  @override
  String get emergencyCprCardiacName => 'ЖКМ / Жүрек тоқтауы';

  @override
  String get emergencyCprCardiacDesc =>
      'Адам сана-сезімін жоғалтып, тыныс алмайды';

  @override
  String get emergencyAedName => 'АЕД жеткізу';

  @override
  String get emergencyAedDesc => 'АЕД дереу қажет';

  @override
  String get emergencyOverdoseName => 'Дозалаудан асу / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Есірткіден дозалаудан асу күдігі, налоксон керек';

  @override
  String get emergencyChokingName => 'Тұншығу / Хеймлих';

  @override
  String get emergencyChokingDesc => 'Адам тұншығып, тыныс ала алмайды';

  @override
  String get emergencyFireName => 'Өрт / Эвакуация';

  @override
  String get emergencyFireDesc =>
      'Өрт төтенше жағдайы, эвакуациялық көмек керек';

  @override
  String get emergencyConsentName => 'Жатын бөлме келісім төтенше жағдайы';

  @override
  String get emergencyConsentDesc => 'Қауіпсіздік сөзі айтылды, куәгер керек';

  @override
  String get emergencyBystanderName => 'Белсенді көрермен куәгер';

  @override
  String get emergencyBystanderDesc => 'Қақтығысты басу үшін қатысу керек';

  @override
  String get emergencyMissingPetName => 'Жоғалған үй жануары';

  @override
  String get emergencyMissingPetDesc =>
      'Үй жануары жоғалды немесе қашты, іздеу тобы керек';

  @override
  String get emergencyWellnessCheckName => 'Денсаулық тексерісі';

  @override
  String get emergencyWellnessCheckDesc => 'Көмекке мұқтаж адамды тексеру';

  @override
  String get emergencyQuitCompanionName => 'Тастау серіктесі';

  @override
  String get emergencyQuitCompanionDesc => 'Құмарлықпен күресуде, қолдау керек';

  @override
  String get emergencyCompanionshipName => 'Серіктестік';

  @override
  String get emergencyCompanionshipDesc =>
      'Жалғыздық немесе оқшауланғандық сезімі';

  @override
  String get emergency911CoordinationName => '911 үйлестіру';

  @override
  String get emergency911CoordinationDesc =>
      '911 шақыру және үйлестіруде көмек керек';

  @override
  String get equipmentAed => 'АЕД';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Менің мүмкіндіктерім';

  @override
  String capabilitiesSelected(int count) {
    return '$count таңдалды';
  }

  @override
  String get alertSchedule => 'Ескерту кестесі';

  @override
  String get setAvailabilityHours => 'Қолжетімділік уақытыңызды орнатыңыз';

  @override
  String get trustedResponders => 'Сенімді жауап берушілер';

  @override
  String get responseHistory => 'Жауап тарихы';

  @override
  String get privacyAndSafety => 'Құпиялылық және қауіпсіздік';

  @override
  String get helpAndSupport => 'Көмек және қолдау';

  @override
  String get aboutNayborSos => 'Naybor SOS туралы';

  @override
  String get termsAndPrivacyPolicy => 'Шарттар және құпиялылық саясаты';

  @override
  String get signOut => 'Шығу';

  @override
  String version(String version) {
    return 'Нұсқа $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS көршілерді төтенше жағдайларда байланыстырады, кәсіби алғашқы көмекшілер келгенге дейін маңызды көмек көрсете алатын жылдам жауап берушілер желісін құрады.';

  @override
  String get aboutDialogContent2 =>
      'Әркім батыр бола алады. Өмірді сақтау үшін арнайы дайындық қажет емес. Кейде ең күшті араласу - жай ғана келу.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Қоғамдық пайда корпорациясы';

  @override
  String get close => 'Жабу';

  @override
  String get signOutQuestion => 'Шығу?';

  @override
  String get signOutConfirm => 'Шынымен шығғыңыз келе ме?';

  @override
  String get cancel => 'Болдырмау';

  @override
  String get signedOutSuccessfully => 'Сәтті шықтыңыз';

  @override
  String get settings => 'Параметрлер';

  @override
  String get capabilityWellnessCheck => 'Денсаулық тексерісі';

  @override
  String get capabilityQuitCompanion => 'Тастау серіктесі';

  @override
  String get capabilityActiveBystander => 'Белсенді көрермен';

  @override
  String get translationTier1Label => 'Жоғары сенімділіктегі ИИ аудармасы';

  @override
  String get translationTier2Label => 'Жақсы сенімділіктегі ИИ аудармасы';

  @override
  String get translationTier3Label => 'Орташа сенімділіктегі ИИ аудармасы';

  @override
  String get translationTier4Label => 'Төмен сенімділіктегі ИИ аудармасы';

  @override
  String get translationTier1Notice =>
      'Бұл аударма ИИ арқылы жоғары сенімділікпен жасалды. Өндірісте қолдану үшін кәсіби қарау ұсынылады.';

  @override
  String get translationTier2Notice =>
      'Бұл аударма ИИ арқылы жақсы сенімділікпен жасалды. Қауіпсіздікке маңызды келісім және төтенше терминологиясы үшін кәсіби қарау ұсынылады.';

  @override
  String get translationTier3Notice =>
      '⚠️ Бұл аударма өндірісте қолдану алдында қауіпсіздікке маңызды төтенше сөз тіркестері үшін адам қарауын талап етеді.';

  @override
  String get translationTier4Notice =>
      '⚠️ Бұл тек жоба аудармасы. Өндірісте қолдану алдында кәсіби аударма қажет.';

  @override
  String get selectLanguage => 'Тілді таңдау';

  @override
  String get searchLanguagesHint => 'Тілдерді іздеу';

  @override
  String translationQualityLabel(String quality) {
    return 'Аударма сапасы: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Аудармаларды жақсартуға көмектесіңіз - мәселелер туралы хабарлаңыз немесе жақсы аудармалар ұсыныңыз!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
