// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ganda Luganda (`lg`).
class AppLocalizationsLg extends AppLocalizations {
  AppLocalizationsLg([String locale = 'lg']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Abasawo b\'Obudde bwa Leero Abasajja n\'Abakazi';

  @override
  String get signUpToHelp => 'Kwegatta okuyamba baliraanwa bo';

  @override
  String get enterPhoneNumber => 'Yingiza ennamba yo ey\'essimu otandike';

  @override
  String get phoneNumberLabel => 'Ennamba y\'Essimu';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Sindika Koodi y\'Okukakasa';

  @override
  String get enterVerificationCode => 'Yingiza koodi y\'okukakasa';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Twatumye koodi ku $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Koodi y\'Okukakasa';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Kakasa era Oyongere Mu Maaso';

  @override
  String get changePhoneNumber => 'Kyuusa ennamba y\'essimu';

  @override
  String get pleaseEnterPhoneNumber => 'Nsaba oyingize ennamba yo ey\'essimu';

  @override
  String get pleaseEnterVerificationCode => 'Nsaba oyingize koodi y\'okukakasa';

  @override
  String get createProfile => 'Kola Ppurofayiro';

  @override
  String get tellUsAboutYourself => 'Tubuulire ku ggwe';

  @override
  String get profileSetupDescription =>
      'Amawulire gano gayamba okukugatta n\'abaliraanwa abeetaaga obuyambi';

  @override
  String get addPhotoOptional => 'Gattako ekifaananyi (si kya tteeka)';

  @override
  String get fullNameLabel => 'Erinnya Lyonna *';

  @override
  String get fullNameHint => 'Ssalongo Mukasa';

  @override
  String get homeAddressLabel => 'Endagiriro y\'Awaka *';

  @override
  String get homeAddressHint => '123 Luguudo lw\'Awakati, Chumba 4B';

  @override
  String get homeAddressHelper =>
      'Kikozesebwa ku kugatta abantu mu bitundu bye bimu bokka';

  @override
  String get ageOptionalLabel => 'Emyaka (si gya tteeka)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Abakadde ab\'emyaka 70+ basobola okussaawo essaawa z\'obubonero obuwombeefu';

  @override
  String get yourPrivacyMatters => 'Ekyama kyo kikulu';

  @override
  String get privacyNotice =>
      'Ekifo kyo kibuuzibwa nga waliwo akabi k\'amaanyi gokka era tekiramulirwa mirundi mingi.';

  @override
  String get continueButton => 'Yongera Mu Maaso';

  @override
  String get pleaseFillRequiredFields =>
      'Nsaba ojjuze ebikulu byonna ebyetaagisa';

  @override
  String get home => 'Awaka';

  @override
  String get alerts => 'Obubaka bw\'Obubenje';

  @override
  String get profile => 'Ppurofayiro';

  @override
  String get availableToRespond => 'Nnina Obusobozi Okuddamu';

  @override
  String get notAvailable => 'Sirina Busobozi';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Ojja kufuna obubaka bw\'ebyobubenje okumpi nawe';

  @override
  String get toggleOnWhenReady => 'Bikkirize bw\'onooba omukka okuyamba';

  @override
  String get youreNowAvailable => 'Kati nnina obusobozi okuddamu';

  @override
  String get youWontReceiveAlerts => 'Tojja kufuna bubaka';

  @override
  String get lifeThreatening247Info =>
      'Obubaka obw\'obulamu obuli mu katyabaga bujja kukumanyisa obudde bwonna. Obubaka obutali bwa maanyi bussaayo omukka ku nteekateeka yo.';

  @override
  String get requestHelp => 'SABA OBUYAMBI';

  @override
  String get yourImpact => 'Ky\'Okoledde';

  @override
  String get responses => 'Okuddamu';

  @override
  String get avgTime => 'Obudde bwa Wakati';

  @override
  String get yourCapabilities => 'Obusobozi Bwo';

  @override
  String get edit => 'Kyuusa';

  @override
  String get communityNetwork => 'Omutimbagano gw\'Ekitundu';

  @override
  String get nearbyResponders => 'Abaddamu Abali Okumpi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count abali nga bamukka';
  }

  @override
  String get coverageRadius => 'Ekitundu Ekikwatiddwa';

  @override
  String coverageRadiusValue(String distance) {
    return 'Mayiro $distance';
  }

  @override
  String get activeAlerts => 'Obubaka Obukyakola';

  @override
  String get none => 'Tewali';

  @override
  String get yourLocation => 'Ekifo Kyo';

  @override
  String get whatDoYouNeedHelpWith => 'Ki ky\'weetaaga obuyambi nakyo?';

  @override
  String get additionalDetailsOptional =>
      'Ebikwata ku Nsonga Ebirala (si bya tteeka)';

  @override
  String get describeSituation => 'Nnyonnyola embeera...';

  @override
  String get alertTrustedRespondersFirst =>
      'Labula abaddamu be neesiga okusooka';

  @override
  String get trustedRespondersDescription =>
      'Mikwano gyo n\'ab\'amaka gyo abalondeddwa bajja kumanyisibwa nga tekunnaba bamuliramu bantu bonna';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ntuma obubaka: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SINDIKA OBUBAKA KATI';

  @override
  String get pleaseSelectEmergencyType => 'Nsaba olonde ekika ky\'akabi';

  @override
  String get categoryLifeThreatening => '🔴 Ekitiisa Obulamu';

  @override
  String get categorySecuritySafety => '🟠 Obukuumi/Obukangavvuzi';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Ekyanguyira Ekira Obudde';

  @override
  String get categoryNonLifeThreatening => '🟢 Ekitakola Bubabi ku Bulamu';

  @override
  String get emergencyCprCardiacName => 'CPR / Omutima Oguyimiridde';

  @override
  String get emergencyCprCardiacDesc => 'Omuntu taddamu era tamiira';

  @override
  String get emergencyAedName => 'Okutuusa AED';

  @override
  String get emergencyAedDesc => 'Neetaaga AED mangu ddala';

  @override
  String get emergencyOverdoseName =>
      'Okunywa Eddagala Okusukkiridde / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Okuteebereza nti anyidde eddagala okusukkiridde, neetaaga naloxone';

  @override
  String get emergencyChokingName => 'Okulemererwa / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Omuntu alemeddwa era tasobola kussa mukka';

  @override
  String get emergencyFireName => 'Omuliro / Okudda';

  @override
  String get emergencyFireDesc =>
      'Akabi k\'omuliro, neetaaga obuyambi mu kudduka';

  @override
  String get emergencyConsentName => 'Akabi k\'Okukkiriza mu Kisenge';

  @override
  String get emergencyConsentDesc =>
      'Ekigambo eky\'obukuumi kiyitiddwa, neetaaga omujulirwa';

  @override
  String get emergencyBystanderName => 'Omujulirwa Omuyambi';

  @override
  String get emergencyBystanderDesc => 'Neetaaga omuntu akennye obusungu';

  @override
  String get emergencyMissingPetName => 'Ensolo y\'Omu Nnyumba Ebuze';

  @override
  String get emergencyMissingPetDesc =>
      'Ensolo ebuze oba eedduse, neetaaga abaginoonya';

  @override
  String get emergencyWellnessCheckName => 'Okukebera Obulamu';

  @override
  String get emergencyWellnessCheckDesc =>
      'Okukebera omuntu ayinza okwetaaga obuyambi';

  @override
  String get emergencyQuitCompanionName => 'Munywani w\'Okuleka';

  @override
  String get emergencyQuitCompanionDesc =>
      'Nnyiganye n\'okulonda okubi, neetaaga obuwagizi';

  @override
  String get emergencyCompanionshipName => 'Obunyangiri';

  @override
  String get emergencyCompanionshipDesc => 'Mporera oba ndi mu bwereere';

  @override
  String get emergency911CoordinationName => 'Okutegeka 911';

  @override
  String get emergency911CoordinationDesc =>
      'Neetaaga obuyambi mu kuyita n\'okutegeka 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Obusobozi Bwange';

  @override
  String capabilitiesSelected(int count) {
    return '$count bilondeddwa';
  }

  @override
  String get alertSchedule => 'Enteekateeka y\'Obubaka';

  @override
  String get setAvailabilityHours => 'Teeka essaawa zo ez\'okubeerawo';

  @override
  String get trustedResponders => 'Abaddamu Abeesigika';

  @override
  String get responseHistory => 'Ebyafaayo by\'Okuddamu';

  @override
  String get privacyAndSafety => 'Ekyama n\'Obukuumi';

  @override
  String get helpAndSupport => 'Obuyambi n\'Obuwagizi';

  @override
  String get aboutNayborSos => 'Ku Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Obukwakkulizo n\'Enkola y\'Ekyama';

  @override
  String get signOut => 'Fuluma';

  @override
  String version(String version) {
    return 'Omulingo $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS egatta abaliraanwa mu biseera by\'obubenje, okutondawo omutimbagano gw\'abaddamu abaanguwa abasobola okuwa obuyambi obukulu nga abasawo ab\'edda tebannaba kutuuka.';

  @override
  String get aboutDialogContent2 =>
      'Buli omu asobola okubeera muduumizi. Teetaaga kuyigirwa kwanjawulo okutaasa obulamu. Oluusi okuyingira okusinga amaanyi kwe kujja bukajjo.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Ggalawo';

  @override
  String get signOutQuestion => 'Fuluma?';

  @override
  String get signOutConfirm => 'Ddala oyagala okufuluma?';

  @override
  String get cancel => 'Sazaamu';

  @override
  String get signedOutSuccessfully => 'Ofulumye obulungi';

  @override
  String get settings => 'Enteekateeka';

  @override
  String get capabilityWellnessCheck => 'Okukebera Obulamu';

  @override
  String get capabilityQuitCompanion => 'Munywani w\'Okuleka';

  @override
  String get capabilityActiveBystander => 'Omujulirwa Omuyambi';

  @override
  String get translationTier1Label => 'Okuvvuunula kwa AI Obwesigwa Ennyo';

  @override
  String get translationTier2Label => 'Okuvvuunula kwa AI Obulungi';

  @override
  String get translationTier3Label => 'Okuvvuunula kwa AI Obwa Wakati';

  @override
  String get translationTier4Label => 'Okuvvuunula kwa AI Obutono';

  @override
  String get translationTier1Notice =>
      'Okuvvuunula kuno kwakozeseddwa AI n\'obwesigwa obungi. Okukeberwa kw\'omukugu kuteeseddwa okukozesebwa mu bulamu.';

  @override
  String get translationTier2Notice =>
      'Okuvvuunula kuno kwakozeseddwa AI n\'obwesigwa obulungi. Okukeberwa kw\'omukugu kuteeseddwa ku bigambo by\'obubenje n\'okukkiriza ebikulu.';

  @override
  String get translationTier3Notice =>
      '⚠️ Okuvvuunula kuno kwetaaga omuntu akikebere mu bigambo by\'obubenje ebikulu nga tekunnakozesebwa mu bulamu.';

  @override
  String get translationTier4Notice =>
      '⚠️ Kuno kuvvuunula kwa kugezaako kwokka. Okuvvuunula kw\'omukugu kwetaagisa nga tekunnakozesebwa mu bulamu.';

  @override
  String get selectLanguage => 'Londa Olulimi';

  @override
  String get searchLanguagesHint => 'Noonya ennimi';

  @override
  String translationQualityLabel(String quality) {
    return 'Omutindo gw\'Okuvvuunula: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Yamba okulongoosa okuvvuunula - loopa ensonga oba waayo okuvvuunula okulungi!';
}
