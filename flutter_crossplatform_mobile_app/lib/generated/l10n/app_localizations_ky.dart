// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Азыркы доордогу Минутчу Эркектер жана Аялдар';

  @override
  String get signUpToHelp => 'Коңшуларыңызга жардам берүү үчүн катталыңыз';

  @override
  String get enterPhoneNumber => 'Баштоо үчүн телефон номериңизди киргизиңиз';

  @override
  String get phoneNumberLabel => 'Телефон Номери';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Ырастоо Кодун Жөнөтүү';

  @override
  String get enterVerificationCode => 'Ырастоо кодун киргизиңиз';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Биз $phoneNumber номерине код жибердик';
  }

  @override
  String get verificationCodeLabel => 'Ырастоо Коду';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Ырастоо жана Улантуу';

  @override
  String get changePhoneNumber => 'Телефон номерин өзгөртүү';

  @override
  String get pleaseEnterPhoneNumber => 'Телефон номериңизди киргизиңиз';

  @override
  String get pleaseEnterVerificationCode => 'Ырастоо кодун киргизиңиз';

  @override
  String get createProfile => 'Профиль Түзүү';

  @override
  String get tellUsAboutYourself => 'Өзүңүз жөнүндө айтып бериңиз';

  @override
  String get profileSetupDescription =>
      'Бул маалымат сизди жардамга муктаж коңшуларыңыз менен байланыштырууга жардам берет';

  @override
  String get addPhotoOptional => 'Сүрөт кошуу (кааласаңыз)';

  @override
  String get fullNameLabel => 'Толук Аты *';

  @override
  String get fullNameHint => 'Жон Смит';

  @override
  String get homeAddressLabel => 'Үй Дареги *';

  @override
  String get homeAddressHint => 'Негизги көчө 123, 4Б батир';

  @override
  String get homeAddressHelper => 'Жакынча аныктоо үчүн гана колдонулат';

  @override
  String get ageOptionalLabel => 'Жашы (кааласаңыз)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70 жаштан өйдө болгондор жумшак эскертүү убактысын коё алышат';

  @override
  String get yourPrivacyMatters => 'Сиздин купуялуулугуңуз маанилүү';

  @override
  String get privacyNotice =>
      'Сиздин жайгашкан жериңиз шашылыш кырдаалдар учурунда гана суралат жана узак мөөнөткө сакталбайт.';

  @override
  String get continueButton => 'Улантуу';

  @override
  String get pleaseFillRequiredFields => 'Милдеттүү талааларды толтуруңуз';

  @override
  String get home => 'Башкы';

  @override
  String get alerts => 'Эскертүүлөр';

  @override
  String get profile => 'Профиль';

  @override
  String get availableToRespond => 'Жооп Берүүгө Даяр';

  @override
  String get notAvailable => 'Жеткиликсиз';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Жакындагы шашылыш эскертүүлөрдү алып турасыз';

  @override
  String get toggleOnWhenReady => 'Жардамга даяр болгондо күйгүзүңүз';

  @override
  String get youreNowAvailable => 'Эми жооп берүүгө дайынсыз';

  @override
  String get youWontReceiveAlerts => 'Эскертүүлөрдү албайсыз';

  @override
  String get lifeThreatening247Info =>
      'Өмүргө коркунучтуу эскертүүлөр сизге 24/7 билдирет. Шашылыш эмес эскертүүлөр сиздин графикиңизди урматтайт.';

  @override
  String get requestHelp => 'ЖАРДАМ СУРАҢЫЗ';

  @override
  String get yourImpact => 'Сиздин Таасириңиз';

  @override
  String get responses => 'Жооптор';

  @override
  String get avgTime => 'Орто Убакыт';

  @override
  String get yourCapabilities => 'Сиздин Жөндөмдөрүңүз';

  @override
  String get edit => 'Өзгөртүү';

  @override
  String get communityNetwork => 'Коом Тармагы';

  @override
  String get nearbyResponders => 'Жакындагы Жардамчылар';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count жеткиликтүү';
  }

  @override
  String get coverageRadius => 'Камтуу Радиусу';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance миля';
  }

  @override
  String get activeAlerts => 'Активдүү Эскертүүлөр';

  @override
  String get none => 'Жок';

  @override
  String get yourLocation => 'Сиздин Жайгашкан Жериңиз';

  @override
  String get whatDoYouNeedHelpWith => 'Эмне боюнча жардам керек?';

  @override
  String get additionalDetailsOptional => 'Кошумча Чоо-жайлар (кааласаңыз)';

  @override
  String get describeSituation => 'Кырдаалды сыпаттаңыз...';

  @override
  String get alertTrustedRespondersFirst =>
      'Адегенде ишенимдүү жардамчыларымды эскертүү';

  @override
  String get trustedRespondersDescription =>
      'Тандалган досторуңуз/үй-бүлөңүз жалпы коомдон мурун эскертилет';

  @override
  String sendingAlert(String emergencyType) {
    return 'Эскертүү жиберилүүдө: $emergencyType';
  }

  @override
  String get sendAlertNow => 'АЗЫР ЭЛЕ ЭСКЕРТҮҮ ЖИБЕР';

  @override
  String get pleaseSelectEmergencyType => 'Шашылыш кырдаалдын түрүн тандаңыз';

  @override
  String get categoryLifeThreatening => '🔴 Өмүргө Коркунучтуу';

  @override
  String get categorySecuritySafety => '🟠 Коопсуздук/Безопасность';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Шашылыш Убакытка Байланыштуу';

  @override
  String get categoryNonLifeThreatening => '🟢 Өмүргө Коркунучтуу Эмес';

  @override
  String get emergencyCprCardiacName => 'СЛР / Жүрөктүн Токтошу';

  @override
  String get emergencyCprCardiacDesc => 'Адам эстен тандык жана дем албайт';

  @override
  String get emergencyAedName => 'АЕД Жеткирүү';

  @override
  String get emergencyAedDesc => 'Дароо АЕД керек';

  @override
  String get emergencyOverdoseName => 'Артык Доза / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Баңгизат менен уулануу шеги бар, налоксон керек';

  @override
  String get emergencyChokingName => 'Буулануу / Геймлих';

  @override
  String get emergencyChokingDesc => 'Адам буулануп, дем ала албайт';

  @override
  String get emergencyFireName => 'Өрт / Эвакуация';

  @override
  String get emergencyFireDesc => 'Өрт шашылыш кырдаалы, көчүрүү жардамы керек';

  @override
  String get emergencyConsentName => 'Бөлмөдөгү Макулдашуу Шашылыш Кырдаалы';

  @override
  String get emergencyConsentDesc => 'Токтотуу сөзү айтылды, күбө керек';

  @override
  String get emergencyBystanderName => 'Активдүү Күбө Катнашуу';

  @override
  String get emergencyBystanderDesc =>
      'Конфликтти басаңдатуу үчүн катышуу керек';

  @override
  String get emergencyMissingPetName => 'Жоголгон Үй Жаныбары';

  @override
  String get emergencyMissingPetDesc =>
      'Үй жаныбары жоголду же качты, издөө тобу керек';

  @override
  String get emergencyWellnessCheckName => 'Ден-соолук Текшерүү';

  @override
  String get emergencyWellnessCheckDesc =>
      'Жардамга муктаж болушу мүмкүн адамды текшерүү';

  @override
  String get emergencyQuitCompanionName => 'Таштоо Шеригу';

  @override
  String get emergencyQuitCompanionDesc =>
      'Каалоо менен күрөшүп жатам, колдоо керек';

  @override
  String get emergencyCompanionshipName => 'Шериктештик';

  @override
  String get emergencyCompanionshipDesc => 'Жалгыздык же изоляция сезилүүдө';

  @override
  String get emergency911CoordinationName => '911 Координация';

  @override
  String get emergency911CoordinationDesc =>
      '911ге чалуу жана координациялоо жардамы керек';

  @override
  String get equipmentAed => 'АЕД';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Менин Жөндөмдөрүм';

  @override
  String capabilitiesSelected(int count) {
    return '$count тандалды';
  }

  @override
  String get alertSchedule => 'Эскертүү Графиги';

  @override
  String get setAvailabilityHours => 'Жеткиликтүүлүк убакытыңызды белгилеңиз';

  @override
  String get trustedResponders => 'Ишенимдүү Жардамчылар';

  @override
  String get responseHistory => 'Жооп Тарыхы';

  @override
  String get privacyAndSafety => 'Купуялуулук жана Коопсуздук';

  @override
  String get helpAndSupport => 'Жардам жана Колдоо';

  @override
  String get aboutNayborSos => 'Naybor SOS Жөнүндө';

  @override
  String get termsAndPrivacyPolicy => 'Шарттар жана Купуялуулук Саясаты';

  @override
  String get signOut => 'Чыгуу';

  @override
  String version(String version) {
    return 'Версия $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS шашылыш кырдаалдарда коңшуларды байланыштырат, кесипкөй биринчи жардамчылар келгенге чейин маанилүү жардам берүүчү тез жооп берүүчүлөрдүн тармагын түзөт.';

  @override
  String get aboutDialogContent2 =>
      'Ар ким баатыр болушу мүмкүн. Өмүр сактоо үчүн атайын даярдык керек эмес. Кээде эң күчтүү кийлигишүү - жөн эле келип калуу.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Коомдук Пайда Корпорациясы';

  @override
  String get close => 'Жабуу';

  @override
  String get signOutQuestion => 'Чыгасызбы?';

  @override
  String get signOutConfirm => 'Чыгууну каалайсызбы?';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get signedOutSuccessfully => 'Ийгиликтүү чыктыңыз';

  @override
  String get settings => 'Жөндөөлөр';

  @override
  String get capabilityWellnessCheck => 'Ден-соолук Текшерүү';

  @override
  String get capabilityQuitCompanion => 'Таштоо Шеригу';

  @override
  String get capabilityActiveBystander => 'Активдүү Күбө';

  @override
  String get translationTier1Label => 'Жогорку Ишенимдүүлүктөгү ИИ Котормосу';

  @override
  String get translationTier2Label => 'Жакшы Ишенимдүүлүктөгү ИИ Котормосу';

  @override
  String get translationTier3Label => 'Орто Ишенимдүүлүктөгү ИИ Котормосу';

  @override
  String get translationTier4Label => 'Төмөн Ишенимдүүлүктөгү ИИ Котормосу';

  @override
  String get translationTier1Notice =>
      'Бул котормо жогорку ишенимдүүлүк менен ИИ тарабынан жасалган. Продукцияда колдонуу үчүн кесипкөй көз жүгүртүү сунушталат.';

  @override
  String get translationTier2Notice =>
      'Бул котормо жакшы ишенимдүүлүк менен ИИ тарабынан жасалган. Коопсуздукка маанилүү макулдашуу жана шашылыш терминдер үчүн кесипкөй көз жүгүртүү сунушталат.';

  @override
  String get translationTier3Notice =>
      '⚠️ Бул котормо продукцияда колдонулганга чейин коопсуздукка маанилүү шашылыш фразалар үчүн адамдын көз жүгүртүүсүн талап кылат.';

  @override
  String get translationTier4Notice =>
      '⚠️ Бул долбоор котормо гана. Продукцияда колдонуудан мурун кесипкөй котормо керек.';

  @override
  String get selectLanguage => 'Тилди Тандоо';

  @override
  String get searchLanguagesHint => 'Тилдерди издөө';

  @override
  String translationQualityLabel(String quality) {
    return 'Котормонун Сапаты: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Котормолорду жакшыртууга жардам бериңиз - көйгөйлөрдү кабарлаңыз же жакшы котормолорду салым кошуңуз!';
}
