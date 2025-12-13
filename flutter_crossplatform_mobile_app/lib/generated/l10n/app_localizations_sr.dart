// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Савремени брзи помагачи';

  @override
  String get signUpToHelp => 'Пријавите се да помогнете својим комшијама';

  @override
  String get enterPhoneNumber => 'Унесите свој број телефона да бисте почели';

  @override
  String get phoneNumberLabel => 'Број телефона';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Пошаљи код за потврду';

  @override
  String get enterVerificationCode => 'Унесите код за потврду';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Послали смо код на $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Код за потврду';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Потврди и настави';

  @override
  String get changePhoneNumber => 'Промени број телефона';

  @override
  String get pleaseEnterPhoneNumber => 'Молимо унесите свој број телефона';

  @override
  String get pleaseEnterVerificationCode => 'Молимо унесите код за потврду';

  @override
  String get createProfile => 'Направи профил';

  @override
  String get tellUsAboutYourself => 'Реците нам нешто о себи';

  @override
  String get profileSetupDescription =>
      'Ове информације нам помажу да вас повежемо са комшијама којима је потребна помоћ';

  @override
  String get addPhotoOptional => 'Додај фотографију (опционо)';

  @override
  String get fullNameLabel => 'Пуно име *';

  @override
  String get fullNameHint => 'Марко Петровић';

  @override
  String get homeAddressLabel => 'Кућна адреса *';

  @override
  String get homeAddressHint => 'Главна улица 123, стан 4Б';

  @override
  String get homeAddressHelper => 'Користи се само за одређивање близине';

  @override
  String get ageOptionalLabel => 'Године (опционо)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Особе старије од 70 година могу поставити тише сате упозорења';

  @override
  String get yourPrivacyMatters => 'Ваша приватност је важна';

  @override
  String get privacyNotice =>
      'Ваша локација се проверава само током активних хитних случајева и никада се не чува дугорочно.';

  @override
  String get continueButton => 'Настави';

  @override
  String get pleaseFillRequiredFields => 'Молимо попуните все обавезна поља';

  @override
  String get home => 'Почетна';

  @override
  String get alerts => 'Упозорења';

  @override
  String get profile => 'Профил';

  @override
  String get availableToRespond => 'Доступан за одзив';

  @override
  String get notAvailable => 'Није доступан';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Примићете хитна упозорења у близини';

  @override
  String get toggleOnWhenReady => 'Укључите када сте спремни да помогнете';

  @override
  String get youreNowAvailable => 'Сада сте доступни за одзив';

  @override
  String get youWontReceiveAlerts => 'Нећете примати упозорења';

  @override
  String get lifeThreatening247Info =>
      'Упозорења која угрожавају живот ће вас обавестити 24/7. Неургентна упозорења поштују ваш распоред.';

  @override
  String get requestHelp => 'ЗАТРАЖИ ПОМОЋ';

  @override
  String get yourImpact => 'Ваш утицај';

  @override
  String get responses => 'Одзиви';

  @override
  String get avgTime => 'Просечно време';

  @override
  String get yourCapabilities => 'Ваше способности';

  @override
  String get edit => 'Уреди';

  @override
  String get communityNetwork => 'Мрежа заједнице';

  @override
  String get nearbyResponders => 'Помагачи у близини';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count доступно';
  }

  @override
  String get coverageRadius => 'Радијус покривања';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance миља';
  }

  @override
  String get activeAlerts => 'Активна упозорења';

  @override
  String get none => 'Нема';

  @override
  String get yourLocation => 'Ваша локација';

  @override
  String get whatDoYouNeedHelpWith => 'У чему вам треба помоћ?';

  @override
  String get additionalDetailsOptional => 'Додатни детаљи (опционо)';

  @override
  String get describeSituation => 'Опишите ситуацију...';

  @override
  String get alertTrustedRespondersFirst =>
      'Прво обавести моје поуздане помагаче';

  @override
  String get trustedRespondersDescription =>
      'Ваши изабрани пријатељи/породица ће бити обавештени пре опште заједнице';

  @override
  String sendingAlert(String emergencyType) {
    return 'Шаље се упозорење: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ПОШАЉИ УПОЗОРЕЊЕ САДА';

  @override
  String get pleaseSelectEmergencyType => 'Молимо изаберите тип хитног случаја';

  @override
  String get categoryLifeThreatening => '🔴 Опасно по живот';

  @override
  String get categorySecuritySafety => '🟠 Безбедност/Сигурност';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Хитно временски ограничено';

  @override
  String get categoryNonLifeThreatening => '🟢 Није опасно по живот';

  @override
  String get emergencyCprCardiacName => 'КПР / Срчани застој';

  @override
  String get emergencyCprCardiacDesc => 'Особа не реагује и не дише';

  @override
  String get emergencyAedName => 'Достава АЕД-а';

  @override
  String get emergencyAedDesc => 'Хитно потребан АЕД';

  @override
  String get emergencyOverdoseName => 'Предозирање / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Сумња на предозирање дрогом, потребан налоксон';

  @override
  String get emergencyChokingName => 'Гушење / Хајмлихов маневар';

  @override
  String get emergencyChokingDesc => 'Особа се гуши и не може да дише';

  @override
  String get emergencyFireName => 'Пожар / Евакуација';

  @override
  String get emergencyFireDesc =>
      'Хитан случај пожара, потребна помоћ при евакуацији';

  @override
  String get emergencyConsentName => 'Хитан случај сагласности у спаваћој соби';

  @override
  String get emergencyConsentDesc => 'Изговорена безбедна реч, потребан сведок';

  @override
  String get emergencyBystanderName => 'Активни сведок посматрач';

  @override
  String get emergencyBystanderDesc =>
      'Потребно присуство за смиривање конфликта';

  @override
  String get emergencyMissingPetName => 'Нестали кућни љубимац';

  @override
  String get emergencyMissingPetDesc =>
      'Кućни љубимац је изгубљен или побегао, потребна потрага';

  @override
  String get emergencyWellnessCheckName => 'Провера здравља';

  @override
  String get emergencyWellnessCheckDesc =>
      'Проверити неког коме можда треба помоћ';

  @override
  String get emergencyQuitCompanionName => 'Сабoрац за престанак';

  @override
  String get emergencyQuitCompanionDesc =>
      'Борим се са жудњом, потребна подршка';

  @override
  String get emergencyCompanionshipName => 'Друштво';

  @override
  String get emergencyCompanionshipDesc => 'Осећам се усамљено или изоловано';

  @override
  String get emergency911CoordinationName => 'Координација хитних служби';

  @override
  String get emergency911CoordinationDesc =>
      'Потребна помоћ при позивању и координацији хитних служби';

  @override
  String get equipmentAed => 'АЕД';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Моје способности';

  @override
  String capabilitiesSelected(int count) {
    return '$count изабрано';
  }

  @override
  String get alertSchedule => 'Распоред упозорења';

  @override
  String get setAvailabilityHours => 'Поставите сате доступности';

  @override
  String get trustedResponders => 'Поуздани помагачи';

  @override
  String get responseHistory => 'Историја одзива';

  @override
  String get privacyAndSafety => 'Приватност и безбедност';

  @override
  String get helpAndSupport => 'Помоћ и подршка';

  @override
  String get aboutNayborSos => 'О Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Услови коришћења и политика приватности';

  @override
  String get signOut => 'Одјави се';

  @override
  String version(String version) {
    return 'Верзија $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS повезује комшије у хитним случајевима, стварајући мрежу брзих помагача који могу пружити критичну помоћ пре доласка професионалних служби.';

  @override
  String get aboutDialogContent2 =>
      'Свако може бити херој. Не требате посебну обуку да спасите живот. Понекад је најмоћнија интервенција једноставно да се појавите.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Корпорација за јавну добробит';

  @override
  String get close => 'Затвори';

  @override
  String get signOutQuestion => 'Одјавити се?';

  @override
  String get signOutConfirm => 'Да ли сте сигурни да се желите одјавити?';

  @override
  String get cancel => 'Откажи';

  @override
  String get signedOutSuccessfully => 'Успешно сте се одјавили';

  @override
  String get settings => 'Подешавања';

  @override
  String get capabilityWellnessCheck => 'Провера здравља';

  @override
  String get capabilityQuitCompanion => 'Сабoрац за престанак';

  @override
  String get capabilityActiveBystander => 'Активни посматрач';

  @override
  String get translationTier1Label => 'АИ превод високог поверења';

  @override
  String get translationTier2Label => 'АИ превод доброг поверења';

  @override
  String get translationTier3Label => 'АИ превод средњег поверења';

  @override
  String get translationTier4Label => 'АИ превод ниског поверења';

  @override
  String get translationTier1Notice =>
      'Овај превод је направљен помоћу АИ са високим поверењем. Препоручује се професионална провера за производну употребу.';

  @override
  String get translationTier2Notice =>
      'Овај превод је направљен помоћу АИ са добрим поверењем. Препоручује се професионална провера за критичне термине сагласности и хитних случајева.';

  @override
  String get translationTier3Notice =>
      '⚠️ Овај превод захтева људску проверу за безбедносно-критичне хитне фразе пре производне употребе.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ово је само нацрт превода. Потребан је професионални превод пре производне употребе.';

  @override
  String get selectLanguage => 'Изабери језик';

  @override
  String get searchLanguagesHint => 'Претражи језике';

  @override
  String translationQualityLabel(String quality) {
    return 'Квалитет превода: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Помозите побољшању превода - пријавите проблеме или допринесите бољим преводима!';
}
