// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'आधुनिक मिनटमेन और मिनटवुमेन';

  @override
  String get signUpToHelp => 'अपने पड़ोसियों की मदद के लिए साइन अप करें';

  @override
  String get enterPhoneNumber => 'शुरू करने के लिए अपना फ़ोन नंबर दर्ज करें';

  @override
  String get phoneNumberLabel => 'फ़ोन नंबर';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'सत्यापन कोड भेजें';

  @override
  String get enterVerificationCode => 'सत्यापन कोड दर्ज करें';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'हमने $phoneNumber पर एक कोड भेजा है';
  }

  @override
  String get verificationCodeLabel => 'सत्यापन कोड';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'सत्यापित करें और जारी रखें';

  @override
  String get changePhoneNumber => 'फ़ोन नंबर बदलें';

  @override
  String get pleaseEnterPhoneNumber => 'कृपया अपना फ़ोन नंबर दर्ज करें';

  @override
  String get pleaseEnterVerificationCode => 'कृपया सत्यापन कोड दर्ज करें';

  @override
  String get createProfile => 'प्रोफ़ाइल बनाएं';

  @override
  String get tellUsAboutYourself => 'हमें अपने बारे में बताएं';

  @override
  String get profileSetupDescription =>
      'यह जानकारी हमें आपको उन पड़ोसियों से जोड़ने में मदद करती है जिन्हें मदद की ज़रूरत है';

  @override
  String get addPhotoOptional => 'फ़ोटो जोड़ें (वैकल्पिक)';

  @override
  String get fullNameLabel => 'पूरा नाम *';

  @override
  String get fullNameHint => 'राज कुमार';

  @override
  String get homeAddressLabel => 'घर का पता *';

  @override
  String get homeAddressHint => '123 मेन स्ट्रीट, अपार्टमेंट 4B';

  @override
  String get homeAddressHelper => 'केवल निकटता मिलान के लिए उपयोग किया जाता है';

  @override
  String get ageOptionalLabel => 'उम्र (वैकल्पिक)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70+ उम्र के लोग सौम्य अलर्ट घंटे सेट कर सकते हैं';

  @override
  String get yourPrivacyMatters => 'आपकी गोपनीयता महत्वपूर्ण है';

  @override
  String get privacyNotice =>
      'आपका स्थान केवल सक्रिय आपात स्थिति के दौरान ही खोजा जाता है और कभी भी दीर्घकालिक संग्रहीत नहीं किया जाता है।';

  @override
  String get continueButton => 'जारी रखें';

  @override
  String get pleaseFillRequiredFields => 'कृपया सभी आवश्यक फ़ील्ड भरें';

  @override
  String get home => 'होम';

  @override
  String get alerts => 'अलर्ट';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get availableToRespond => 'प्रतिक्रिया देने के लिए उपलब्ध';

  @override
  String get notAvailable => 'उपलब्ध नहीं';

  @override
  String get youllReceiveEmergencyAlerts =>
      'आपको पास की आपातकालीन अलर्ट प्राप्त होंगे';

  @override
  String get toggleOnWhenReady => 'मदद के लिए तैयार होने पर टॉगल करें';

  @override
  String get youreNowAvailable => 'अब आप प्रतिक्रिया देने के लिए उपलब्ध हैं';

  @override
  String get youWontReceiveAlerts => 'आपको अलर्ट प्राप्त नहीं होंगे';

  @override
  String get lifeThreatening247Info =>
      'जीवन के लिए खतरनाक अलर्ट आपको 24/7 सूचित करेंगे। गैर-जरूरी अलर्ट आपके शेड्यूल का सम्मान करते हैं।';

  @override
  String get requestHelp => 'मदद का अनुरोध करें';

  @override
  String get yourImpact => 'आपका प्रभाव';

  @override
  String get responses => 'प्रतिक्रियाएं';

  @override
  String get avgTime => 'औसत समय';

  @override
  String get yourCapabilities => 'आपकी क्षमताएं';

  @override
  String get edit => 'संपादित करें';

  @override
  String get communityNetwork => 'सामुदायिक नेटवर्क';

  @override
  String get nearbyResponders => 'पास के प्रतिक्रियाकर्ता';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count उपलब्ध';
  }

  @override
  String get coverageRadius => 'कवरेज त्रिज्या';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance मील';
  }

  @override
  String get activeAlerts => 'सक्रिय अलर्ट';

  @override
  String get none => 'कोई नहीं';

  @override
  String get yourLocation => 'आपका स्थान';

  @override
  String get whatDoYouNeedHelpWith => 'आपको किस चीज़ में मदद चाहिए?';

  @override
  String get additionalDetailsOptional => 'अतिरिक्त विवरण (वैकल्पिक)';

  @override
  String get describeSituation => 'स्थिति का वर्णन करें...';

  @override
  String get alertTrustedRespondersFirst =>
      'पहले मेरे विश्वसनीय प्रतिक्रियाकर्ताओं को अलर्ट करें';

  @override
  String get trustedRespondersDescription =>
      'आपके चयनित मित्रों/परिवार को सामान्य समुदाय से पहले सूचित किया जाएगा';

  @override
  String sendingAlert(String emergencyType) {
    return 'अलर्ट भेजा जा रहा है: $emergencyType';
  }

  @override
  String get sendAlertNow => 'अभी अलर्ट भेजें';

  @override
  String get pleaseSelectEmergencyType => 'कृपया एक आपातकालीन प्रकार चुनें';

  @override
  String get categoryLifeThreatening => '🔴 जीवन के लिए खतरनाक';

  @override
  String get categorySecuritySafety => '🟠 सुरक्षा';

  @override
  String get categoryUrgentTimeSensitive => '🟡 तत्काल समय-संवेदनशील';

  @override
  String get categoryNonLifeThreatening => '🟢 जीवन के लिए खतरनाक नहीं';

  @override
  String get emergencyCprCardiacName => 'सीपीआर / कार्डियक अरेस्ट';

  @override
  String get emergencyCprCardiacDesc =>
      'व्यक्ति अनुत्तरदायी है और सांस नहीं ले रहा है';

  @override
  String get emergencyAedName => 'एईडी वितरण';

  @override
  String get emergencyAedDesc => 'तुरंत एक एईडी चाहिए';

  @override
  String get emergencyOverdoseName => 'ओवरडोज / नालोक्सोन';

  @override
  String get emergencyOverdoseDesc =>
      'संदिग्ध दवा ओवरडोज, नालोक्सोन की आवश्यकता';

  @override
  String get emergencyChokingName => 'घुटन / हीमलिक';

  @override
  String get emergencyChokingDesc => 'व्यक्ति घुट रहा है और सांस नहीं ले सकता';

  @override
  String get emergencyFireName => 'आग / निकासी';

  @override
  String get emergencyFireDesc => 'आग आपातकाल, निकासी सहायता चाहिए';

  @override
  String get emergencyConsentName => 'सहमति आपातकाल';

  @override
  String get emergencyConsentDesc => 'सुरक्षा शब्द बोला गया, गवाह चाहिए';

  @override
  String get emergencyBystanderName => 'सक्रिय दर्शक गवाह';

  @override
  String get emergencyBystanderDesc =>
      'संघर्ष को कम करने के लिए उपस्थिति चाहिए';

  @override
  String get emergencyMissingPetName => 'लापता पालतू जानवर';

  @override
  String get emergencyMissingPetDesc =>
      'पालतू जानवर खो गया या भाग गया, खोज पार्टी चाहिए';

  @override
  String get emergencyWellnessCheckName => 'कल्याण जांच';

  @override
  String get emergencyWellnessCheckDesc =>
      'किसी की जांच करें जिसे मदद की आवश्यकता हो सकती है';

  @override
  String get emergencyQuitCompanionName => 'छोड़ने का साथी';

  @override
  String get emergencyQuitCompanionDesc => 'लालसा से लड़ रहा हूं, समर्थन चाहिए';

  @override
  String get emergencyCompanionshipName => 'साहचर्य';

  @override
  String get emergencyCompanionshipDesc => 'अकेला या अलग-थलग महसूस कर रहा हूं';

  @override
  String get emergency911CoordinationName => '911 समन्वय';

  @override
  String get emergency911CoordinationDesc =>
      '911 कॉल करने और समन्वय करने में मदद चाहिए';

  @override
  String get equipmentAed => 'एईडी';

  @override
  String get equipmentNaloxone => 'नालोक्सोन/Narcan';

  @override
  String get myCapabilities => 'मेरी क्षमताएं';

  @override
  String capabilitiesSelected(int count) {
    return '$count चयनित';
  }

  @override
  String get alertSchedule => 'अलर्ट शेड्यूल';

  @override
  String get setAvailabilityHours => 'अपनी उपलब्धता घंटे सेट करें';

  @override
  String get trustedResponders => 'विश्वसनीय प्रतिक्रियाकर्ता';

  @override
  String get responseHistory => 'प्रतिक्रिया इतिहास';

  @override
  String get privacyAndSafety => 'गोपनीयता और सुरक्षा';

  @override
  String get helpAndSupport => 'मदद और सहायता';

  @override
  String get aboutNayborSos => 'Naybor SOS के बारे में';

  @override
  String get termsAndPrivacyPolicy => 'शर्तें और गोपनीयता नीति';

  @override
  String get signOut => 'साइन आउट';

  @override
  String version(String version) {
    return 'संस्करण $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS आपातकाल में पड़ोसियों को जोड़ता है, तेजी से प्रतिक्रियाकर्ताओं का एक नेटवर्क बनाता है जो पेशेवर प्रथम प्रतिक्रियाकर्ताओं के आने से पहले महत्वपूर्ण सहायता प्रदान कर सकते हैं।';

  @override
  String get aboutDialogContent2 =>
      'हर कोई नायक बन सकता है। जीवन बचाने के लिए आपको विशेष प्रशिक्षण की आवश्यकता नहीं है। कभी-कभी सबसे शक्तिशाली हस्तक्षेप केवल वहां मौजूद होना है।';

  @override
  String get lifesaverLabs => 'Lifesaver Labs सार्वजनिक लाभ निगम';

  @override
  String get close => 'बंद करें';

  @override
  String get signOutQuestion => 'साइन आउट करें?';

  @override
  String get signOutConfirm => 'क्या आप वाकई साइन आउट करना चाहते हैं?';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get signedOutSuccessfully => 'सफलतापूर्वक साइन आउट किया गया';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get capabilityWellnessCheck => 'कल्याण जांच';

  @override
  String get capabilityQuitCompanion => 'छोड़ने का साथी';

  @override
  String get capabilityActiveBystander => 'सक्रिय दर्शक';

  @override
  String get translationTier1Label => 'उच्च विश्वास AI अनुवाद';

  @override
  String get translationTier2Label => 'अच्छा विश्वास AI अनुवाद';

  @override
  String get translationTier3Label => 'मध्यम-विश्वास AI अनुवाद';

  @override
  String get translationTier4Label => 'निम्न विश्वास AI अनुवाद';

  @override
  String get translationTier1Notice =>
      'यह अनुवाद उच्च विश्वास के साथ AI-जनित किया गया था। उत्पादन उपयोग के लिए पेशेवर समीक्षा की सिफारिश की जाती है।';

  @override
  String get translationTier2Notice =>
      'यह अनुवाद अच्छे विश्वास के साथ AI-जनित किया गया था। सुरक्षा-महत्वपूर्ण सहमति और आपातकालीन शब्दावली के लिए पेशेवर समीक्षा की सिफारिश की जाती है।';

  @override
  String get translationTier3Notice =>
      '⚠️ इस अनुवाद को उत्पादन उपयोग से पहले सुरक्षा-महत्वपूर्ण आपातकालीन वाक्यांशों के लिए मानव समीक्षा की आवश्यकता है।';

  @override
  String get translationTier4Notice =>
      '⚠️ यह केवल एक मसौदा अनुवाद है। उत्पादन उपयोग से पहले पेशेवर अनुवाद आवश्यक है।';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get searchLanguagesHint => 'भाषाएँ खोजें';

  @override
  String translationQualityLabel(String quality) {
    return 'अनुवाद गुणवत्ता: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'अनुवाद सुधारने में मदद करें - समस्याओं की रिपोर्ट करें या बेहतर अनुवाद का योगदान दें!';
}
