// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Современи минутници и минутнички';

  @override
  String get signUpToHelp => 'Регистрирај се за да им помогнеш на соседите';

  @override
  String get enterPhoneNumber =>
      'Внеси го својот телефонски број за да започнеш';

  @override
  String get phoneNumberLabel => 'Телефонски број';

  @override
  String get phoneNumberHint => '070 123 456';

  @override
  String get sendVerificationCode => 'Испрати код за потврда';

  @override
  String get enterVerificationCode => 'Внеси код за потврда';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Испративме код на $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Код за потврда';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Потврди и продолжи';

  @override
  String get changePhoneNumber => 'Промени телефонски број';

  @override
  String get pleaseEnterPhoneNumber =>
      'Ве молиме внесете го вашиот телефонски број';

  @override
  String get pleaseEnterVerificationCode =>
      'Ве молиме внесете го кодот за потврда';

  @override
  String get createProfile => 'Создади профил';

  @override
  String get tellUsAboutYourself => 'Кажи ни за себе';

  @override
  String get profileSetupDescription =>
      'Овие информации ни помагаат да те поврземе со соседи кои имаат потреба од помош';

  @override
  String get addPhotoOptional => 'Додај фотографија (опционално)';

  @override
  String get fullNameLabel => 'Полно име *';

  @override
  String get fullNameHint => 'Марко Петровски';

  @override
  String get homeAddressLabel => 'Домашна адреса *';

  @override
  String get homeAddressHint => 'ул. Партизанска 123, стан 4Б';

  @override
  String get homeAddressHelper => 'Се користи само за определување на близина';

  @override
  String get ageOptionalLabel => 'Возраст (опционално)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Лица над 70 години можат да постават тивки часови за алерти';

  @override
  String get yourPrivacyMatters => 'Твојата приватност е важна';

  @override
  String get privacyNotice =>
      'Твојата локација се проверува само во активни итни случаи и никогаш не се чува долгорочно.';

  @override
  String get continueButton => 'Продолжи';

  @override
  String get pleaseFillRequiredFields =>
      'Ве молиме пополнете ги сите задолжителни полиња';

  @override
  String get home => 'Дома';

  @override
  String get alerts => 'Алерти';

  @override
  String get profile => 'Профил';

  @override
  String get availableToRespond => 'Достапен за одговор';

  @override
  String get notAvailable => 'Не е достапен';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Ќе примаш алерти за итни случаи во близина';

  @override
  String get toggleOnWhenReady => 'Вклучи кога си подготвен да помогнеш';

  @override
  String get youreNowAvailable => 'Сега си достапен за одговор';

  @override
  String get youWontReceiveAlerts => 'Нема да примаш алерти';

  @override
  String get lifeThreatening247Info =>
      'Алертите кои се опасни по живот ќе те известуваат 24/7. Неитните алерти го почитуваат твоето расписание.';

  @override
  String get requestHelp => 'ПОБАРАЈ ПОМОШ';

  @override
  String get yourImpact => 'Твоето влијание';

  @override
  String get responses => 'Одговори';

  @override
  String get avgTime => 'Просечно време';

  @override
  String get yourCapabilities => 'Твои способности';

  @override
  String get edit => 'Уреди';

  @override
  String get communityNetwork => 'Мрежа на заедницата';

  @override
  String get nearbyResponders => 'Блиски одговорници';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count достапни';
  }

  @override
  String get coverageRadius => 'Радиус на покривање';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance километри';
  }

  @override
  String get activeAlerts => 'Активни алерти';

  @override
  String get none => 'Нема';

  @override
  String get yourLocation => 'Твоја локација';

  @override
  String get whatDoYouNeedHelpWith => 'За што ти треба помош?';

  @override
  String get additionalDetailsOptional => 'Дополнителни детали (опционално)';

  @override
  String get describeSituation => 'Опиши ја ситуацијата...';

  @override
  String get alertTrustedRespondersFirst =>
      'Прво алертирај ги моите доверени одговорници';

  @override
  String get trustedRespondersDescription =>
      'Твоите избрани пријатели/семејство ќе бидат известени пред општата заедница';

  @override
  String sendingAlert(String emergencyType) {
    return 'Испраќам алерт: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ИСПРАТИ АЛЕРТ СЕГА';

  @override
  String get pleaseSelectEmergencyType =>
      'Ве молиме изберете тип на итен случај';

  @override
  String get categoryLifeThreatening => '🔴 Опасно по живот';

  @override
  String get categorySecuritySafety => '🟠 Безбедност/Сигурност';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Итно временски чувствително';

  @override
  String get categoryNonLifeThreatening => '🟢 Неопасно по живот';

  @override
  String get emergencyCprCardiacName => 'КПР / Срцев застој';

  @override
  String get emergencyCprCardiacDesc => 'Лицето не реагира и не дише';

  @override
  String get emergencyAedName => 'Достава на АЕД';

  @override
  String get emergencyAedDesc => 'Итно е потребен АЕД';

  @override
  String get emergencyOverdoseName => 'Предозирање / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Сомневање за предозирање со дроги, потребен налоксон';

  @override
  String get emergencyChokingName => 'Гушење / Хајмлих';

  @override
  String get emergencyChokingDesc => 'Лицето се гуши и не може да дише';

  @override
  String get emergencyFireName => 'Пожар / Евакуација';

  @override
  String get emergencyFireDesc =>
      'Итен случај пожар, потребна помош за евакуација';

  @override
  String get emergencyConsentName => 'Итен случај за согласност во спалната';

  @override
  String get emergencyConsentDesc => 'Повикан безбеден збор, потребен сведок';

  @override
  String get emergencyBystanderName => 'Активен сведок посматрач';

  @override
  String get emergencyBystanderDesc =>
      'Потребно присуство за смирување на конфликт';

  @override
  String get emergencyMissingPetName => 'Исчезнато милениче';

  @override
  String get emergencyMissingPetDesc =>
      'Милениче е загубено или побегнало, потребна потрага';

  @override
  String get emergencyWellnessCheckName => 'Проверка на здравјето';

  @override
  String get emergencyWellnessCheckDesc =>
      'Провери некого кој можеби има потреба од помош';

  @override
  String get emergencyQuitCompanionName => 'Придружник за откажување';

  @override
  String get emergencyQuitCompanionDesc =>
      'Се борам со желбата, потребна поддршка';

  @override
  String get emergencyCompanionshipName => 'Придружба';

  @override
  String get emergencyCompanionshipDesc =>
      'Се чувствувам осамено или изолирано';

  @override
  String get emergency911CoordinationName => 'Координација со итни служби';

  @override
  String get emergency911CoordinationDesc =>
      'Потребна помош за повикување и координирање со итни служби';

  @override
  String get equipmentAed => 'АЕД';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Мои способности';

  @override
  String capabilitiesSelected(int count) {
    return '$count избрани';
  }

  @override
  String get alertSchedule => 'Распис за алерти';

  @override
  String get setAvailabilityHours => 'Постави ги твоите часови на достапност';

  @override
  String get trustedResponders => 'Доверени одговорници';

  @override
  String get responseHistory => 'Историја на одговори';

  @override
  String get privacyAndSafety => 'Приватност и безбедност';

  @override
  String get helpAndSupport => 'Помош и поддршка';

  @override
  String get aboutNayborSos => 'За Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Услови и политика на приватност';

  @override
  String get signOut => 'Одјави се';

  @override
  String version(String version) {
    return 'Верзија $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS ги поврзува соседите во итни случаи, создавајќи мрежа од брзи одговорници кои можат да обезбедат критична помош пред да пристигнат професионалните прв-помошници.';

  @override
  String get aboutDialogContent2 =>
      'Секој може да биде херој. Не ти треба специјална обука за да спасиш живот. Понекогаш најмоќната интервенција е едноставно да се појавиш.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Затвори';

  @override
  String get signOutQuestion => 'Одјави се?';

  @override
  String get signOutConfirm => 'Дали си сигурен дека сакаш да се одјавиш?';

  @override
  String get cancel => 'Откажи';

  @override
  String get signedOutSuccessfully => 'Успешно се одјавивте';

  @override
  String get settings => 'Поставки';

  @override
  String get capabilityWellnessCheck => 'Проверка на здравјето';

  @override
  String get capabilityQuitCompanion => 'Придружник за откажување';

  @override
  String get capabilityActiveBystander => 'Активен посматрач';

  @override
  String get translationTier1Label => 'АИ превод со висока доверба';

  @override
  String get translationTier2Label => 'АИ превод со добра доверба';

  @override
  String get translationTier3Label => 'АИ превод со средна доверба';

  @override
  String get translationTier4Label => 'АИ превод со ниска доверба';

  @override
  String get translationTier1Notice =>
      'Овој превод е генериран од АИ со висока доверба. Препорачан е професионален преглед за производна употреба.';

  @override
  String get translationTier2Notice =>
      'Овој превод е генериран од АИ со добра доверба. Препорачан е професионален преглед за безбедносно-критична терминологија за согласност и итни случаи.';

  @override
  String get translationTier3Notice =>
      '⚠️ Овој превод бара човечки преглед за безбедносно-критични итни фрази пред производна употреба.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ова е само нацрт превод. Потребен е професионален превод пред производна употреба.';

  @override
  String get selectLanguage => 'Избери јазик';

  @override
  String get searchLanguagesHint => 'Пребарај јазици';

  @override
  String translationQualityLabel(String quality) {
    return 'Квалитет на превод: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Помогни да се подобрат преводите - пријави проблеми или придонеси подобри преводи!';
}
