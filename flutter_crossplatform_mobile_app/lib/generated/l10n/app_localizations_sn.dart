// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Shona (`sn`).
class AppLocalizationsSn extends AppLocalizations {
  AppLocalizationsSn([String locale = 'sn']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Varwi veZviitiko Zvemazuva ano';

  @override
  String get signUpToHelp => 'Nyoresa kuti ubatsire vavakidzani vako';

  @override
  String get enterPhoneNumber => 'Isa nhamba yako yefoni kuti utange';

  @override
  String get phoneNumberLabel => 'Nhamba Yefoni';

  @override
  String get phoneNumberHint => '(263) 712-345-678';

  @override
  String get sendVerificationCode => 'Tumira Kodhi Yekusimbisa';

  @override
  String get enterVerificationCode => 'Isa kodhi yekusimbisa';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Takatumira kodhi ku $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kodhi Yekusimbisa';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Simbisa & Enderera Mberi';

  @override
  String get changePhoneNumber => 'Shandura nhamba yefoni';

  @override
  String get pleaseEnterPhoneNumber => 'Ndapota isa nhamba yako yefoni';

  @override
  String get pleaseEnterVerificationCode => 'Ndapota isa kodhi yekusimbisa';

  @override
  String get createProfile => 'Gadzira Profairo';

  @override
  String get tellUsAboutYourself => 'Tiudze nezvewe';

  @override
  String get profileSetupDescription =>
      'Ruzivo urwu runotibaatsira kukubatanidza nevavakidzani vanoda rubatsiro';

  @override
  String get addPhotoOptional => 'Isa mufananidzo (kusarudza)';

  @override
  String get fullNameLabel => 'Zita Rizere *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Kero Yepamba *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'Inoshandiswa pakuyerera pedyo chete';

  @override
  String get ageOptionalLabel => 'Zera (kusarudza)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Mazera 70+ anogona kuisa nguva dzeyambiro nyoro';

  @override
  String get yourPrivacyMatters => 'Chakafukidza chako chakakosha';

  @override
  String get privacyNotice =>
      'Nzvimbo yako inobvunzwa chete panguva dzenjodzi dzinoita uye haiina kuchengetwa kwenguva refu.';

  @override
  String get continueButton => 'Enderera Mberi';

  @override
  String get pleaseFillRequiredFields => 'Ndapota zadza zvinhu zvose zvinodiwa';

  @override
  String get home => 'Musha';

  @override
  String get alerts => 'Yambiro';

  @override
  String get profile => 'Profairo';

  @override
  String get availableToRespond => 'Irippo Kupindura';

  @override
  String get notAvailable => 'Haisipo';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Uchagamuchira yambiro dzenjodzi pedyo newe';

  @override
  String get toggleOnWhenReady => 'Batisa kana wagadzirira kubatsira';

  @override
  String get youreNowAvailable => 'Ikozvino wakagarirwa kupindura';

  @override
  String get youWontReceiveAlerts => 'Hauzogamuchiri yambiro';

  @override
  String get lifeThreatening247Info =>
      'Yambiro dzinouraya dzichakuyambira zuva nezuva. Yambiro dzisina kukurumidzwa dzinochengetedza hurongwa hwako.';

  @override
  String get requestHelp => 'KUMBIRA RUBATSIRO';

  @override
  String get yourImpact => 'Mabatiro ako';

  @override
  String get responses => 'Mhinduro';

  @override
  String get avgTime => 'Nguva Yepakati';

  @override
  String get yourCapabilities => 'Unyanzvi hwako';

  @override
  String get edit => 'Rongorera';

  @override
  String get communityNetwork => 'Network yeNharaunda';

  @override
  String get nearbyResponders => 'Vapinduri Vari Pedyo';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count varipo';
  }

  @override
  String get coverageRadius => 'Hukuru Hwekufukidza';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mamaira';
  }

  @override
  String get activeAlerts => 'Yambiro Dzinoshanda';

  @override
  String get none => 'Hakuna';

  @override
  String get yourLocation => 'Nzvimbo Yako';

  @override
  String get whatDoYouNeedHelpWith => 'Chii chaunoda rubatsiro nacho?';

  @override
  String get additionalDetailsOptional => 'Mamwe Marondedzero (kusarudza)';

  @override
  String get describeSituation => 'Tsanangura mamiriro ezvinhu...';

  @override
  String get alertTrustedRespondersFirst =>
      'Yambira vapinduri vangu vanovimbika kutanga';

  @override
  String get trustedRespondersDescription =>
      'Shamwari/mhuri yako yakasarudzwa ichaziviswa nharaunda isati yaziviswa';

  @override
  String sendingAlert(String emergencyType) {
    return 'Kutumira yambiro: $emergencyType';
  }

  @override
  String get sendAlertNow => 'TUMIRA YAMBIRO IZVOZVI';

  @override
  String get pleaseSelectEmergencyType => 'Ndapota sarudza rudzi rwenjodzi';

  @override
  String get categoryLifeThreatening => '🔴 Inouraya';

  @override
  String get categorySecuritySafety => '🟠 Chengetedzo/Kuchengeteka';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Inokurumidza-Nguva Yakakosha';

  @override
  String get categoryNonLifeThreatening => '🟢 Isingauraye';

  @override
  String get emergencyCprCardiacName => 'CPR / Moyo Wakamira';

  @override
  String get emergencyCprCardiacDesc => 'Munhu haapindure uye haafemere';

  @override
  String get emergencyAedName => 'Kuendeswa kweAED';

  @override
  String get emergencyAedDesc => 'Ndinoda AED nekukurumidza';

  @override
  String get emergencyOverdoseName => 'Kudya Zvakawandisa / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Inofungidzirwa kunge kudya zvinodhaka zvakawandisa, noda naloxone';

  @override
  String get emergencyChokingName => 'Kudzivira / Heimlich';

  @override
  String get emergencyChokingDesc => 'Munhu ari kudzivira uye haagoni kufemera';

  @override
  String get emergencyFireName => 'Moto / Kutiza';

  @override
  String get emergencyFireDesc => 'Njodzi yemoto, noda rubatsiro rwokutiza';

  @override
  String get emergencyConsentName => 'Njodzi Yekubvumirana muImba Yekurara';

  @override
  String get emergencyConsentDesc =>
      'Shoko rekuchengetedza rakanzi, noda chapupu';

  @override
  String get emergencyBystanderName => 'Chapupu Chinobatsira';

  @override
  String get emergencyBystanderDesc => 'Noda kuvapo kudzikisa kurwisana';

  @override
  String get emergencyMissingPetName => 'Mhuka Yakarasika';

  @override
  String get emergencyMissingPetDesc =>
      'Mhuka yakarasika kana kutiza, noda bato rekutsvaga';

  @override
  String get emergencyWellnessCheckName => 'Kutarisa Hutano';

  @override
  String get emergencyWellnessCheckDesc =>
      'Ona mumwe munhu angangoda rubatsiro';

  @override
  String get emergencyQuitCompanionName => 'Shamwari Yekurega';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ndiri kurwisa chishuwo, noda rutsigiro';

  @override
  String get emergencyCompanionshipName => 'Uwama';

  @override
  String get emergencyCompanionshipDesc =>
      'Ndiri kunzwa ndega kana kwakaparadzanisa';

  @override
  String get emergency911CoordinationName => 'Kubatanidza Rubatsiro Rwenjodzi';

  @override
  String get emergency911CoordinationDesc =>
      'Noda rubatsiro rwekufona nekubatanidza rubatsiro rwenjodzi';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Unyanzvi Hwangu';

  @override
  String capabilitiesSelected(int count) {
    return '$count yakasarudzwa';
  }

  @override
  String get alertSchedule => 'Hurongwa Hwyambiro';

  @override
  String get setAvailabilityHours => 'Isa maawa ekuwanikwa kwako';

  @override
  String get trustedResponders => 'Vapinduri Vanovimbika';

  @override
  String get responseHistory => 'Nhoroondo Yemhinduro';

  @override
  String get privacyAndSafety => 'Chakafukidza & Kuchengeteka';

  @override
  String get helpAndSupport => 'Rubatsiro & Rutsigiro';

  @override
  String get aboutNayborSos => 'Nezve Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Mitemo & Mutemo Wechakafukidza';

  @override
  String get signOut => 'Buda';

  @override
  String version(String version) {
    return 'Shanduro $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS inobatanidza vavakidzani munjodzi, ichigadzira network yevapinduri vanokurumidza vanogona kupa rubatsiro rwakakosha vasati vasvika vapinduri vepabasa.';

  @override
  String get aboutDialogContent2 =>
      'Munhu wese anogona kuve gamba. Haudi kudzidziswa kwakakosha kuponesa hupenyu. Dzimwe nguva kupindira kwakasimba kwuri kunongouya chete.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Vhara';

  @override
  String get signOutQuestion => 'Buda?';

  @override
  String get signOutConfirm => 'Wakatenda here kuti unoda kubuda?';

  @override
  String get cancel => 'Kanzura';

  @override
  String get signedOutSuccessfully => 'Wabuda nebudiriro';

  @override
  String get settings => 'Magadzirirwo';

  @override
  String get capabilityWellnessCheck => 'Kutarisa Hutano';

  @override
  String get capabilityQuitCompanion => 'Shamwari Yekurega';

  @override
  String get capabilityActiveBystander => 'Chapupu Chinobatsira';

  @override
  String get translationTier1Label => 'Shanduro ye AI Ine Chivimbo Chakakwira';

  @override
  String get translationTier2Label => 'Shanduro ye AI Ine Chivimbo Chakanaka';

  @override
  String get translationTier3Label => 'Shanduro ye AI Ine Chivimbo Chepakati';

  @override
  String get translationTier4Label => 'Shanduro ye AI Ine Chivimbo Chakaderera';

  @override
  String get translationTier1Notice =>
      'Shanduro iyi yakagadzirwa ne AI ine chivimbo chakakwira. Kuongororwa kwehunyanzvi kunokurudzirwa pakushandisa mukugadzira.';

  @override
  String get translationTier2Notice =>
      'Shanduro iyi yakagadzirwa ne AI ine chivimbo chakanaka. Kuongororwa kwehunyanzvi kunokurudzirwa pamazwi ekuchengeteka akakosha ekubvumirana neenjodzi.';

  @override
  String get translationTier3Notice =>
      '⚠️ Shanduro iyi inoda kuongororwa kwevanhu pamashoko eenjodzi akakosha ekuchengeteka asati ashandiswa mukugadzira.';

  @override
  String get translationTier4Notice =>
      '⚠️ Iyi ishanduro yedhirafti chete. Shanduro yehunyanzvi inodiwa isati yashandiswa mukugadzira.';

  @override
  String get selectLanguage => 'Sarudza Mutauro';

  @override
  String get searchLanguagesHint => 'Tsvaga mitauro';

  @override
  String translationQualityLabel(String quality) {
    return 'Hunhu Hweshanduro: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Batsira kuvandudza zvakashandurwa - shuma matambudziko kana kupa zvakashandurwa zviri nani!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
