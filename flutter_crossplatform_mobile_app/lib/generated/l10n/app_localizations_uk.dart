// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Сучасні рятівники-добровольці';

  @override
  String get signUpToHelp => 'Зареєструйтеся, щоб допомагати сусідам';

  @override
  String get enterPhoneNumber => 'Введіть номер телефону для початку';

  @override
  String get phoneNumberLabel => 'Номер телефону';

  @override
  String get phoneNumberHint => '(050) 123-4567';

  @override
  String get sendVerificationCode => 'Надіслати код підтвердження';

  @override
  String get enterVerificationCode => 'Введіть код підтвердження';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Ми надіслали код на $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Код підтвердження';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Підтвердити і продовжити';

  @override
  String get changePhoneNumber => 'Змінити номер телефону';

  @override
  String get pleaseEnterPhoneNumber => 'Будь ласка, введіть номер телефону';

  @override
  String get pleaseEnterVerificationCode =>
      'Будь ласка, введіть код підтвердження';

  @override
  String get createProfile => 'Створити профіль';

  @override
  String get tellUsAboutYourself => 'Розкажіть про себе';

  @override
  String get profileSetupDescription =>
      'Ця інформація допомагає нам з\'єднати вас із сусідами, які потребують допомоги';

  @override
  String get addPhotoOptional => 'Додати фото (необов\'язково)';

  @override
  String get fullNameLabel => 'Повне ім\'я *';

  @override
  String get fullNameHint => 'Іван Петренко';

  @override
  String get homeAddressLabel => 'Домашня адреса *';

  @override
  String get homeAddressHint => 'вул. Хрещатик, 123, кв. 45';

  @override
  String get homeAddressHelper =>
      'Використовується лише для визначення близькості';

  @override
  String get ageOptionalLabel => 'Вік (необов\'язково)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Особи 70+ можуть встановити спокійні години сповіщень';

  @override
  String get yourPrivacyMatters => 'Ваша приватність важлива';

  @override
  String get privacyNotice =>
      'Ваше місцезнаходження запитується лише під час активних надзвичайних ситуацій і ніколи не зберігається довгостроково.';

  @override
  String get continueButton => 'Продовжити';

  @override
  String get pleaseFillRequiredFields =>
      'Будь ласка, заповніть всі обов\'язкові поля';

  @override
  String get home => 'Головна';

  @override
  String get alerts => 'Сповіщення';

  @override
  String get profile => 'Профіль';

  @override
  String get availableToRespond => 'Доступний для реагування';

  @override
  String get notAvailable => 'Недоступний';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Ви отримуватимете екстрені сповіщення поблизу';

  @override
  String get toggleOnWhenReady => 'Увімкніть, коли будете готові допомагати';

  @override
  String get youreNowAvailable => 'Тепер ви доступні для реагування';

  @override
  String get youWontReceiveAlerts => 'Ви не отримуватимете сповіщень';

  @override
  String get lifeThreatening247Info =>
      'Загрозливі для життя сповіщення надходитимуть 24/7. Неургентні сповіщення враховують ваш розклад.';

  @override
  String get requestHelp => 'ЗАПРОСИТИ ДОПОМОГУ';

  @override
  String get yourImpact => 'Ваш внесок';

  @override
  String get responses => 'Відгуки';

  @override
  String get avgTime => 'Серед. час';

  @override
  String get yourCapabilities => 'Ваші можливості';

  @override
  String get edit => 'Редагувати';

  @override
  String get communityNetwork => 'Мережа спільноти';

  @override
  String get nearbyResponders => 'Рятівники поблизу';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count доступних';
  }

  @override
  String get coverageRadius => 'Радіус покриття';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance км';
  }

  @override
  String get activeAlerts => 'Активні сповіщення';

  @override
  String get none => 'Немає';

  @override
  String get yourLocation => 'Ваше місцезнаходження';

  @override
  String get whatDoYouNeedHelpWith => 'З чим вам потрібна допомога?';

  @override
  String get additionalDetailsOptional => 'Додаткові деталі (необов\'язково)';

  @override
  String get describeSituation => 'Опишіть ситуацію...';

  @override
  String get alertTrustedRespondersFirst =>
      'Спершу сповістити моїх довірених рятівників';

  @override
  String get trustedRespondersDescription =>
      'Ваші обрані друзі/родина будуть сповіщені перед загальною спільнотою';

  @override
  String sendingAlert(String emergencyType) {
    return 'Надсилання сповіщення: $emergencyType';
  }

  @override
  String get sendAlertNow => 'НАДІСЛАТИ СПОВІЩЕННЯ ЗАРАЗ';

  @override
  String get pleaseSelectEmergencyType =>
      'Будь ласка, оберіть тип надзвичайної ситуації';

  @override
  String get categoryLifeThreatening => '🔴 Загрозливо для життя';

  @override
  String get categorySecuritySafety => '🟠 Безпека/Охорона';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Терміново/Обмежено в часі';

  @override
  String get categoryNonLifeThreatening => '🟢 Не загрозливо для життя';

  @override
  String get emergencyCprCardiacName => 'СЛР / Зупинка серця';

  @override
  String get emergencyCprCardiacDesc => 'Людина не реагує і не дихає';

  @override
  String get emergencyAedName => 'Доставка дефібрилятора';

  @override
  String get emergencyAedDesc =>
      'Негайно потрібен автоматичний зовнішній дефібрилятор';

  @override
  String get emergencyOverdoseName => 'Передозування / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Підозра на передозування наркотиками, потрібен налоксон';

  @override
  String get emergencyChokingName => 'Задуха / Прийом Хаймліха';

  @override
  String get emergencyChokingDesc => 'Людина задихається і не може дихати';

  @override
  String get emergencyFireName => 'Пожежа / Евакуація';

  @override
  String get emergencyFireDesc =>
      'Пожежна надзвичайна ситуація, потрібна допомога з евакуацією';

  @override
  String get emergencyConsentName => 'Надзвичайна ситуація згоди в спальні';

  @override
  String get emergencyConsentDesc => 'Вимовлено стоп-слово, потрібен свідок';

  @override
  String get emergencyBystanderName => 'Активний свідок-спостерігач';

  @override
  String get emergencyBystanderDesc =>
      'Потрібна присутність для деескалації конфлікту';

  @override
  String get emergencyMissingPetName => 'Зникла тварина';

  @override
  String get emergencyMissingPetDesc =>
      'Домашня тварина загубилася або втекла, потрібна пошукова група';

  @override
  String get emergencyWellnessCheckName => 'Перевірка стану здоров\'я';

  @override
  String get emergencyWellnessCheckDesc =>
      'Перевірити когось, хто може потребувати допомоги';

  @override
  String get emergencyQuitCompanionName => 'Супутник відмови';

  @override
  String get emergencyQuitCompanionDesc =>
      'Борюся зі спокусою, потрібна підтримка';

  @override
  String get emergencyCompanionshipName => 'Компанія';

  @override
  String get emergencyCompanionshipDesc => 'Почуваюся самотньо або ізольовано';

  @override
  String get emergency911CoordinationName => 'Координація з службою порятунку';

  @override
  String get emergency911CoordinationDesc =>
      'Потрібна допомога з дзвінком і координацією зі службою порятунку';

  @override
  String get equipmentAed => 'Дефібрилятор';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Мої можливості';

  @override
  String capabilitiesSelected(int count) {
    return '$count обрано';
  }

  @override
  String get alertSchedule => 'Розклад сповіщень';

  @override
  String get setAvailabilityHours => 'Встановіть години доступності';

  @override
  String get trustedResponders => 'Довірені рятівники';

  @override
  String get responseHistory => 'Історія реагувань';

  @override
  String get privacyAndSafety => 'Приватність і безпека';

  @override
  String get helpAndSupport => 'Допомога і підтримка';

  @override
  String get aboutNayborSos => 'Про Naybor SOS';

  @override
  String get termsAndPrivacyPolicy =>
      'Умови використання та політика приватності';

  @override
  String get signOut => 'Вийти';

  @override
  String version(String version) {
    return 'Версія $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS з\'єднує сусідів під час надзвичайних ситуацій, створюючи мережу швидкого реагування, яка може надати критичну допомогу до прибуття професійних рятувальників.';

  @override
  String get aboutDialogContent2 =>
      'Кожен може бути героєм. Вам не потрібна спеціальна підготовка, щоб врятувати життя. Іноді найпотужнішим втручанням є просто з\'явитися.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Закрити';

  @override
  String get signOutQuestion => 'Вийти?';

  @override
  String get signOutConfirm => 'Ви впевнені, що хочете вийти?';

  @override
  String get cancel => 'Скасувати';

  @override
  String get signedOutSuccessfully => 'Успішно вийшли';

  @override
  String get settings => 'Налаштування';

  @override
  String get capabilityWellnessCheck => 'Перевірка стану здоров\'я';

  @override
  String get capabilityQuitCompanion => 'Супутник відмови';

  @override
  String get capabilityActiveBystander => 'Активний спостерігач';

  @override
  String get translationTier1Label => 'Переклад ШІ високої достовірності';

  @override
  String get translationTier2Label => 'Переклад ШІ хорошої достовірності';

  @override
  String get translationTier3Label => 'Переклад ШІ середньої достовірності';

  @override
  String get translationTier4Label => 'Переклад ШІ низької достовірності';

  @override
  String get translationTier1Notice =>
      'Цей переклад створено ШІ з високою достовірністю. Рекомендується професійна перевірка для використання в продукції.';

  @override
  String get translationTier2Notice =>
      'Цей переклад створено ШІ з хорошою достовірністю. Рекомендується професійна перевірка для критично важливої термінології згоди та надзвичайних ситуацій.';

  @override
  String get translationTier3Notice =>
      '⚠️ Цей переклад потребує людської перевірки критично важливих фраз надзвичайних ситуацій перед використанням у продукції.';

  @override
  String get translationTier4Notice =>
      '⚠️ Це лише чернетка перекладу. Необхідний професійний переклад перед використанням у продукції.';

  @override
  String get selectLanguage => 'Оберіть мову';

  @override
  String get searchLanguagesHint => 'Пошук мов';

  @override
  String translationQualityLabel(String quality) {
    return 'Якість перекладу: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Допоможіть покращити переклади - повідомляйте про проблеми або надавайте кращі переклади!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
