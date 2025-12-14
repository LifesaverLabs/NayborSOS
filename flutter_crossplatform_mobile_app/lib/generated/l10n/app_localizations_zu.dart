// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Zulu (`zu`).
class AppLocalizationsZu extends AppLocalizations {
  AppLocalizationsZu([String locale = 'zu']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Amabutho Esimanje eLinani';

  @override
  String get signUpToHelp => 'Bhalisa ukuze usize omakhelwane bakho';

  @override
  String get enterPhoneNumber => 'Faka inombolo yakho yocingo ukuze uqale';

  @override
  String get phoneNumberLabel => 'Inombolo Yocingo';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Thumela Ikhodi Yokuqinisekisa';

  @override
  String get enterVerificationCode => 'Faka ikhodi yokuqinisekisa';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Sithumele ikhodi ku-$phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Ikhodi Yokuqinisekisa';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Qinisekisa bese Uqhubeka';

  @override
  String get changePhoneNumber => 'Shintsha inombolo yocingo';

  @override
  String get pleaseEnterPhoneNumber => 'Sicela ufake inombolo yakho yocingo';

  @override
  String get pleaseEnterVerificationCode =>
      'Sicela ufake ikhodi yokuqinisekisa';

  @override
  String get createProfile => 'Dala Iphrofayela';

  @override
  String get tellUsAboutYourself => 'Sitshele ngawe';

  @override
  String get profileSetupDescription =>
      'Lolu lwazi lusisiza ukuthi sikuxhumanise nomakhelwane abadinga usizo';

  @override
  String get addPhotoOptional => 'Engeza isithombe (okukhethekayo)';

  @override
  String get fullNameLabel => 'Igama Eliphelele *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Ikheli Lasekhaya *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper =>
      'Kusetshenziswa ukufanisa ukusondelana kuphela';

  @override
  String get ageOptionalLabel => 'Iminyaka (okukhethekayo)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Abantu abangaphezu kweminyaka engama-70 bangakwazi ukumisa amahora alula okuxwayisa';

  @override
  String get yourPrivacyMatters => 'Ubumfihlo bakho bubalulekile';

  @override
  String get privacyNotice =>
      'Indawo yakho ibuzwa kuphela ngesikhathi sezimo eziphuthumayo ezisebenzayo futhi ayigcinwa isikhathi eside.';

  @override
  String get continueButton => 'Qhubeka';

  @override
  String get pleaseFillRequiredFields =>
      'Sicela ugcwalise wonke amakhasi adingekayo';

  @override
  String get home => 'Ikhaya';

  @override
  String get alerts => 'Izexwayiso';

  @override
  String get profile => 'Iphrofayela';

  @override
  String get availableToRespond => 'Uyatholakala Ukuphendula';

  @override
  String get notAvailable => 'Awutholakali';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Uzothola izexwayiso zezimo eziphuthumayo eduze';

  @override
  String get toggleOnWhenReady => 'Vula uma usukulungele ukusiza';

  @override
  String get youreNowAvailable => 'Manje uyatholakala ukuphendula';

  @override
  String get youWontReceiveAlerts => 'Ngeke uthole izexwayiso';

  @override
  String get lifeThreatening247Info =>
      'Izexwayiso eziphakamisa impilo zizokwazisa amahora angama-24/7. Izexwayiso ezingaphuthumi zihlonipha isimiso sakho.';

  @override
  String get requestHelp => 'CELA USIZO';

  @override
  String get yourImpact => 'Umthelela Wakho';

  @override
  String get responses => 'Izimpendulo';

  @override
  String get avgTime => 'Isikhathi Esijwayelekile';

  @override
  String get yourCapabilities => 'Amakhono Akho';

  @override
  String get edit => 'Hlela';

  @override
  String get communityNetwork => 'Inethiwekhi Yomphakathi';

  @override
  String get nearbyResponders => 'Abaphenduli Abaseduze';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count batholakala';
  }

  @override
  String get coverageRadius => 'Umjikelezo Wokumboza';

  @override
  String coverageRadiusValue(String distance) {
    return 'amamayela angu-$distance';
  }

  @override
  String get activeAlerts => 'Izexwayiso Ezisebenzayo';

  @override
  String get none => 'Akukho';

  @override
  String get yourLocation => 'Indawo Yakho';

  @override
  String get whatDoYouNeedHelpWith => 'Udinga usizo ngani?';

  @override
  String get additionalDetailsOptional =>
      'Imininingwane Eyengeziwe (okukhethekayo)';

  @override
  String get describeSituation => 'Chaza isimo...';

  @override
  String get alertTrustedRespondersFirst =>
      'Xwayisa abaphenduli bami abathembekile kuqala';

  @override
  String get trustedRespondersDescription =>
      'Abangane bakho abakhethiwe/umndeni bazoxwayiswa ngaphambi komphakathi jikelele';

  @override
  String sendingAlert(String emergencyType) {
    return 'Kuthunyelelwa isexwayiso: $emergencyType';
  }

  @override
  String get sendAlertNow => 'THUMELA ISEXWAYISO MANJE';

  @override
  String get pleaseSelectEmergencyType =>
      'Sicela ukhethe uhlobo lwesimo esiphuthumayo';

  @override
  String get categoryLifeThreatening => '🔴 Okuphakamisa Impilo';

  @override
  String get categorySecuritySafety => '🟠 Ukuphepha/Ukuvikeleka';

  @override
  String get categoryUrgentTimeSensitive =>
      '🟡 Okuphuthuma Okubhekene Nesikhathi';

  @override
  String get categoryNonLifeThreatening => '🟢 Okungaphakamisi Impilo';

  @override
  String get emergencyCprCardiacName => 'I-CPR / Ukuma Kwenhliziyo';

  @override
  String get emergencyCprCardiacDesc => 'Umuntu akasabeli futhi akaphefumuli';

  @override
  String get emergencyAedName => 'Ukulethwa kwe-AED';

  @override
  String get emergencyAedDesc => 'Ngidinga i-AED ngokushesha';

  @override
  String get emergencyOverdoseName => 'Ukudlulisa / I-Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Ukudlulisa kwezidakamizwa okusolekayo, ngidinga i-naloxone';

  @override
  String get emergencyChokingName => 'Ukuminyaniswa / I-Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Umuntu uyaminyaniswa futhi akakwazi ukuphefumula';

  @override
  String get emergencyFireName => 'Umlilo / Ukukhishwa';

  @override
  String get emergencyFireDesc =>
      'Isimo esiphuthumayo somlilo, ngidinga usizo lokukhishwa';

  @override
  String get emergencyConsentName =>
      'Isimo Esiphuthumayo Semvume Ekamelweni Lokulala';

  @override
  String get emergencyConsentDesc =>
      'Igama lokuphepha libizwe, ngidinga ufakazi';

  @override
  String get emergencyBystanderName => 'Ufakazi Osebenzayo Omile Eceleni';

  @override
  String get emergencyBystanderDesc =>
      'Ngidinga ukuba khona ukuze kwehliswe ingxabano';

  @override
  String get emergencyMissingPetName => 'Isilwane Esifuywayo Esilahlekile';

  @override
  String get emergencyMissingPetDesc =>
      'Isilwane sifuywayo silahlekile noma sibaleke, ngidinga iqembu lokucinga';

  @override
  String get emergencyWellnessCheckName => 'Ukuhlola Impilo';

  @override
  String get emergencyWellnessCheckDesc => 'Hlola othile ongase adinge usizo';

  @override
  String get emergencyQuitCompanionName => 'Umngane Wokuyeka';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ngilwa nokulangazelela, ngidinga ukwesekwa';

  @override
  String get emergencyCompanionshipName => 'Ubungane';

  @override
  String get emergencyCompanionshipDesc => 'Ngizizwa ngingedwa noma ngohlukene';

  @override
  String get emergency911CoordinationName => 'Ukuhlanganiswa kwe-911';

  @override
  String get emergency911CoordinationDesc =>
      'Ngidinga usizo lokushayela nokuhlanganisa i-911';

  @override
  String get equipmentAed => 'I-AED';

  @override
  String get equipmentNaloxone => 'I-Naloxone/Narcan';

  @override
  String get myCapabilities => 'Amakhono Ami';

  @override
  String capabilitiesSelected(int count) {
    return '$count akhethiwe';
  }

  @override
  String get alertSchedule => 'Isimiso Sezexwayiso';

  @override
  String get setAvailabilityHours => 'Misa amahora akho okutholakala';

  @override
  String get trustedResponders => 'Abaphenduli Abathembekile';

  @override
  String get responseHistory => 'Umlando Wezimpendulo';

  @override
  String get privacyAndSafety => 'Ubumfihlo Nokuphepha';

  @override
  String get helpAndSupport => 'Usizo Nokwesekwa';

  @override
  String get aboutNayborSos => 'Mayelana ne-Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Imigomo Nenqubomgomo Yobumfihlo';

  @override
  String get signOut => 'Phuma';

  @override
  String version(String version) {
    return 'Inguqulo $version';
  }

  @override
  String get aboutDialogContent =>
      'I-Naybor SOS ixhumanisa omakhelwane ezimweni eziphuthumayo, yakha inethiwekhi yabaphenduli abasheshayo abanganikezela usizo olubalulekile ngaphambi kokuthi abaphenduli abaqeqeshiwe bafike.';

  @override
  String get aboutDialogContent2 =>
      'Wonke umuntu angaba yiqhawe. Awudingi ukuqeqeshwa okukhethekayo ukuze usindise impilo. Kwesinye isikhathi ukungenelela okunamandla kakhulu ukuvela nje.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Vala';

  @override
  String get signOutQuestion => 'Phuma?';

  @override
  String get signOutConfirm => 'Uqinisekile ukuthi ufuna ukuphuma?';

  @override
  String get cancel => 'Khansela';

  @override
  String get signedOutSuccessfully => 'Uphumile ngempumelelo';

  @override
  String get settings => 'Izilungiselelo';

  @override
  String get capabilityWellnessCheck => 'Ukuhlola Impilo';

  @override
  String get capabilityQuitCompanion => 'Umngane Wokuyeka';

  @override
  String get capabilityActiveBystander => 'Umile Eceleni Osebenzayo';

  @override
  String get translationTier1Label => 'Ukuhumusha kwe-AI Okukholeleke Kakhulu';

  @override
  String get translationTier2Label => 'Ukuhumusha kwe-AI Okukholeleke Kahle';

  @override
  String get translationTier3Label => 'Ukuhumusha kwe-AI Okukholeleke Kancane';

  @override
  String get translationTier4Label =>
      'Ukuhumusha kwe-AI Okukholeleke Kancane Kakhulu';

  @override
  String get translationTier1Notice =>
      'Lokhu kuhumusha kwenziwe yi-AI ngokuqiniseka okukhulu. Ukubuyekezwa kochwepheshe kuphakanyiselwa ukusetshenziswa kwakho.';

  @override
  String get translationTier2Notice =>
      'Lokhu kuhumusha kwenziwe yi-AI ngokuqiniseka okuhle. Ukubuyekezwa kochwepheshe kuphakanyiselwa amagama okuvuma nokuphepha okubucayi.';

  @override
  String get translationTier3Notice =>
      '⚠️ Lokhu kuhumusha kudinga ukubuyekezwa komuntu emishweni ebucayi yezimo eziphuthumayo ngaphambi kokusetshenziswa.';

  @override
  String get translationTier4Notice =>
      '⚠️ Lona umdwebo wokuhumusha kuphela. Ukuhumusha kochwepheshe kuyadingeka ngaphambi kokusetshenziswa.';

  @override
  String get selectLanguage => 'Khetha Ulimi';

  @override
  String get searchLanguagesHint => 'Sesha izilimi';

  @override
  String translationQualityLabel(String quality) {
    return 'Ikhwalithi Yokuhumusha: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Siza ukuthuthukisa ukuhumusha - bika izinkinga noma nikele ngokuhumusha okungcono!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
