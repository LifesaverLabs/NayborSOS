// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bhojpuri (`bho`).
class AppLocalizationsBho extends AppLocalizations {
  AppLocalizationsBho([String locale = 'bho']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'आजकल के मिनटमैन आ मिनटवुमन';

  @override
  String get signUpToHelp => 'अपना पड़ोसी के मदद करे खातिर साइन अप करीं';

  @override
  String get enterPhoneNumber => 'शुरू करे खातिर अपना फोन नंबर डालीं';

  @override
  String get phoneNumberLabel => 'फोन नंबर';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'वेरिफिकेशन कोड भेजीं';

  @override
  String get enterVerificationCode => 'वेरिफिकेशन कोड डालीं';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'हमनी $phoneNumber पर एगो कोड भेजनी बा';
  }

  @override
  String get verificationCodeLabel => 'वेरिफिकेशन कोड';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'वेरिफाई करीं आ आगे बढ़ीं';

  @override
  String get changePhoneNumber => 'फोन नंबर बदलीं';

  @override
  String get pleaseEnterPhoneNumber => 'कृपया अपना फोन नंबर डालीं';

  @override
  String get pleaseEnterVerificationCode => 'कृपया वेरिफिकेशन कोड डालीं';

  @override
  String get createProfile => 'प्रोफाइल बनाईं';

  @override
  String get tellUsAboutYourself => 'अपना बारे में बताईं';

  @override
  String get profileSetupDescription =>
      'इ जानकारी हमनी के ओह पड़ोसी से जोड़े में मदद करेला जेकरा के मदद चाहीं';

  @override
  String get addPhotoOptional => 'फोटो जोड़ीं (वैकल्पिक)';

  @override
  String get fullNameLabel => 'पूरा नाम *';

  @override
  String get fullNameHint => 'राम प्रसाद';

  @override
  String get homeAddressLabel => 'घर के पता *';

  @override
  String get homeAddressHint => '123 मुख्य सड़क, फ्लैट 4B';

  @override
  String get homeAddressHelper => 'केवल नजदीकी मैचिंग खातिर इस्तेमाल होखेला';

  @override
  String get ageOptionalLabel => 'उमिर (वैकल्पिक)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70+ उमिर वाला नरम अलर्ट टाइम सेट कर सकेलन';

  @override
  String get yourPrivacyMatters => 'राउर प्राइवेसी मायने रखेला';

  @override
  String get privacyNotice =>
      'राउर लोकेशन केवल सक्रिय आपातकाल के दौरान खोजल जाला आ कबहुं लंबा समय तक स्टोर ना होखे।';

  @override
  String get continueButton => 'जारी रखीं';

  @override
  String get pleaseFillRequiredFields => 'कृपया सब जरूरी फील्ड भरीं';

  @override
  String get home => 'घर';

  @override
  String get alerts => 'अलर्ट';

  @override
  String get profile => 'प्रोफाइल';

  @override
  String get availableToRespond => 'जवाब देवे खातिर उपलब्ध';

  @override
  String get notAvailable => 'उपलब्ध नइखे';

  @override
  String get youllReceiveEmergencyAlerts =>
      'राउर के नजदीक के आपातकालीन अलर्ट मिली';

  @override
  String get toggleOnWhenReady => 'मदद करे खातिर तैयार होखे पर टॉगल ऑन करीं';

  @override
  String get youreNowAvailable => 'रउआ अब जवाब देवे खातिर उपलब्ध बानी';

  @override
  String get youWontReceiveAlerts => 'राउर के अलर्ट ना मिली';

  @override
  String get lifeThreatening247Info =>
      'जान खतरा वाला अलर्ट 24/7 सूचना देई। गैर-जरूरी अलर्ट राउर समय के सम्मान करेला।';

  @override
  String get requestHelp => 'मदद मांगीं';

  @override
  String get yourImpact => 'राउर प्रभाव';

  @override
  String get responses => 'जवाब';

  @override
  String get avgTime => 'औसत टाइम';

  @override
  String get yourCapabilities => 'राउर क्षमता';

  @override
  String get edit => 'संपादन';

  @override
  String get communityNetwork => 'समुदायिक नेटवर्क';

  @override
  String get nearbyResponders => 'नजदीक के जवाब देवे वाला';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count उपलब्ध';
  }

  @override
  String get coverageRadius => 'कवरेज दायरा';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance मील';
  }

  @override
  String get activeAlerts => 'सक्रिय अलर्ट';

  @override
  String get none => 'कुछो ना';

  @override
  String get yourLocation => 'राउर स्थान';

  @override
  String get whatDoYouNeedHelpWith => 'काहे में मदद चाहीं?';

  @override
  String get additionalDetailsOptional => 'अतिरिक्त विवरण (वैकल्पिक)';

  @override
  String get describeSituation => 'स्थिति के वर्णन करीं...';

  @override
  String get alertTrustedRespondersFirst =>
      'पहिले मोर भरोसेमंद जवाब देवे वाला के अलर्ट करीं';

  @override
  String get trustedRespondersDescription =>
      'राउर चुनल मित्र/परिवार के सामान्य समुदाय से पहिले सूचना मिली';

  @override
  String sendingAlert(String emergencyType) {
    return 'अलर्ट भेजत बानी: $emergencyType';
  }

  @override
  String get sendAlertNow => 'अबे अलर्ट भेजीं';

  @override
  String get pleaseSelectEmergencyType => 'कृपया आपातकाल के प्रकार चुनीं';

  @override
  String get categoryLifeThreatening => '🔴 जान के खतरा';

  @override
  String get categorySecuritySafety => '🟠 सिक्यूरिटी/सुरक्षा';

  @override
  String get categoryUrgentTimeSensitive => '🟡 तुरंत टाइम-संवेदनशील';

  @override
  String get categoryNonLifeThreatening => '🟢 गैर-जान खतरा';

  @override
  String get emergencyCprCardiacName => 'CPR / दिल के दौरा';

  @override
  String get emergencyCprCardiacDesc => 'व्यक्ति बेहोश बा आ सांस ना ले रहल बा';

  @override
  String get emergencyAedName => 'AED डिलीवरी';

  @override
  String get emergencyAedDesc => 'तुरंत AED चाहीं';

  @override
  String get emergencyOverdoseName => 'ओवरडोज / नालोक्सोन';

  @override
  String get emergencyOverdoseDesc => 'संदिग्ध ड्रग ओवरडोज, नालोक्सोन चाहीं';

  @override
  String get emergencyChokingName => 'गला घुटे / हाइमलिच';

  @override
  String get emergencyChokingDesc =>
      'व्यक्ति के गला घुटत बा आ सांस ना ले सकत बा';

  @override
  String get emergencyFireName => 'आग / निकासी';

  @override
  String get emergencyFireDesc => 'आग लागल बा, निकासी में मदद चाहीं';

  @override
  String get emergencyConsentName => 'बेडरूम सहमति आपातकाल';

  @override
  String get emergencyConsentDesc => 'सेफवर्ड कहल गइल, गवाह चाहीं';

  @override
  String get emergencyBystanderName => 'सक्रिय दर्शक गवाह';

  @override
  String get emergencyBystanderDesc => 'संघर्ष कम करे खातिर उपस्थिति चाहीं';

  @override
  String get emergencyMissingPetName => 'गुम पालतू जानवर';

  @override
  String get emergencyMissingPetDesc =>
      'पालतू गुम बा या भाग गइल बा, खोज दल चाहीं';

  @override
  String get emergencyWellnessCheckName => 'कुशलता जांच';

  @override
  String get emergencyWellnessCheckDesc =>
      'केहू के जांच करीं जेकरा के मदद चाहे के सकेला';

  @override
  String get emergencyQuitCompanionName => 'छोड़े के साथी';

  @override
  String get emergencyQuitCompanionDesc => 'लालसा से लड़त बानी, समर्थन चाहीं';

  @override
  String get emergencyCompanionshipName => 'संगति';

  @override
  String get emergencyCompanionshipDesc => 'अकेलापन या अलगाव महसूस कर रहल बानी';

  @override
  String get emergency911CoordinationName => '911 समन्वय';

  @override
  String get emergency911CoordinationDesc => '911 कॉल आ समन्वय में मदद चाहीं';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'नालोक्सोन/नारकैन';

  @override
  String get myCapabilities => 'मोर क्षमता';

  @override
  String capabilitiesSelected(int count) {
    return '$count चुनल गइल';
  }

  @override
  String get alertSchedule => 'अलर्ट शेड्यूल';

  @override
  String get setAvailabilityHours => 'अपना उपलब्धता के घंटा सेट करीं';

  @override
  String get trustedResponders => 'भरोसेमंद जवाब देवे वाला';

  @override
  String get responseHistory => 'जवाब के इतिहास';

  @override
  String get privacyAndSafety => 'प्राइवेसी आ सुरक्षा';

  @override
  String get helpAndSupport => 'मदद आ समर्थन';

  @override
  String get aboutNayborSos => 'Naybor SOS के बारे में';

  @override
  String get termsAndPrivacyPolicy => 'नियम आ प्राइवेसी पॉलिसी';

  @override
  String get signOut => 'साइन आउट';

  @override
  String version(String version) {
    return 'वर्जन $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS आपातकाल में पड़ोसी के जोड़ेला, तुरंत जवाब देवे वाला के नेटवर्क बनावेला जे पेशेवर पहिला जवाब देवे वाला के आवे से पहिले महत्वपूर्ण सहायता दे सकेला।';

  @override
  String get aboutDialogContent2 =>
      'हर केहू हीरो बन सकेला। जान बचावे खातिर कवनो खास ट्रेनिंग ना चाहीं। कबो-कबो सबसे शक्तिशाली हस्तक्षेप सिर्फ पहुंचना होला।';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'बंद करीं';

  @override
  String get signOutQuestion => 'साइन आउट करब?';

  @override
  String get signOutConfirm => 'का रउआ पक्का साइन आउट करे के चाहत बानी?';

  @override
  String get cancel => 'रद्द करीं';

  @override
  String get signedOutSuccessfully => 'सफलतापूर्वक साइन आउट हो गइल';

  @override
  String get settings => 'सेटिंग';

  @override
  String get capabilityWellnessCheck => 'कुशलता जांच';

  @override
  String get capabilityQuitCompanion => 'छोड़े के साथी';

  @override
  String get capabilityActiveBystander => 'सक्रिय दर्शक';

  @override
  String get translationTier1Label => 'उच्च विश्वास AI अनुवाद';

  @override
  String get translationTier2Label => 'अच्छा विश्वास AI अनुवाद';

  @override
  String get translationTier3Label => 'मध्यम विश्वास AI अनुवाद';

  @override
  String get translationTier4Label => 'कम विश्वास AI अनुवाद';

  @override
  String get translationTier1Notice =>
      'इ अनुवाद उच्च विश्वास के साथ AI से बनावल गइल बा। प्रोडक्शन इस्तेमाल खातिर पेशेवर समीक्षा सुझावल जाला।';

  @override
  String get translationTier2Notice =>
      'इ अनुवाद अच्छा विश्वास के साथ AI से बनावल गइल बा। सुरक्षा-महत्वपूर्ण सहमति आ आपातकालीन शब्दावली खातिर पेशेवर समीक्षा सुझावल जाला।';

  @override
  String get translationTier3Notice =>
      '⚠️ इ अनुवाद के प्रोडक्शन इस्तेमाल से पहिले सुरक्षा-महत्वपूर्ण आपातकालीन वाक्य खातिर मानवीय समीक्षा जरूरी बा।';

  @override
  String get translationTier4Notice =>
      '⚠️ इ केवल ड्राफ्ट अनुवाद बा। प्रोडक्शन इस्तेमाल से पहिले पेशेवर अनुवाद जरूरी बा।';

  @override
  String get selectLanguage => 'भाषा चुनीं';

  @override
  String get searchLanguagesHint => 'भाषा खोजीं';

  @override
  String translationQualityLabel(String quality) {
    return 'अनुवाद गुणवत्ता: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'अनुवाद सुधारे में मदद करीं - समस्या रिपोर्ट करीं या बेहतर अनुवाद योगदान करीं!';
}
