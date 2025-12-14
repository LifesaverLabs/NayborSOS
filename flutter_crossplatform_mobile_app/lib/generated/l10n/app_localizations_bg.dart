// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Съвременни бързи реагиращи мъже и жени';

  @override
  String get signUpToHelp => 'Регистрирайте се, за да помагате на съседите си';

  @override
  String get enterPhoneNumber => 'Въведете телефонния си номер за започване';

  @override
  String get phoneNumberLabel => 'Телефонен номер';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Изпратете код за потвърждение';

  @override
  String get enterVerificationCode => 'Въведете код за потвърждение';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Изпратихме код на $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Код за потвърждение';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Потвърдете и продължете';

  @override
  String get changePhoneNumber => 'Промени телефонен номер';

  @override
  String get pleaseEnterPhoneNumber => 'Моля, въведете телефонния си номер';

  @override
  String get pleaseEnterVerificationCode =>
      'Моля, въведете кода за потвърждение';

  @override
  String get createProfile => 'Създайте профил';

  @override
  String get tellUsAboutYourself => 'Разкажете ни за себе си';

  @override
  String get profileSetupDescription =>
      'Тази информация ни помага да Ви свържем със съседи, които се нуждаят от помощ';

  @override
  String get addPhotoOptional => 'Добавете снимка (по желание)';

  @override
  String get fullNameLabel => 'Пълно име *';

  @override
  String get fullNameHint => 'Иван Петров';

  @override
  String get homeAddressLabel => 'Домашен адрес *';

  @override
  String get homeAddressHint => 'ул. Витоша 123, ап. 4Б';

  @override
  String get homeAddressHelper => 'Използва се само за близост';

  @override
  String get ageOptionalLabel => 'Възраст (по желание)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Възрастта 70+ може да настрои спокойни часове за известяване';

  @override
  String get yourPrivacyMatters => 'Вашата поверителност е важна';

  @override
  String get privacyNotice =>
      'Вашето местоположение се проверява само по време на активни аварийни ситуации и никога не се съхранява дългосрочно.';

  @override
  String get continueButton => 'Продължи';

  @override
  String get pleaseFillRequiredFields =>
      'Моля, попълнете всички задължителни полета';

  @override
  String get home => 'Начало';

  @override
  String get alerts => 'Известия';

  @override
  String get profile => 'Профил';

  @override
  String get availableToRespond => 'Наличен за отговор';

  @override
  String get notAvailable => 'Не е наличен';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Ще получавате спешни известия наблизо';

  @override
  String get toggleOnWhenReady => 'Включете, когато сте готови да помагате';

  @override
  String get youreNowAvailable => 'Вече сте налични за отговор';

  @override
  String get youWontReceiveAlerts => 'Няма да получавате известия';

  @override
  String get lifeThreatening247Info =>
      'Известията за заплаха за живота ще Ви уведомяват 24/7. Неспешните известия зачитат графика Ви.';

  @override
  String get requestHelp => 'ПОИСКАЙТЕ ПОМОЩ';

  @override
  String get yourImpact => 'Вашето въздействие';

  @override
  String get responses => 'Отговори';

  @override
  String get avgTime => 'Средно време';

  @override
  String get yourCapabilities => 'Вашите способности';

  @override
  String get edit => 'Редактирай';

  @override
  String get communityNetwork => 'Общностна мрежа';

  @override
  String get nearbyResponders => 'Близки реагиращи';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count налични';
  }

  @override
  String get coverageRadius => 'Радиус на покритие';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance мили';
  }

  @override
  String get activeAlerts => 'Активни известия';

  @override
  String get none => 'Няма';

  @override
  String get yourLocation => 'Вашето местоположение';

  @override
  String get whatDoYouNeedHelpWith => 'С какво се нуждаете от помощ?';

  @override
  String get additionalDetailsOptional =>
      'Допълнителни подробности (по желание)';

  @override
  String get describeSituation => 'Опишете ситуацията...';

  @override
  String get alertTrustedRespondersFirst =>
      'Уведомете първо моите доверени реагиращи';

  @override
  String get trustedRespondersDescription =>
      'Избраните Ви приятели/семейство ще бъдат уведомени преди общата общност';

  @override
  String sendingAlert(String emergencyType) {
    return 'Изпращане на известие: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ИЗПРАТЕТЕ ИЗВЕСТИЕ СЕГА';

  @override
  String get pleaseSelectEmergencyType => 'Моля, изберете тип спешност';

  @override
  String get categoryLifeThreatening => '🔴 Заплаха за живота';

  @override
  String get categorySecuritySafety => '🟠 Сигурност/Безопасност';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Спешно чувствително към време';

  @override
  String get categoryNonLifeThreatening => '🟢 Без заплаха за живота';

  @override
  String get emergencyCprCardiacName => 'СЛР / Сърдечен арест';

  @override
  String get emergencyCprCardiacDesc => 'Човекът не реагира и не диша';

  @override
  String get emergencyAedName => 'Доставка на АЕД';

  @override
  String get emergencyAedDesc => 'Нужен е АЕД незабавно';

  @override
  String get emergencyOverdoseName => 'Предозиране / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Подозирано предозиране с наркотици, нужен налоксон';

  @override
  String get emergencyChokingName => 'Задавяне / Хаймлих';

  @override
  String get emergencyChokingDesc => 'Човекът се задавя и не може да диша';

  @override
  String get emergencyFireName => 'Пожар / Евакуация';

  @override
  String get emergencyFireDesc => 'Пожарна ситуация, нужна помощ за евакуация';

  @override
  String get emergencyConsentName => 'Спешност със съгласие в спалнята';

  @override
  String get emergencyConsentDesc =>
      'Произнесена безопасна дума, нужен свидетел';

  @override
  String get emergencyBystanderName => 'Активен свидетел';

  @override
  String get emergencyBystanderDesc =>
      'Нужно присъствие за деескалиране на конфликт';

  @override
  String get emergencyMissingPetName => 'Изчезнал домашен любимец';

  @override
  String get emergencyMissingPetDesc =>
      'Домашният любимец е изгубен или избягал, нужен е екип за търсене';

  @override
  String get emergencyWellnessCheckName => 'Проверка на здравето';

  @override
  String get emergencyWellnessCheckDesc =>
      'Проверете някой, който може да се нуждае от помощ';

  @override
  String get emergencyQuitCompanionName => 'Спътник при отказване';

  @override
  String get emergencyQuitCompanionDesc => 'Борба с желанието, нужна поддръжка';

  @override
  String get emergencyCompanionshipName => 'Компания';

  @override
  String get emergencyCompanionshipDesc => 'Чувстване на самота или изолация';

  @override
  String get emergency911CoordinationName => '112 координация';

  @override
  String get emergency911CoordinationDesc =>
      'Нужна помощ за обаждане и координиране с 112';

  @override
  String get equipmentAed => 'АЕД';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Моите способности';

  @override
  String capabilitiesSelected(int count) {
    return '$count избрани';
  }

  @override
  String get alertSchedule => 'График за известия';

  @override
  String get setAvailabilityHours => 'Задайте часовете на Ваша наличност';

  @override
  String get trustedResponders => 'Доверени реагиращи';

  @override
  String get responseHistory => 'История на отговорите';

  @override
  String get privacyAndSafety => 'Поверителност и безопасност';

  @override
  String get helpAndSupport => 'Помощ и поддръжка';

  @override
  String get aboutNayborSos => 'За Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Условия и политика за поверителност';

  @override
  String get signOut => 'Изход';

  @override
  String version(String version) {
    return 'Версия $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS свързва съседи в спешни ситуации, създавайки мрежа от бързи реагиращи, които могат да окажат критична помощ преди пристигането на професионални спасители.';

  @override
  String get aboutDialogContent2 =>
      'Всеки може да бъде герой. Не се нуждаете от специална подготовка, за да спасите живот. Понякога най-мощната намеса е просто да се появите.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Корпорация за обществена полза';

  @override
  String get close => 'Затвори';

  @override
  String get signOutQuestion => 'Излизане?';

  @override
  String get signOutConfirm => 'Сигурни ли сте, че искате да излезете?';

  @override
  String get cancel => 'Отказ';

  @override
  String get signedOutSuccessfully => 'Излязохте успешно';

  @override
  String get settings => 'Настройки';

  @override
  String get capabilityWellnessCheck => 'Проверка на здравето';

  @override
  String get capabilityQuitCompanion => 'Спътник при отказване';

  @override
  String get capabilityActiveBystander => 'Активен свидетел';

  @override
  String get translationTier1Label => 'ИИ превод с висока увереност';

  @override
  String get translationTier2Label => 'ИИ превод с добра увереност';

  @override
  String get translationTier3Label => 'ИИ превод със средна увереност';

  @override
  String get translationTier4Label => 'ИИ превод с ниска увереnost';

  @override
  String get translationTier1Notice =>
      'Този превод е генериран от ИИ с висока увереност. Препоръчва се професионален преглед за производствена употреба.';

  @override
  String get translationTier2Notice =>
      'Този превод е генериран от ИИ с добра увереност. Препоръчва се професионален преглед за критична за безопасността терминология за съгласие и спешни ситуации.';

  @override
  String get translationTier3Notice =>
      '⚠️ Този превод изисква човешки преглед за критични за безопасността спешни фрази преди производствена употреба.';

  @override
  String get translationTier4Notice =>
      '⚠️ Това е само чернов превод. Необходим е професионален превод преди производствена употреба.';

  @override
  String get selectLanguage => 'Изберете език';

  @override
  String get searchLanguagesHint => 'Търсете езици';

  @override
  String translationQualityLabel(String quality) {
    return 'Качество на превода: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Помогнете за подобряване на преводите - докладвайте проблеми или допринесете с по-добри преводи!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
