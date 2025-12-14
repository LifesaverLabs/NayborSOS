// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tatar (`tt`).
class AppLocalizationsTt extends AppLocalizations {
  AppLocalizationsTt([String locale = 'tt']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Хәзерге заман минутчылары';

  @override
  String get signUpToHelp => 'Күршеләрегезгә ярдәм итү өчен теркәлегез';

  @override
  String get enterPhoneNumber => 'Башлау өчен телефон номерыгызны кертегез';

  @override
  String get phoneNumberLabel => 'Телефон номеры';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Раслау кодын җибәрү';

  @override
  String get enterVerificationCode => 'Раслау кодын кертегез';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Без $phoneNumber номерына код җибәрдек';
  }

  @override
  String get verificationCodeLabel => 'Раслау коды';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Раслау һәм дәвам итү';

  @override
  String get changePhoneNumber => 'Телефон номерын үзгәртү';

  @override
  String get pleaseEnterPhoneNumber => 'Зинһар, телефон номерыгызны кертегез';

  @override
  String get pleaseEnterVerificationCode => 'Зинһар, раслау кодын кертегез';

  @override
  String get createProfile => 'Профиль төзү';

  @override
  String get tellUsAboutYourself => 'Үзегез турында сөйләгез';

  @override
  String get profileSetupDescription =>
      'Бу мәгълүмат безгә сезне ярдәм кирәк күршеләр белән тоташтырырга ярдәм итә';

  @override
  String get addPhotoOptional => 'Фото өстәү (ихтыярый)';

  @override
  String get fullNameLabel => 'Тулы исем *';

  @override
  String get fullNameHint => 'Иван Петров';

  @override
  String get homeAddressLabel => 'Өй адресы *';

  @override
  String get homeAddressHint => 'Төп урам, 123 йорт, 4Б фатир';

  @override
  String get homeAddressHelper => 'Якынлык тикшерү өчен генә кулланыла';

  @override
  String get ageOptionalLabel => 'Яше (ихтыярый)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70 яшьтән өлкәннәр йомшак сигнал сәгатьләрен билгеләп була';

  @override
  String get yourPrivacyMatters => 'Сезнең хосусыйлыгыгыз мөһим';

  @override
  String get privacyNotice =>
      'Сезнең урныгыз тик активь фораҗи хәлләрендә генә сорала һәм озак вакыт саклалмый.';

  @override
  String get continueButton => 'Дәвам итү';

  @override
  String get pleaseFillRequiredFields =>
      'Зинһар, барлык кирәкле кырларны тутырыгыз';

  @override
  String get home => 'Баш бит';

  @override
  String get alerts => 'Сигналлар';

  @override
  String get profile => 'Профиль';

  @override
  String get availableToRespond => 'Җавап бирергә әзер';

  @override
  String get notAvailable => 'Әзер түгел';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Сез якын-тирәдәге фораҗи сигналларны алырсыз';

  @override
  String get toggleOnWhenReady => 'Ярдәм итәргә әзер булганда кабызыгыз';

  @override
  String get youreNowAvailable => 'Сез хәзер җавап бирергә әзерсез';

  @override
  String get youWontReceiveAlerts => 'Сез сигналлар алмаячаксыз';

  @override
  String get lifeThreatening247Info =>
      'Тормышка куркыныч сигналлар сезне тәүлек буе хәбәр итәчәк. Кискен булмаган сигналлар сезнең график белән исәпләшә.';

  @override
  String get requestHelp => 'ЯРДӘМ СОРАУ';

  @override
  String get yourImpact => 'Сезнең йогынты';

  @override
  String get responses => 'Җаваплар';

  @override
  String get avgTime => 'Уртача вакыт';

  @override
  String get yourCapabilities => 'Сезнең мөмкинлекләр';

  @override
  String get edit => 'Үзгәртү';

  @override
  String get communityNetwork => 'Җәмгыять челтәре';

  @override
  String get nearbyResponders => 'Якын җавапчылар';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count әзер';
  }

  @override
  String get coverageRadius => 'Үз эченә алу радиусы';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance чакрым';
  }

  @override
  String get activeAlerts => 'Активь сигналлар';

  @override
  String get none => 'Юк';

  @override
  String get yourLocation => 'Сезнең урныгыз';

  @override
  String get whatDoYouNeedHelpWith => 'Нәрсә буенча ярдәм кирәк?';

  @override
  String get additionalDetailsOptional => 'Өстәмә мәгълүматлар (ихтыярый)';

  @override
  String get describeSituation => 'Хәлне тасвирлагыз...';

  @override
  String get alertTrustedRespondersFirst =>
      'Беренче чиратта ышанычлы җавапчыларымны хәбәр итегез';

  @override
  String get trustedRespondersDescription =>
      'Сезнең сайланган дусларыгыз/гаиләгез гомуми җәмгыятьтән алда хәбәр ителәчәк';

  @override
  String sendingAlert(String emergencyType) {
    return 'Сигнал җибәрү: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ХӘЗЕР СИГНАЛ ҖИБӘРҮ';

  @override
  String get pleaseSelectEmergencyType => 'Зинһар, фораҗи хәл төрен сайлагыз';

  @override
  String get categoryLifeThreatening => '🔴 Тормышка куркыныч';

  @override
  String get categorySecuritySafety => '🟠 Куркынычсызлык/Иминлек';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Кискен вакытлы';

  @override
  String get categoryNonLifeThreatening => '🟢 Тормышка куркынычлы түгел';

  @override
  String get emergencyCprCardiacName => 'Йөрәк массажы / Йөрәк тукталуы';

  @override
  String get emergencyCprCardiacDesc => 'Кеше аңсыз һәм сулымый';

  @override
  String get emergencyAedName => 'АЕД китерү';

  @override
  String get emergencyAedDesc => 'Шашып АЕД кирәк';

  @override
  String get emergencyOverdoseName => 'Артык доза / Налоксон';

  @override
  String get emergencyOverdoseDesc =>
      'Наркотик артык дозасы шикләнә, налоксон кирәк';

  @override
  String get emergencyChokingName => 'Буылу / Хеймлих';

  @override
  String get emergencyChokingDesc => 'Кеше буыла һәм сулый алмый';

  @override
  String get emergencyFireName => 'Янгын / Эвакуация';

  @override
  String get emergencyFireDesc => 'Янгын фораҗихәле, эвакуацияне ярдәм кирәк';

  @override
  String get emergencyConsentName => 'Хосур йөкү фораҗихәле';

  @override
  String get emergencyConsentDesc => 'Иминлек сүзе әйтелде, шаһит кирәк';

  @override
  String get emergencyBystanderName => 'Активь шаһит';

  @override
  String get emergencyBystanderDesc => 'Конфликтны басу өчен булу кирәк';

  @override
  String get emergencyMissingPetName => 'Югалган йорт хайваны';

  @override
  String get emergencyMissingPetDesc =>
      'Йорт хайваны югалган, эзләү төркеме кирәк';

  @override
  String get emergencyWellnessCheckName => 'Сәламәтлек тикшерүе';

  @override
  String get emergencyWellnessCheckDesc =>
      'Ярдәм кирәк булырга мөмкин кешене тикшерү';

  @override
  String get emergencyQuitCompanionName => 'Ташлау иптәше';

  @override
  String get emergencyQuitCompanionDesc => 'Теләк белән көрәш, ярдәм кирәк';

  @override
  String get emergencyCompanionshipName => 'Иптәшлек';

  @override
  String get emergencyCompanionshipDesc => 'Ялгызлык хисе';

  @override
  String get emergency911CoordinationName => '911 координациясе';

  @override
  String get emergency911CoordinationDesc =>
      '911 шалтыратуда һәм координацияләүдә ярдәм кирәк';

  @override
  String get equipmentAed => 'АЕД';

  @override
  String get equipmentNaloxone => 'Налоксон/Наркан';

  @override
  String get myCapabilities => 'Минем мөмкинлекләрем';

  @override
  String capabilitiesSelected(int count) {
    return '$count сайланды';
  }

  @override
  String get alertSchedule => 'Сигнал графигы';

  @override
  String get setAvailabilityHours => 'Мөмкинлек сәгатьләрегезне билгеләгез';

  @override
  String get trustedResponders => 'Ышанычлы җавапчылар';

  @override
  String get responseHistory => 'Җавап тарихы';

  @override
  String get privacyAndSafety => 'Хосусыйлык һәм иминлек';

  @override
  String get helpAndSupport => 'Ярдәм һәм ярдәм';

  @override
  String get aboutNayborSos => 'Naybor SOS турында';

  @override
  String get termsAndPrivacyPolicy => 'Шартлар һәм хосусыйлык сәясәте';

  @override
  String get signOut => 'Чыгу';

  @override
  String version(String version) {
    return 'Версия $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS фораҗи хәлләрдә күршеләрне тоташтыра, профессиональ беренче ярдәмчеләр килгәнче мөһим ярдәм бирә алучы тиз җавапчылар челтәрен төзи.';

  @override
  String get aboutDialogContent2 =>
      'Һәркем герой була ала. Тормыш коткару өчен махсус әзерлек кирәкми. Кайвакыт иң көчле интервенция - җитеп бару.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs';

  @override
  String get close => 'Ябу';

  @override
  String get signOutQuestion => 'Чыгармы?';

  @override
  String get signOutConfirm => 'Сез чыгырга телисезме?';

  @override
  String get cancel => 'Баш тарту';

  @override
  String get signedOutSuccessfully => 'Уңышлы чыктыгыз';

  @override
  String get settings => 'Көйләүләр';

  @override
  String get capabilityWellnessCheck => 'Сәламәтлек тикшерүе';

  @override
  String get capabilityQuitCompanion => 'Ташлау иптәше';

  @override
  String get capabilityActiveBystander => 'Активь шаһит';

  @override
  String get translationTier1Label => 'Югары ышанычлы ЯИ тәрҗемәсе';

  @override
  String get translationTier2Label => 'Яхшы ышанычлы ЯИ тәрҗемәсе';

  @override
  String get translationTier3Label => 'Урта ышанычлы ЯИ тәрҗемәсе';

  @override
  String get translationTier4Label => 'Түбән ышанычлы ЯИ тәрҗемәсе';

  @override
  String get translationTier1Notice =>
      'Бу тәрҗемә ЯИ белән югары ышанычлылык белән ясалды. Продукциядә куллану өчен профессиональ карау сүнәреләдә.';

  @override
  String get translationTier2Notice =>
      'Бу тәрҗемә ЯИ белән яхшы ышанычлылык белән ясалды. Куркынычсызлык мөһим разилык һәм фораҗи терминология өчен профессиональ карау тәкъдим ителә.';

  @override
  String get translationTier3Notice =>
      '⚠️ Бу тәрҗемә продукцияне куллану алдыннан куркынычсызлык мөһим фораҗи фразалар өчен кеше каравы таләп итә.';

  @override
  String get translationTier4Notice =>
      '⚠️ Бу тик проект тәрҗемәсе. Продукцияне куллану алдыннан профессиональ тәрҗемә кирәк.';

  @override
  String get selectLanguage => 'Тел сайлау';

  @override
  String get searchLanguagesHint => 'Телләрне эзләү';

  @override
  String translationQualityLabel(String quality) {
    return 'Тәрҗемә сыйфаты: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Тәрҗемәләрне яхшыртуда ярдәм итегез - проблемалар турында хәбәр итегез яки яхшырак тәрҗемәләр кертегез!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
