// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Masu Taimako na Zamani - Maza da Mata';

  @override
  String get signUpToHelp => 'Yi rajista don taimaka wa maƙwabta';

  @override
  String get enterPhoneNumber => 'Shigar da lambar wayarka don farawa';

  @override
  String get phoneNumberLabel => 'Lambar Waya';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Aika Lambar Tabbatarwa';

  @override
  String get enterVerificationCode => 'Shigar da lambar tabbatarwa';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Mun aika lambar zuwa $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Lambar Tabbatarwa';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Tabbatar & Ci gaba';

  @override
  String get changePhoneNumber => 'Canza lambar waya';

  @override
  String get pleaseEnterPhoneNumber => 'Don Allah shigar da lambar wayarka';

  @override
  String get pleaseEnterVerificationCode =>
      'Don Allah shigar da lambar tabbatarwa';

  @override
  String get createProfile => 'Ƙirƙiri Bayani';

  @override
  String get tellUsAboutYourself => 'Faɗa mana game da kanka';

  @override
  String get profileSetupDescription =>
      'Wadannan bayanai suna taimaka mana mu haɗa ka da maƙwabta masu buƙatar taimako';

  @override
  String get addPhotoOptional => 'Ƙara hoto (na zaɓi)';

  @override
  String get fullNameLabel => 'Cikakken Suna *';

  @override
  String get fullNameHint => 'Ahmad Musa';

  @override
  String get homeAddressLabel => 'Adireshin Gida *';

  @override
  String get homeAddressHint => '123 Titin Babba, Apartment 4B';

  @override
  String get homeAddressHelper => 'Ana amfani da shi don haɗin kusa kawai';

  @override
  String get ageOptionalLabel => 'Shekaru (na zaɓi)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Masu shekaru 70 zuwa sama za su iya saita lokutan fadakarwa mai laushi';

  @override
  String get yourPrivacyMatters => 'Sirrinku yana da mahimmanci';

  @override
  String get privacyNotice =>
      'Ana neman wurin ku ne kawai lokacin gaggawar aiki kuma ba a adana shi na dogon lokaci ba.';

  @override
  String get continueButton => 'Ci gaba';

  @override
  String get pleaseFillRequiredFields =>
      'Don Allah cika dukkan filayen da ake bukata';

  @override
  String get home => 'Gida';

  @override
  String get alerts => 'Faɗakarwa';

  @override
  String get profile => 'Bayani';

  @override
  String get availableToRespond => 'A shirye don Amsawa';

  @override
  String get notAvailable => 'Ba a shirye ba';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Za ku karɓi faɗakarwar gaggawa kusa da ku';

  @override
  String get toggleOnWhenReady => 'Kunna lokacin da kuka shirya don taimako';

  @override
  String get youreNowAvailable => 'Yanzu kuna shirye don amsawa';

  @override
  String get youWontReceiveAlerts => 'Ba za ku karɓi faɗakarwa ba';

  @override
  String get lifeThreatening247Info =>
      'Faɗakarwar barazana ga rai za ta sanar da ku 24/7. Faɗakarwar da ba ta da gaggawa tana mutunta jadawalinku.';

  @override
  String get requestHelp => 'NEMI TAIMAKO';

  @override
  String get yourImpact => 'Tasirin ku';

  @override
  String get responses => 'Amsoshi';

  @override
  String get avgTime => 'Matsakaicin Lokaci';

  @override
  String get yourCapabilities => 'Damarinku';

  @override
  String get edit => 'Gyara';

  @override
  String get communityNetwork => 'Hanyar sadarwar Al\'umma';

  @override
  String get nearbyResponders => 'Masu Amsawa Kusa';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count a shirye';
  }

  @override
  String get coverageRadius => 'Kewayon Rufewa';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Faɗakarwar da ke Aiki';

  @override
  String get none => 'Babu';

  @override
  String get yourLocation => 'Wurin ku';

  @override
  String get whatDoYouNeedHelpWith => 'Me kuke buƙatar taimako da shi?';

  @override
  String get additionalDetailsOptional => 'Ƙarin Bayani (na zaɓi)';

  @override
  String get describeSituation => 'Bayyana yanayin...';

  @override
  String get alertTrustedRespondersFirst =>
      'Faɗakar da masu amsa da nake aminci da su da farko';

  @override
  String get trustedRespondersDescription =>
      'Abokanku/iyalanku da kuka zaɓa za a sanar da su kafin al\'umma gabaɗaya';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ana aika faɗakarwa: $emergencyType';
  }

  @override
  String get sendAlertNow => 'AIKA FAƊAKARWA YANZU';

  @override
  String get pleaseSelectEmergencyType => 'Don Allah zaɓi nau\'in gaggawa';

  @override
  String get categoryLifeThreatening => '🔴 Mai Barazana ga Rai';

  @override
  String get categorySecuritySafety => '🟠 Tsaro/Aminci';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Gaggawa Mai Mahimmancin Lokaci';

  @override
  String get categoryNonLifeThreatening => '🟢 Ba Mai Barazana ga Rai ba';

  @override
  String get emergencyCprCardiacName => 'CPR / Tsayawar Zuciya';

  @override
  String get emergencyCprCardiacDesc =>
      'Mutumin bai amsa ba kuma ba ya numfashi';

  @override
  String get emergencyAedName => 'Isar da AED';

  @override
  String get emergencyAedDesc => 'Ana buƙatar AED nan take';

  @override
  String get emergencyOverdoseName => 'Yawan Magani / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Ana zargin yawan magani, ana buƙatar naloxone';

  @override
  String get emergencyChokingName => 'Shaƙewa / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Mutumin yana shaƙewa kuma ba zai iya numfashi ba';

  @override
  String get emergencyFireName => 'Gobara / Ƙaura';

  @override
  String get emergencyFireDesc =>
      'Gaggawar gobara, ana buƙatar taimakon ƙaurawa';

  @override
  String get emergencyConsentName => 'Gaggawar Yarda ta Ɗakin Kwana';

  @override
  String get emergencyConsentDesc =>
      'An kira kalmar aminci, ana buƙatar shaida';

  @override
  String get emergencyBystanderName => 'Shaida mai Aiki';

  @override
  String get emergencyBystanderDesc =>
      'Ana buƙatar kasancewa don rage tashin hankali';

  @override
  String get emergencyMissingPetName => 'Dabbar Gida da ta Ɓace';

  @override
  String get emergencyMissingPetDesc =>
      'Dabbar gida ta ɓace ko ta gudu, ana buƙatar ƙungiyar bincike';

  @override
  String get emergencyWellnessCheckName => 'Dubawa ta Lafiya';

  @override
  String get emergencyWellnessCheckDesc =>
      'Duba wani wanda zai iya buƙatar taimako';

  @override
  String get emergencyQuitCompanionName => 'Abokin Barin Abin';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ina fama da sha\'awa, ana buƙatar tallafi';

  @override
  String get emergencyCompanionshipName => 'Abokantaka';

  @override
  String get emergencyCompanionshipDesc => 'Jin kaɗaici ko keɓewa';

  @override
  String get emergency911CoordinationName => 'Haɗin kai na 911';

  @override
  String get emergency911CoordinationDesc =>
      'Ana buƙatar taimako don kira da haɗa kai 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Damaraina';

  @override
  String capabilitiesSelected(int count) {
    return '$count an zaɓa';
  }

  @override
  String get alertSchedule => 'Jadawalin Faɗakarwa';

  @override
  String get setAvailabilityHours => 'Saita sa\'o\'in kasancewarka';

  @override
  String get trustedResponders => 'Masu Amsawa da Ake Aminci';

  @override
  String get responseHistory => 'Tarihin Amsa';

  @override
  String get privacyAndSafety => 'Sirri & Aminci';

  @override
  String get helpAndSupport => 'Taimako & Tallafi';

  @override
  String get aboutNayborSos => 'Game da Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Sharuɗɗa & Manufar Sirri';

  @override
  String get signOut => 'Fita';

  @override
  String version(String version) {
    return 'Sigar $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS yana haɗa maƙwabta a lokacin gaggawa, yana ƙirƙirar hanyar sadarwa ta masu saurin amsawa waɗanda za su iya ba da taimako mai mahimmanci kafin masu sana\'ar taimakon farko su iso.';

  @override
  String get aboutDialogContent2 =>
      'Kowa zai iya zama jarumin. Ba kwa buƙatar horo na musamman don ceton rai. Wani lokaci mafi ƙarfin shiga tsakani shine kawai fitowa.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Rufe';

  @override
  String get signOutQuestion => 'Fita?';

  @override
  String get signOutConfirm => 'Kun tabbata kuna son fita?';

  @override
  String get cancel => 'Soke';

  @override
  String get signedOutSuccessfully => 'An fita cikin nasara';

  @override
  String get settings => 'Saitunan';

  @override
  String get capabilityWellnessCheck => 'Dubawa ta Lafiya';

  @override
  String get capabilityQuitCompanion => 'Abokin Barin Abin';

  @override
  String get capabilityActiveBystander => 'Mai Kallon da ke Aiki';

  @override
  String get translationTier1Label => 'Fassarar AI Mai Babban Aminci';

  @override
  String get translationTier2Label => 'Fassarar AI Mai Kyakkyawan Aminci';

  @override
  String get translationTier3Label => 'Fassarar AI Mai Matsakaicin Aminci';

  @override
  String get translationTier4Label => 'Fassarar AI Mai Ƙarancin Aminci';

  @override
  String get translationTier1Notice =>
      'An samar da wannan fassarar ta AI tare da babban aminci. Ana ba da shawarar bita na ƙwararru don amfani da samarwa.';

  @override
  String get translationTier2Notice =>
      'An samar da wannan fassarar ta AI tare da kyakkyawan aminci. Ana ba da shawarar bita na ƙwararru don yarda da gaggawa da ke da mahimmanci ga aminci.';

  @override
  String get translationTier3Notice =>
      '⚠️ Wannan fassarar tana buƙatar bita na ɗan adam don kalmomi masu mahimmanci na gaggawa kafin amfani da samarwa.';

  @override
  String get translationTier4Notice =>
      '⚠️ Wannan daftarin fassara ne kawai. Ana buƙatar fassarar ƙwararru kafin amfani da samarwa.';

  @override
  String get selectLanguage => 'Zaɓi Harshe';

  @override
  String get searchLanguagesHint => 'Nemi harsuna';

  @override
  String translationQualityLabel(String quality) {
    return 'Ingancin Fassara: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Taimaka inganta fassarori - ba da rahoto kan matsaloli ko ba da gudummawa mafi kyawun fassarori!';
}
