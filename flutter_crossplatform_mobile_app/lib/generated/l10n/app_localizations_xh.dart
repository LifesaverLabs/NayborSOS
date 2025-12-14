// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Xhosa (`xh`).
class AppLocalizationsXh extends AppLocalizations {
  AppLocalizationsXh([String locale = 'xh']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Abalweli Banamhla Bamadoda NaBafazi';

  @override
  String get signUpToHelp => 'Zibhalise ukuze uncede abamelwane bakho';

  @override
  String get enterPhoneNumber => 'Ngenisa inombolo yakho yefowuni ukuze uqale';

  @override
  String get phoneNumberLabel => 'Inombolo Yefowuni';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Thumela Ikhowudi Yokuqinisekisa';

  @override
  String get enterVerificationCode => 'Ngenisa ikhowudi yokuqinisekisa';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Sithumele ikhowudi ku $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Ikhowudi Yokuqinisekisa';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Qinisekisa kwaye Uqhubeke';

  @override
  String get changePhoneNumber => 'Guqula inombolo yefowuni';

  @override
  String get pleaseEnterPhoneNumber => 'Nceda ungenise inombolo yakho yefowuni';

  @override
  String get pleaseEnterVerificationCode =>
      'Nceda ungenise ikhowudi yokuqinisekisa';

  @override
  String get createProfile => 'Yenza Iprofayile';

  @override
  String get tellUsAboutYourself => 'Sixelele ngawe';

  @override
  String get profileSetupDescription =>
      'Le nkcazelo isinceda ukuba sikudibanise nabamelwane abafuna uncedo';

  @override
  String get addPhotoOptional => 'Yongeza umfanekiso (uyakhetha)';

  @override
  String get fullNameLabel => 'Igama Elipheleleyo *';

  @override
  String get fullNameHint => 'UJohn Smith';

  @override
  String get homeAddressLabel => 'Idilesi Yasekhaya *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper =>
      'Isetyenziselwa ukudibanisa abantu abakufutshane kuphela';

  @override
  String get ageOptionalLabel => 'Ubudala (uyakhetha)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Abantu abaneminyaka engama-70 nangaphezulu banokumisela iiyure zesixhobo esithambileyo';

  @override
  String get yourPrivacyMatters => 'Ubumfihlo bakho bubalulekile';

  @override
  String get privacyNotice =>
      'Indawo yakho ibuzelwa kuphela ngexesha leengxaki ezisebenzayo kwaye ayizange igcinwe ixesha elide.';

  @override
  String get continueButton => 'Qhubeka';

  @override
  String get pleaseFillRequiredFields =>
      'Nceda uzalise zonke iindawo ezifunekayo';

  @override
  String get home => 'Ekhaya';

  @override
  String get alerts => 'Izilumkiso';

  @override
  String get profile => 'Iprofayile';

  @override
  String get availableToRespond => 'Uyafumaneka Ukuphendula';

  @override
  String get notAvailable => 'Awufumaneki';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Uya kufumana izilumkiso zongxamiseko ezikufuphi';

  @override
  String get toggleOnWhenReady => 'Vula xa ukulungele ukunceda';

  @override
  String get youreNowAvailable => 'Ngoku uyafumaneka ukuphendula';

  @override
  String get youWontReceiveAlerts => 'Awuyi kufumana zilumkiso';

  @override
  String get lifeThreatening247Info =>
      'Izilumkiso ezisongela ubomi ziya kukwazisa 24/7. Izilumkiso ezingangxamisekanga ziyayihlonipha ishedyuli yakho.';

  @override
  String get requestHelp => 'CELA UNCEDO';

  @override
  String get yourImpact => 'Impembelelo Yakho';

  @override
  String get responses => 'Iimpendulo';

  @override
  String get avgTime => 'Ixesha Eliqhelekileyo';

  @override
  String get yourCapabilities => 'Izakhono Zakho';

  @override
  String get edit => 'Hlela';

  @override
  String get communityNetwork => 'Inethiweki Yoluntu';

  @override
  String get nearbyResponders => 'Abaphenduli Abakufuphi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count bayafumaneka';
  }

  @override
  String get coverageRadius => 'Umjikelo Wesigqubuthelo';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance iimayli';
  }

  @override
  String get activeAlerts => 'Izilumkiso Ezisebenzayo';

  @override
  String get none => 'Akukho nanye';

  @override
  String get yourLocation => 'Indawo Yakho';

  @override
  String get whatDoYouNeedHelpWith => 'Ufuna uncedo nantoni na?';

  @override
  String get additionalDetailsOptional =>
      'Iinkcukacha Ezongezelelekileyo (uyakhetha)';

  @override
  String get describeSituation => 'Chaza imeko...';

  @override
  String get alertTrustedRespondersFirst =>
      'Lumkisa abaphenduli bam abathembekileyo kuqala';

  @override
  String get trustedRespondersDescription =>
      'Abahlobo bakho/usapho abakhethiweyo baya kwaziswa ngaphambi koluntu jikelele';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ukuthumela isilumkiso: $emergencyType';
  }

  @override
  String get sendAlertNow => 'THUMELA ISILUMKISO NGOKU';

  @override
  String get pleaseSelectEmergencyType => 'Nceda ukhethe uhlobo longxamiseko';

  @override
  String get categoryLifeThreatening => '🔴 Okusongela Ubomi';

  @override
  String get categorySecuritySafety => '🟠 Ukhuseleko/Ukhuseleko';

  @override
  String get categoryUrgentTimeSensitive =>
      '🟡 Ongxamisekileyo Oxhomekeke Kwixesha';

  @override
  String get categoryNonLifeThreatening => '🟢 Okungasongeli Ubomi';

  @override
  String get emergencyCprCardiacName => 'I-CPR / Ukuma Kwentliziyo';

  @override
  String get emergencyCprCardiacDesc => 'Umntu akaphenduli kwaye akaphefumli';

  @override
  String get emergencyAedName => 'Ukuhanjiswa kwe-AED';

  @override
  String get emergencyAedDesc => 'Ndifuna i-AED ngokukhawuleza';

  @override
  String get emergencyOverdoseName => 'I-Overdose / I-Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Kukrokrelwa ukudlulisela iziyobisi, kufuneka i-naloxone';

  @override
  String get emergencyChokingName => 'Ukuminyanisa / I-Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Umntu uyaminyanisa kwaye akakwazi ukuphefumla';

  @override
  String get emergencyFireName => 'Umlilo / Ukufuduka';

  @override
  String get emergencyFireDesc =>
      'Ungxamiseko lomlilo, kufuneka uncedo lokufuduka';

  @override
  String get emergencyConsentName => 'Ungxamiseko Lwemvume Yegumbi Lokulala';

  @override
  String get emergencyConsentDesc =>
      'Igama elikhuselekileyo libizwe, kufuneka ingqina';

  @override
  String get emergencyBystanderName => 'Ingqina Esebenzayo Yombukeli';

  @override
  String get emergencyBystanderDesc =>
      'Kufuneka ubukho ukunciphisa ungquzulwano';

  @override
  String get emergencyMissingPetName => 'Isilwanyana Sasekhaya Esilahlekileyo';

  @override
  String get emergencyMissingPetDesc =>
      'Isilwanyana sasekhaya silahlekile okanye sibalekile, kufuneka iqela lokukhangela';

  @override
  String get emergencyWellnessCheckName => 'Uhlolo Lwempilo';

  @override
  String get emergencyWellnessCheckDesc => 'Hlola umntu onokufuna uncedo';

  @override
  String get emergencyQuitCompanionName => 'Umlingane Wokuyeka';

  @override
  String get emergencyQuitCompanionDesc => 'Ndilwa nomnqweno, ndifuna inkxaso';

  @override
  String get emergencyCompanionshipName => 'Ubuhlobo';

  @override
  String get emergencyCompanionshipDesc => 'Ndiziva ndiyelele okanye ndodwa';

  @override
  String get emergency911CoordinationName => 'Ukulungelelanisa i-911';

  @override
  String get emergency911CoordinationDesc =>
      'Ndifuna uncedo lokufowunela nokulungelelanisa i-911';

  @override
  String get equipmentAed => 'I-AED';

  @override
  String get equipmentNaloxone => 'I-Naloxone/Narcan';

  @override
  String get myCapabilities => 'Izakhono Zam';

  @override
  String capabilitiesSelected(int count) {
    return '$count zikhethiwe';
  }

  @override
  String get alertSchedule => 'Ishedyuli Yesixhobo';

  @override
  String get setAvailabilityHours => 'Misela iiyure zakho zokufumaneka';

  @override
  String get trustedResponders => 'Abaphenduli Abathembekileyo';

  @override
  String get responseHistory => 'Imbali Yempendulo';

  @override
  String get privacyAndSafety => 'Ubumfihlo Nokhuseleko';

  @override
  String get helpAndSupport => 'Uncedo Nenkxaso';

  @override
  String get aboutNayborSos => 'Malunga ne-Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Imiqathango Nomgaqo-nkqubo Wabucala';

  @override
  String get signOut => 'Phuma';

  @override
  String version(String version) {
    return 'Inguqulelo $version';
  }

  @override
  String get aboutDialogContent =>
      'I-Naybor SOS idibanisa abamelwane kwiingxaki, idala inethiweki yabaphenduli abakhawulezayo abanokubonelela ngoncedo olubalulekileyo ngaphambi kokuba abaphenduli bokuqala bezobugcisa bafike.';

  @override
  String get aboutDialogContent2 =>
      'Wonke umntu angaba yiqhawe. Akufuneki uqeqesho olukhethekileyo ukusindisa ubomi. Ngamanye amaxesha olona ncediso lunamandla kukubonakala nje.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Vala';

  @override
  String get signOutQuestion => 'Phuma?';

  @override
  String get signOutConfirm => 'Uqinisekile ukuba ufuna ukuphuma?';

  @override
  String get cancel => 'Rhoxisa';

  @override
  String get signedOutSuccessfully => 'Uphumile ngempumelelo';

  @override
  String get settings => 'Izicwangciso';

  @override
  String get capabilityWellnessCheck => 'Uhlolo Lwempilo';

  @override
  String get capabilityQuitCompanion => 'Umlingane Wokuyeka';

  @override
  String get capabilityActiveBystander => 'Umbukeli Osebenzayo';

  @override
  String get translationTier1Label => 'Uguqulelo lwe-AI Olunethemba Eliphezulu';

  @override
  String get translationTier2Label => 'Uguqulelo lwe-AI Olunethemba Elihle';

  @override
  String get translationTier3Label =>
      'Uguqulelo lwe-AI Olunethemba Eliphakathi';

  @override
  String get translationTier4Label => 'Uguqulelo lwe-AI Olunethemba Eliphantsi';

  @override
  String get translationTier1Notice =>
      'Olu guqulelo luveliswe yi-AI ngenethemba eliphezulu. Kucetyiswa ukuphononongwa kochwepheshe kokusetyenziswa kwemveliso.';

  @override
  String get translationTier2Notice =>
      'Olu guqulelo luveliswe yi-AI ngenethemba elihle. Kucetyiswa ukuphononongwa kochwepheshe kwimvume ebalulekileyo yokhuseleko kunye nobugcisa bongxamiseko.';

  @override
  String get translationTier3Notice =>
      '⚠️ Olu guqulelo lufuna ukuphononongwa komntu kumabinzana abalulekileyo ongxamiseko phambi kokusetyenziswa kwemveliso.';

  @override
  String get translationTier4Notice =>
      '⚠️ Olu luguqulelo lwedrafti kuphela. Kucetyiswa uguqulelo lochwepheshe ngaphambi kokusetyenziswa kwemveliso.';

  @override
  String get selectLanguage => 'Khetha Ulwimi';

  @override
  String get searchLanguagesHint => 'Khangela iilwimi';

  @override
  String translationQualityLabel(String quality) {
    return 'Umgangatho Woguqulelo: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Nceda uphuhlise uguqulelo - xela iingxaki okanye ufake uguqulelo olungcono!';
}
