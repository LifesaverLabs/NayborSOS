// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Somali (`so`).
class AppLocalizationsSo extends AppLocalizations {
  AppLocalizationsSo([String locale = 'so']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Dadaalayaasha Casriga ah ee Maanta';

  @override
  String get signUpToHelp => 'Isdiiwaangeli si aad u caawiso deriskayga';

  @override
  String get enterPhoneNumber => 'Geli lambarkaga taleefanka si aad u bilowdo';

  @override
  String get phoneNumberLabel => 'Lambarka Taleefanka';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Dir Koodka Xaqiijinta';

  @override
  String get enterVerificationCode => 'Geli koodka xaqiijinta';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Waxaan u dirnay kood $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Koodka Xaqiijinta';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Xaqiiji oo Sii socoda';

  @override
  String get changePhoneNumber => 'Beddel lambarka taleefanka';

  @override
  String get pleaseEnterPhoneNumber => 'Fadlan geli lambarkaga taleefanka';

  @override
  String get pleaseEnterVerificationCode => 'Fadlan geli koodka xaqiijinta';

  @override
  String get createProfile => 'Samee Profile';

  @override
  String get tellUsAboutYourself => 'Noo sheeg naftaada';

  @override
  String get profileSetupDescription =>
      'Macluumaadkani wuxuu naga caawiyaa inaan ku xirno deriska u baahan cawimaadda';

  @override
  String get addPhotoOptional => 'Ku dar sawir (ikhtiyaari)';

  @override
  String get fullNameLabel => 'Magaca Buuxa *';

  @override
  String get fullNameHint => 'Maxamed Cali';

  @override
  String get homeAddressLabel => 'Cinwaanka Guriga *';

  @override
  String get homeAddressHint => '123 Wadada Weyn, Qol 4B';

  @override
  String get homeAddressHelper => 'Loo isticmaalaa kaliya is-dhowaan';

  @override
  String get ageOptionalLabel => 'Da\'da (ikhtiyaari)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Da\'da 70+ waxay dejin karaan saacado digniin khafiif ah';

  @override
  String get yourPrivacyMatters => 'Sirraadaadu way muhiimsan tahay';

  @override
  String get privacyNotice =>
      'Booska goobeedkaaga kaliya waa la weydiin karaa inta lagu jiro xaaladaha degdegga ah ee firfircoon kana ah inuusan weligii si dheer loo kaydsan.';

  @override
  String get continueButton => 'Sii socoda';

  @override
  String get pleaseFillRequiredFields =>
      'Fadlan buuxi dhammaan goobaheeda loo baahan yahay';

  @override
  String get home => 'Guriga';

  @override
  String get alerts => 'Digniinad';

  @override
  String get profile => 'Profile';

  @override
  String get availableToRespond => 'La heli karo si loo jawaabo';

  @override
  String get notAvailable => 'Lama heli karo';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Waxaad heli doontaa digniinada degdegga ah ee u dhow';

  @override
  String get toggleOnWhenReady => 'Fur marka aad diyaar u tahay inaad caawiso';

  @override
  String get youreNowAvailable => 'Hadda waa la heli karaa inaad jawaabto';

  @override
  String get youWontReceiveAlerts => 'Ma heli doonto digniinad';

  @override
  String get lifeThreatening247Info =>
      'Digniinada nolol-halis ah ayaa ku ogeysiinaya 24/7. Digniinada aan degdegga ahayn waxay ixtiraamaan jadwalkaaga.';

  @override
  String get requestHelp => 'CODSO CAAWIMAAD';

  @override
  String get yourImpact => 'Saamayntaada';

  @override
  String get responses => 'Jawaabaha';

  @override
  String get avgTime => 'Waqti Celceliska ah';

  @override
  String get yourCapabilities => 'Awoodahaaga';

  @override
  String get edit => 'Wax ka bedel';

  @override
  String get communityNetwork => 'Shabakada Bulshada';

  @override
  String get nearbyResponders => 'Kuwa Jawaabta ee u dhow';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count la heli karo';
  }

  @override
  String get coverageRadius => 'Baaxadda Daboolka';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mayl';
  }

  @override
  String get activeAlerts => 'Digniinada Firfircoon';

  @override
  String get none => 'Ma jiro';

  @override
  String get yourLocation => 'Meesha aad joogto';

  @override
  String get whatDoYouNeedHelpWith => 'Maxaad u baahan tahay caawimaad?';

  @override
  String get additionalDetailsOptional => 'Faahfaahin dheeraad ah (ikhtiyaari)';

  @override
  String get describeSituation => 'Sharax xaaladdaada...';

  @override
  String get alertTrustedRespondersFirst =>
      'Marka hore u dignii kuwa aan ku kalsoonahay';

  @override
  String get trustedRespondersDescription =>
      'Asxaabtaada/qoyskaga la doortay ayaa la ogeysiini doonaa ka hor bulshada guud';

  @override
  String sendingAlert(String emergencyType) {
    return 'Diraya digniin: $emergencyType';
  }

  @override
  String get sendAlertNow => 'DIR DIGNIINKA HADDA';

  @override
  String get pleaseSelectEmergencyType => 'Fadlan dooro nooca degdegga ah';

  @override
  String get categoryLifeThreatening => '🔴 Nolol-Halis ah';

  @override
  String get categorySecuritySafety => '🟠 Ammaanka/Badbaadada';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Degdeg Waqti-Xasaasi ah';

  @override
  String get categoryNonLifeThreatening => '🟢 Aan Nolol-halis ahayn';

  @override
  String get emergencyCprCardiacName => 'CPR / Taabashada Wadnaha';

  @override
  String get emergencyCprCardiacDesc =>
      'Qofku wuu ka jawaabi waayay mana neefsanayo';

  @override
  String get emergencyAedName => 'Keenista AED';

  @override
  String get emergencyAedDesc => 'Waxaan u baahanahay AED isla markiiba';

  @override
  String get emergencyOverdoseName => 'Daroogada badan / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Lagu shakiyey daroogada badnaanta ah, u baahan naloxone';

  @override
  String get emergencyChokingName => 'Ceejinta / Heimlich';

  @override
  String get emergencyChokingDesc => 'Qofku wuu ceejinayaa mana neefsani karo';

  @override
  String get emergencyFireName => 'Dab / Barakaca';

  @override
  String get emergencyFireDesc =>
      'Dab degdeg ah, u baahan caawimaadda barakaca';

  @override
  String get emergencyConsentName => 'Degdegga Oggolaashan ee Qolka Hurdada';

  @override
  String get emergencyConsentDesc =>
      'Erayga badbaadada la yiri, u baahan markhaati';

  @override
  String get emergencyBystanderName => 'Markhaatiga Dadaalka Firfircoon';

  @override
  String get emergencyBystanderDesc =>
      'U baahan joogitaan si loola dego khilaafka';

  @override
  String get emergencyMissingPetName => 'Xayawaanka Lumay';

  @override
  String get emergencyMissingPetDesc =>
      'Xayawaankii wuu lumay ama wuu cararay, u baahan koox raadis ah';

  @override
  String get emergencyWellnessCheckName => 'Hubinta Caafimaadka';

  @override
  String get emergencyWellnessCheckDesc =>
      'Hubi qof laga yaabo inuu u baahan yahay caawimaad';

  @override
  String get emergencyQuitCompanionName => 'Saaxiibka Joojinta';

  @override
  String get emergencyQuitCompanionDesc =>
      'La dagaalamaaya dareenka, u baahan taageero';

  @override
  String get emergencyCompanionshipName => 'Suxbaannimo';

  @override
  String get emergencyCompanionshipDesc => 'Dareemaaya cidla ama go\'doomin';

  @override
  String get emergency911CoordinationName => 'Isku-dubbaridka 911';

  @override
  String get emergency911CoordinationDesc =>
      'U baahan caawimaad wicitaanka iyo isku-dubaridka 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Awoodayda';

  @override
  String capabilitiesSelected(int count) {
    return '$count la doortay';
  }

  @override
  String get alertSchedule => 'Jadwalka Digniinada';

  @override
  String get setAvailabilityHours => 'Deji saacadaha aad heli karto';

  @override
  String get trustedResponders => 'Kuwa Jawaabta ee Lagu Kalsoonaayay';

  @override
  String get responseHistory => 'Taariikhda Jawaabaha';

  @override
  String get privacyAndSafety => 'Sirraadada iyo Badbaadada';

  @override
  String get helpAndSupport => 'Caawimaadda iyo Taageerada';

  @override
  String get aboutNayborSos => 'Ku saabsan Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Shuruudaha iyo Siyaasadda Sirraadada';

  @override
  String get signOut => 'Ka Bax';

  @override
  String version(String version) {
    return 'Nuska $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS waxay isku xirtaa deriska xaaladaha degdegga ah, abuurta shabakad kuwa jawaabta oo degdeg ah oo bixin kara caawimaad muhiim ah ka hor inta aysan iman kuwa khibradda leh ee jawaabta koowaad.';

  @override
  String get aboutDialogContent2 =>
      'Qof kastaa wuxuu noqon karaa nin geesi ah. Uma baahnid tababar gaar ah si aad naf u badbaadiso. Mararka qaarkood faragelinta ugu xoogga badan waa in kaliya la soo muuqdo.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Shirkadda Faa\'iidada Dadweynaha';

  @override
  String get close => 'Xir';

  @override
  String get signOutQuestion => 'Ka bax?';

  @override
  String get signOutConfirm => 'Ma hubtaa inaad doonayso inaad ka baxdo?';

  @override
  String get cancel => 'Jooji';

  @override
  String get signedOutSuccessfully => 'Si guul leh ayaa looga baxay';

  @override
  String get settings => 'Dejinta';

  @override
  String get capabilityWellnessCheck => 'Hubinta Caafimaadka';

  @override
  String get capabilityQuitCompanion => 'Saaxiibka Joojinta';

  @override
  String get capabilityActiveBystander => 'Dadaalka Firfircoon';

  @override
  String get translationTier1Label => 'Turjumaadda AI ee Kalsoonida Sare';

  @override
  String get translationTier2Label => 'Turjumaadda AI ee Kalsoonida Wanaagsan';

  @override
  String get translationTier3Label => 'Turjumaadda AI ee Kalsoonida Dhexe';

  @override
  String get translationTier4Label => 'Turjumaadda AI ee Kalsoonida Hoose';

  @override
  String get translationTier1Notice =>
      'Turjumaaddani waxaa sameeyay AI kalsoonida sare leh. Dib-u-eegis xirfadlayaal ah ayaa loogu talagalay isticmaalka wax-soo-saarka.';

  @override
  String get translationTier2Notice =>
      'Turjumaaddani waxaa sameeyay AI kalsoonida wanaagsan leh. Dib-u-eegis xirfadlayaal ah ayaa loogu talagalay ereyada badbaadada-muhiimka ah ee oggolaashan iyo degdegga ah.';

  @override
  String get translationTier3Notice =>
      '⚠️ Turjumaaddani waxay u baahan tahay dib-u-eegis aadamaha ah ereyada degdegga ah ee badbaadada-muhiimka ah ka hor isticmaalka wax-soo-saarka.';

  @override
  String get translationTier4Notice =>
      '⚠️ Kani waa qoraal turjumaad oo kaliya. Turjumaad xirfadeed ayaa loo baahan yahay ka hor isticmaalka wax-soo-saarka.';

  @override
  String get selectLanguage => 'Dooro Luqadda';

  @override
  String get searchLanguagesHint => 'Raadi luqadaha';

  @override
  String translationQualityLabel(String quality) {
    return 'Tayada Turjumaadda: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Caawi hagaajinta turjumaadaha - soo sheeg arrimo ama ku biir turjumaado ka fiican!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
