// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Современные добровольцы-спасатели';

  @override
  String get signUpToHelp => 'Зарегистрируйтесь, чтобы помочь своим соседям';

  @override
  String get enterPhoneNumber => 'Введите свой номер телефона для начала';

  @override
  String get phoneNumberLabel => 'Номер телефона';

  @override
  String get phoneNumberHint => '+7 (123) 456-78-90';

  @override
  String get sendVerificationCode => 'Отправить код подтверждения';

  @override
  String get enterVerificationCode => 'Введите код подтверждения';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Мы отправили код на $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Код подтверждения';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Подтвердить и продолжить';

  @override
  String get changePhoneNumber => 'Изменить номер телефона';

  @override
  String get pleaseEnterPhoneNumber =>
      'Пожалуйста, введите свой номер телефона';

  @override
  String get pleaseEnterVerificationCode =>
      'Пожалуйста, введите код подтверждения';

  @override
  String get createProfile => 'Создать профиль';

  @override
  String get tellUsAboutYourself => 'Расскажите о себе';

  @override
  String get profileSetupDescription =>
      'Эта информация поможет нам связать вас с соседями, которым нужна помощь';

  @override
  String get addPhotoOptional => 'Добавить фото (необязательно)';

  @override
  String get fullNameLabel => 'Полное имя *';

  @override
  String get fullNameHint => 'Иван Петров';

  @override
  String get homeAddressLabel => 'Домашний адрес *';

  @override
  String get homeAddressHint => 'ул. Ленина, д. 123, кв. 45';

  @override
  String get homeAddressHelper =>
      'Используется только для определения близости';

  @override
  String get ageOptionalLabel => 'Возраст (необязательно)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Люди 70+ могут установить щадящие часы оповещений';

  @override
  String get yourPrivacyMatters => 'Ваша конфиденциальность важна';

  @override
  String get privacyNotice =>
      'Ваше местоположение запрашивается только во время активных чрезвычайных ситуаций и никогда не сохраняется надолго.';

  @override
  String get continueButton => 'Продолжить';

  @override
  String get pleaseFillRequiredFields =>
      'Пожалуйста, заполните все обязательные поля';

  @override
  String get home => 'Главная';

  @override
  String get alerts => 'Оповещения';

  @override
  String get profile => 'Профиль';

  @override
  String get availableToRespond => 'Доступен для реагирования';

  @override
  String get notAvailable => 'Недоступен';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Вы будете получать экстренные оповещения поблизости';

  @override
  String get toggleOnWhenReady => 'Включите, когда будете готовы помочь';

  @override
  String get youreNowAvailable => 'Теперь вы доступны для реагирования';

  @override
  String get youWontReceiveAlerts => 'Вы не будете получать оповещения';

  @override
  String get lifeThreatening247Info =>
      'Оповещения об угрозе жизни будут приходить круглосуточно. Несрочные оповещения учитывают ваш график.';

  @override
  String get requestHelp => 'ЗАПРОСИТЬ ПОМОЩЬ';

  @override
  String get yourImpact => 'Ваш вклад';

  @override
  String get responses => 'Ответы';

  @override
  String get avgTime => 'Среднее время';

  @override
  String get yourCapabilities => 'Ваши возможности';

  @override
  String get edit => 'Изменить';

  @override
  String get communityNetwork => 'Сеть сообщества';

  @override
  String get nearbyResponders => 'Ближайшие спасатели';

  @override
  String nearbyRespondersAvailable(int count) {
    return 'доступно: $count';
  }

  @override
  String get coverageRadius => 'Радиус покрытия';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance км';
  }

  @override
  String get activeAlerts => 'Активные оповещения';

  @override
  String get none => 'Нет';

  @override
  String get yourLocation => 'Ваше местоположение';

  @override
  String get whatDoYouNeedHelpWith => 'В чем вам нужна помощь?';

  @override
  String get additionalDetailsOptional =>
      'Дополнительные детали (необязательно)';

  @override
  String get describeSituation => 'Опишите ситуацию...';

  @override
  String get alertTrustedRespondersFirst =>
      'Сначала оповестить моих доверенных спасателей';

  @override
  String get trustedRespondersDescription =>
      'Ваши выбранные друзья/семья будут уведомлены раньше общего сообщества';

  @override
  String sendingAlert(String emergencyType) {
    return 'Отправка оповещения: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ОТПРАВИТЬ ОПОВЕЩЕНИЕ';

  @override
  String get pleaseSelectEmergencyType =>
      'Пожалуйста, выберите тип экстренной ситуации';

  @override
  String get categoryLifeThreatening => '🔴 Угроза жизни';

  @override
  String get categorySecuritySafety => '🟠 Безопасность';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Срочно';

  @override
  String get categoryNonLifeThreatening => '🟢 Не угрожает жизни';

  @override
  String get emergencyCprCardiacName => 'СЛР / Остановка сердца';

  @override
  String get emergencyCprCardiacDesc => 'Человек без сознания и не дышит';

  @override
  String get emergencyAedName => 'Доставка дефибриллятора';

  @override
  String get emergencyAedDesc => 'Срочно нужен дефибриллятор';

  @override
  String get emergencyOverdoseName => 'Передозировка / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Подозрение на передозировку наркотиками, нужен налоксон';

  @override
  String get emergencyChokingName => 'Удушье / Маневр Геймлиха';

  @override
  String get emergencyChokingDesc => 'Человек задыхается и не может дышать';

  @override
  String get emergencyFireName => 'Пожар / Эвакуация';

  @override
  String get emergencyFireDesc => 'Пожар, нужна помощь с эвакуацией';

  @override
  String get emergencyConsentName => 'Экстренная ситуация с согласием';

  @override
  String get emergencyConsentDesc => 'Произнесено стоп-слово, нужен свидетель';

  @override
  String get emergencyBystanderName => 'Активный свидетель';

  @override
  String get emergencyBystanderDesc =>
      'Нужно присутствие для деэскалации конфликта';

  @override
  String get emergencyMissingPetName => 'Пропавший питомец';

  @override
  String get emergencyMissingPetDesc =>
      'Питомец потерялся или убежал, нужна поисковая группа';

  @override
  String get emergencyWellnessCheckName => 'Проверка самочувствия';

  @override
  String get emergencyWellnessCheckDesc =>
      'Проверить человека, которому может понадобиться помощь';

  @override
  String get emergencyQuitCompanionName => 'Поддержка при отказе';

  @override
  String get emergencyQuitCompanionDesc => 'Борюсь с тягой, нужна поддержка';

  @override
  String get emergencyCompanionshipName => 'Компания';

  @override
  String get emergencyCompanionshipDesc => 'Чувствую одиночество или изоляцию';

  @override
  String get emergency911CoordinationName =>
      'Координация со службами экстренного реагирования';

  @override
  String get emergency911CoordinationDesc =>
      'Нужна помощь с вызовом и координацией служб экстренного реагирования';

  @override
  String get equipmentAed => 'Дефибриллятор';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Мои возможности';

  @override
  String capabilitiesSelected(int count) {
    return 'выбрано: $count';
  }

  @override
  String get alertSchedule => 'Расписание оповещений';

  @override
  String get setAvailabilityHours => 'Установите часы вашей доступности';

  @override
  String get trustedResponders => 'Доверенные спасатели';

  @override
  String get responseHistory => 'История ответов';

  @override
  String get privacyAndSafety => 'Конфиденциальность и безопасность';

  @override
  String get helpAndSupport => 'Помощь и поддержка';

  @override
  String get aboutNayborSos => 'О Naybor SOS';

  @override
  String get termsAndPrivacyPolicy =>
      'Условия использования и политика конфиденциальности';

  @override
  String get signOut => 'Выйти';

  @override
  String version(String version) {
    return 'Версия $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS соединяет соседей в чрезвычайных ситуациях, создавая сеть быстрого реагирования, которая может оказать критически важную помощь до прибытия профессиональных служб экстренного реагирования.';

  @override
  String get aboutDialogContent2 =>
      'Каждый может стать героем. Вам не нужна специальная подготовка, чтобы спасти жизнь. Иногда самое мощное вмешательство — это просто появиться.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Закрыть';

  @override
  String get signOutQuestion => 'Выйти?';

  @override
  String get signOutConfirm => 'Вы уверены, что хотите выйти?';

  @override
  String get cancel => 'Отменить';

  @override
  String get signedOutSuccessfully => 'Выход выполнен успешно';

  @override
  String get settings => 'Настройки';

  @override
  String get capabilityWellnessCheck => 'Проверка самочувствия';

  @override
  String get capabilityQuitCompanion => 'Поддержка при отказе';

  @override
  String get capabilityActiveBystander => 'Активный свидетель';

  @override
  String get translationTier1Label => 'ИИ-перевод высокого качества';

  @override
  String get translationTier2Label => 'ИИ-перевод хорошего качества';

  @override
  String get translationTier3Label => 'ИИ-перевод среднего качества';

  @override
  String get translationTier4Label => 'ИИ-перевод низкого качества';

  @override
  String get translationTier1Notice =>
      'Этот перевод создан ИИ с высокой точностью. Рекомендуется профессиональная проверка для использования в продакшене.';

  @override
  String get translationTier2Notice =>
      'Этот перевод создан ИИ с хорошей точностью. Рекомендуется профессиональная проверка терминологии согласия и чрезвычайных ситуаций.';

  @override
  String get translationTier3Notice =>
      '⚠️ Этот перевод требует человеческой проверки критически важных экстренных фраз перед использованием в продакшене.';

  @override
  String get translationTier4Notice =>
      '⚠️ Это только черновой перевод. Требуется профессиональный перевод перед использованием в продакшене.';

  @override
  String get selectLanguage => 'Выбрать язык';

  @override
  String get searchLanguagesHint => 'Поиск языков';

  @override
  String translationQualityLabel(String quality) {
    return 'Качество перевода: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Помогите улучшить переводы — сообщайте о проблемах или предлагайте лучшие переводы!';
}
