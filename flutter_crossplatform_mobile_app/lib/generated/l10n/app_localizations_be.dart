// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Сучасныя хвілінныя мужчыны і жанчыны';

  @override
  String get signUpToHelp => 'Зарэгіструйцеся, каб дапамагчы сваім суседзям';

  @override
  String get enterPhoneNumber => 'Увядзіце свой нумар тэлефона, каб пачаць';

  @override
  String get phoneNumberLabel => 'Нумар тэлефона';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Адправіць код пацвярджэння';

  @override
  String get enterVerificationCode => 'Увядзіце код пацвярджэння';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Мы адправілі код на $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Код пацвярджэння';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Пацвердзіць і працягнуць';

  @override
  String get changePhoneNumber => 'Змяніць нумар тэлефона';

  @override
  String get pleaseEnterPhoneNumber =>
      'Калі ласка, увядзіце свой нумар тэлефона';

  @override
  String get pleaseEnterVerificationCode =>
      'Калі ласка, увядзіце код пацвярджэння';

  @override
  String get createProfile => 'Стварыць профіль';

  @override
  String get tellUsAboutYourself => 'Расскажыце нам пра сябе';

  @override
  String get profileSetupDescription =>
      'Гэта інфармацыя дапамагае нам злучыць вас з суседзямі, якія патрабуюць дапамогі';

  @override
  String get addPhotoOptional => 'Дадаць фота (па жаданні)';

  @override
  String get fullNameLabel => 'Поўнае імя *';

  @override
  String get fullNameHint => 'Іван Іваноў';

  @override
  String get homeAddressLabel => 'Хатні адрас *';

  @override
  String get homeAddressHint => 'вул. Цэнтральная, 123, кв. 4Б';

  @override
  String get homeAddressHelper =>
      'Выкарыстоўваецца толькі для пошуку па блізкасці';

  @override
  String get ageOptionalLabel => 'Узрост (па жаданні)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Людзі ў узросце 70+ могуць усталяваць мякчэйшыя гадзіны папярэджанняў';

  @override
  String get yourPrivacyMatters => 'Ваша прыватнасць важная';

  @override
  String get privacyNotice =>
      'Ваша месцазнаходжанне запытваецца толькі падчас актыўных надзвычайных сітуацый і ніколі не захоўваецца надоўга.';

  @override
  String get continueButton => 'Працягнуць';

  @override
  String get pleaseFillRequiredFields =>
      'Калі ласка, запоўніце ўсе абавязковыя палі';

  @override
  String get home => 'Галоўная';

  @override
  String get alerts => 'Папярэджанні';

  @override
  String get profile => 'Профіль';

  @override
  String get availableToRespond => 'Даступны для адказу';

  @override
  String get notAvailable => 'Недаступны';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Вы будзеце атрымліваць экстранныя папярэджанні паблізу';

  @override
  String get toggleOnWhenReady => 'Уключыце, калі гатовы дапамагаць';

  @override
  String get youreNowAvailable => 'Вы цяпер даступныя для адказу';

  @override
  String get youWontReceiveAlerts => 'Вы не будзеце атрымліваць папярэджанні';

  @override
  String get lifeThreatening247Info =>
      'Папярэджанні небяспечныя для жыцця будуць паведамляць вам 24/7. Неэкстранныя папярэджанні будуць паважаць ваш расклад.';

  @override
  String get requestHelp => 'ЗАПЫТАЦЬ ДАПАМОГУ';

  @override
  String get yourImpact => 'Ваш уплыў';

  @override
  String get responses => 'Адказы';

  @override
  String get avgTime => 'Сярэдні час';

  @override
  String get yourCapabilities => 'Вашыя здольнасці';

  @override
  String get edit => 'Рэдагаваць';

  @override
  String get communityNetwork => 'Сетка супольнасці';

  @override
  String get nearbyResponders => 'Бліжэйшыя рэспандэнты';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count даступна';
  }

  @override
  String get coverageRadius => 'Радыус пакрыцця';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance міль';
  }

  @override
  String get activeAlerts => 'Актыўныя папярэджанні';

  @override
  String get none => 'Няма';

  @override
  String get yourLocation => 'Ваша месцазнаходжанне';

  @override
  String get whatDoYouNeedHelpWith => 'З чым вам патрэбна дапамога?';

  @override
  String get additionalDetailsOptional =>
      'Дадатковыя падрабязнасці (па жаданні)';

  @override
  String get describeSituation => 'Апішыце сітуацыю...';

  @override
  String get alertTrustedRespondersFirst =>
      'Спачатку папярэдзіць маіх надзейных рэспандэнтаў';

  @override
  String get trustedRespondersDescription =>
      'Вашы выбраныя сябры/сям\'я будуць паведамлены да агульнай супольнасці';

  @override
  String sendingAlert(String emergencyType) {
    return 'Адпраўляем папярэджанне: $emergencyType';
  }

  @override
  String get sendAlertNow => 'АДПРАВІЦЬ ПАПЯРЭДЖАННЕ ЗАРАЗ';

  @override
  String get pleaseSelectEmergencyType =>
      'Калі ласка, выберыце тып надзвычайнай сітуацыі';

  @override
  String get categoryLifeThreatening => '🔴 Небяспечна для жыцця';

  @override
  String get categorySecuritySafety => '🟠 Бяспека/Ахова';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Тэрміновае часачувальнае';

  @override
  String get categoryNonLifeThreatening => '🟢 Не небяспечна для жыцця';

  @override
  String get emergencyCprCardiacName => 'СЛР / Астановіца сэрца';

  @override
  String get emergencyCprCardiacDesc => 'Чалавек не рэагуе і не дыхае';

  @override
  String get emergencyAedName => 'Дастаўка АЗД';

  @override
  String get emergencyAedDesc => 'Неадкладна патрэбен АЗД';

  @override
  String get emergencyOverdoseName => 'Перадазіроўка / Налаксон';

  @override
  String get emergencyOverdoseDesc =>
      'Падозра на перадазіроўку наркотыкамі, патрэбен налаксон';

  @override
  String get emergencyChokingName => 'Ўдушэнне / Хеймліх';

  @override
  String get emergencyChokingDesc => 'Чалавек задыхаецца і не можа дыхаць';

  @override
  String get emergencyFireName => 'Пажар / Эвакуацыя';

  @override
  String get emergencyFireDesc =>
      'Пажарная надзвычайная сітуацыя, патрэбна дапамога з эвакуацыяй';

  @override
  String get emergencyConsentName =>
      'Надзвычайная сітуацыя са згодай у спальні';

  @override
  String get emergencyConsentDesc => 'Сказана стоп-слова, патрэбен сведка';

  @override
  String get emergencyBystanderName => 'Актыўны сведка-назіральнік';

  @override
  String get emergencyBystanderDesc =>
      'Патрэбна прысутнасць для дээскалацыі канфлікту';

  @override
  String get emergencyMissingPetName => 'Страчаная хатняя жывёла';

  @override
  String get emergencyMissingPetDesc =>
      'Хатняя жывёла згубілася або ўцякла, патрэбна пошукавая група';

  @override
  String get emergencyWellnessCheckName => 'Праверка добрабыту';

  @override
  String get emergencyWellnessCheckDesc =>
      'Праверыць некага, хто можа патрабаваць дапамогі';

  @override
  String get emergencyQuitCompanionName => 'Кампаньён для кідання';

  @override
  String get emergencyQuitCompanionDesc =>
      'Змагаюся з цягай, патрэбна падтрымка';

  @override
  String get emergencyCompanionshipName => 'Кампанія';

  @override
  String get emergencyCompanionshipDesc => 'Адчуваю самоту або ізаляцыю';

  @override
  String get emergency911CoordinationName => 'Каардынацыя з 911';

  @override
  String get emergency911CoordinationDesc =>
      'Патрэбна дапамога з тэлефанавым званком і каардынацыяй з 911';

  @override
  String get equipmentAed => 'АЗД';

  @override
  String get equipmentNaloxone => 'Налаксон/Наркан';

  @override
  String get myCapabilities => 'Мае здольнасці';

  @override
  String capabilitiesSelected(int count) {
    return '$count выбрана';
  }

  @override
  String get alertSchedule => 'Расклад папярэджанняў';

  @override
  String get setAvailabilityHours => 'Усталюйце свае гадзіны даступнасці';

  @override
  String get trustedResponders => 'Надзейныя рэспандэнты';

  @override
  String get responseHistory => 'Гісторыя адказаў';

  @override
  String get privacyAndSafety => 'Прыватнасць і бяспека';

  @override
  String get helpAndSupport => 'Дапамога і падтрымка';

  @override
  String get aboutNayborSos => 'Пра Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Умовы і палітыка прыватнасці';

  @override
  String get signOut => 'Выйсці';

  @override
  String version(String version) {
    return 'Версія $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS злучае суседзяў у надзвычайных сітуацыях, ствараючы сетку хуткага рэагавання, якія могуць аказаць крытычную дапамогу да прыбыцця прафесійных служб экстраннага рэагавання.';

  @override
  String get aboutDialogContent2 =>
      'Кожны можа быць героем. Вам не патрэбна спецыяльная падрыхтоўка, каб ратаваць жыццё. Часам самая магутная інтэрвенцыя - гэта проста з\'явіцца.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Карпарацыя грамадскай выгады';

  @override
  String get close => 'Зачыніць';

  @override
  String get signOutQuestion => 'Выйсці?';

  @override
  String get signOutConfirm => 'Вы ўпэўнены, што хочаце выйсці?';

  @override
  String get cancel => 'Скасаваць';

  @override
  String get signedOutSuccessfully => 'Паспяхова выйшлі';

  @override
  String get settings => 'Налады';

  @override
  String get capabilityWellnessCheck => 'Праверка добрабыту';

  @override
  String get capabilityQuitCompanion => 'Кампаньён для кідання';

  @override
  String get capabilityActiveBystander => 'Актыўны назіральнік';

  @override
  String get translationTier1Label => 'Пераклад ІІ з высокай упэўненасцю';

  @override
  String get translationTier2Label => 'Пераклад ІІ з добрай упэўненасцю';

  @override
  String get translationTier3Label => 'Пераклад ІІ з сярэдняй упэўненасцю';

  @override
  String get translationTier4Label => 'Пераклад ІІ з нізкай упэўненасцю';

  @override
  String get translationTier1Notice =>
      'Гэты пераклад быў створаны ІІ з высокай упэўненасцю. Рэкамендуецца прафесійная праверка для выкарыстання ў вытворчасці.';

  @override
  String get translationTier2Notice =>
      'Гэты пераклад быў створаны ІІ з добрай упэўненасцю. Рэкамендуецца прафесійная праверка для крытычнай для бяспекі тэрміналогіі згоды і надзвычайных сітуацый.';

  @override
  String get translationTier3Notice =>
      '⚠️ Гэты пераклад патрабуе праверкі чалавекам для крытычных для бяспекі экстранных фраз перад выкарыстаннем у вытворчасці.';

  @override
  String get translationTier4Notice =>
      '⚠️ Гэта толькі чарнавы пераклад. Патрэбен прафесійны пераклад перад выкарыстаннем у вытворчасці.';

  @override
  String get selectLanguage => 'Выберыце мову';

  @override
  String get searchLanguagesHint => 'Пошук моў';

  @override
  String translationQualityLabel(String quality) {
    return 'Якасць перакладу: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Дапамажыце палепшыць пераклады - паведамляйце пра праблемы або прыносьце лепшыя пераклады!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
