// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kinyarwanda (`rw`).
class AppLocalizationsRw extends AppLocalizations {
  AppLocalizationsRw([String locale = 'rw']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Abantu b\'Ubunyangamugayo bw\'Uyu Munsi';

  @override
  String get signUpToHelp => 'Iyandikishe kugira ngo ufashe abaturanyi bawe';

  @override
  String get enterPhoneNumber =>
      'Shyiramo nimero ya telefoni yawe kugira ngo utangire';

  @override
  String get phoneNumberLabel => 'Nimero ya Telefoni';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Ohereza Kode y\'Ikemeza';

  @override
  String get enterVerificationCode => 'Shyiramo kode y\'ikemeza';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Twohereje kode kuri $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kode y\'Ikemeza';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Emeza & Komeza';

  @override
  String get changePhoneNumber => 'Hindura nimero ya telefoni';

  @override
  String get pleaseEnterPhoneNumber =>
      'Nyamuneka shyiramo nimero ya telefoni yawe';

  @override
  String get pleaseEnterVerificationCode =>
      'Nyamuneka shyiramo kode y\'ikemeza';

  @override
  String get createProfile => 'Kora Umwirondoro';

  @override
  String get tellUsAboutYourself => 'Tubwire ibijyanye nawe';

  @override
  String get profileSetupDescription =>
      'Aya makuru adufasha kukuguhuza n\'abaturanyi bakeneye ubufasha';

  @override
  String get addPhotoOptional => 'Ongeramo ifoto (bitari ngombwa)';

  @override
  String get fullNameLabel => 'Izina ryuzuye *';

  @override
  String get fullNameHint => 'Jean Baptiste';

  @override
  String get homeAddressLabel => 'Aderesi y\'Urugo *';

  @override
  String get homeAddressHint => 'Umuhanda wa 123, Inzu 4B';

  @override
  String get homeAddressHelper =>
      'Bikoreshwa mu guhuriza hamwe abantu bari hafi gusa';

  @override
  String get ageOptionalLabel => 'Imyaka (bitari ngombwa)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Abantu bafite imyaka 70 cyangwa irenga barashobora gushyiraho amasaha yo kumenyesha mu buryo bwihangane';

  @override
  String get yourPrivacyMatters => 'Ibanga ryawe ni ingenzi';

  @override
  String get privacyNotice =>
      'Aho uherereye birabazwa gusa mugihe cy\'ibihutisho bikomeye kandi ntabwo bibikwa igihe kinini.';

  @override
  String get continueButton => 'Komeza';

  @override
  String get pleaseFillRequiredFields => 'Nyamuneka uzuza ibisabwa byose';

  @override
  String get home => 'Ahabanza';

  @override
  String get alerts => 'Imenyesha';

  @override
  String get profile => 'Umwirondoro';

  @override
  String get availableToRespond => 'Uhari Gusubiza';

  @override
  String get notAvailable => 'Ntuhari';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Uzakira imenyesha z\'ibihutisho hafi yawe';

  @override
  String get toggleOnWhenReady => 'Guhinduramo igihe witeguye gufasha';

  @override
  String get youreNowAvailable => 'Ubu uhari gusubiza';

  @override
  String get youWontReceiveAlerts => 'Ntuzakira imenyesha';

  @override
  String get lifeThreatening247Info =>
      'Imenyesha z\'ibihutisho bikomeye zizakumenyesha iminsi yose ku masaha yose. Imenyesha zitari z\'ibihutisho zubahiriza igenatera ryawe.';

  @override
  String get requestHelp => 'GUSABA UBUFASHA';

  @override
  String get yourImpact => 'Uruhare Rwawe';

  @override
  String get responses => 'Ibisubizo';

  @override
  String get avgTime => 'Igihe Rusange';

  @override
  String get yourCapabilities => 'Ubushobozi Bwawe';

  @override
  String get edit => 'Hindura';

  @override
  String get communityNetwork => 'Urusobekerane rw\'Abaturage';

  @override
  String get nearbyResponders => 'Abasubiza Bari Hafi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count bahari';
  }

  @override
  String get coverageRadius => 'Igice Gikwirakwizwa';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mile';
  }

  @override
  String get activeAlerts => 'Imenyesha Zikora';

  @override
  String get none => 'Ntacyo';

  @override
  String get yourLocation => 'Aho Uherereye';

  @override
  String get whatDoYouNeedHelpWith => 'Ni iki gikeneye ubufasha?';

  @override
  String get additionalDetailsOptional =>
      'Ibisobanuro byongeyeho (bitari ngombwa)';

  @override
  String get describeSituation => 'Sobanura uko ibintu bimeze...';

  @override
  String get alertTrustedRespondersFirst =>
      'Menyesha abari mu cyizere cyanje mbere';

  @override
  String get trustedRespondersDescription =>
      'Inshuti zawe/umuryango wawe bizamenyeshwa mbere y\'abaturage muri rusange';

  @override
  String sendingAlert(String emergencyType) {
    return 'Kohereza imenyesha: $emergencyType';
  }

  @override
  String get sendAlertNow => 'OHEREZA IMENYESHA UBUTUMIRE';

  @override
  String get pleaseSelectEmergencyType =>
      'Nyamuneka hitamo ubwoko bw\'ihutisho';

  @override
  String get categoryLifeThreatening => '🔴 Bikangiza Ubuzima';

  @override
  String get categorySecuritySafety => '🟠 Umutekano';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Byihutisho Bikeneye Igihe';

  @override
  String get categoryNonLifeThreatening => '🟢 Bidakangiza Ubuzima';

  @override
  String get emergencyCprCardiacName => 'CPR / Guhagarika k\'Umutima';

  @override
  String get emergencyCprCardiacDesc =>
      'Umuntu ntasubizo afite kandi ntabuhumekero afite';

  @override
  String get emergencyAedName => 'Kuzana AED';

  @override
  String get emergencyAedDesc => 'Nkeneye AED ako kanya';

  @override
  String get emergencyOverdoseName => 'Kurya Ibiyobyabwenge / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Gukeka ko hari ibiyobyabwenge byarenze urugero, nkeneye naloxone';

  @override
  String get emergencyChokingName => 'Guhumira / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Umuntu arimo guhumira kandi ntashobora guhumeka';

  @override
  String get emergencyFireName => 'Umuriro / Kwimura';

  @override
  String get emergencyFireDesc =>
      'Ihutisho ry\'umuriro, nkeneye ubufasha bwo kwimura';

  @override
  String get emergencyConsentName =>
      'Ihutisho ry\'Icyemezo mu Cyumba cy\'Uburiri';

  @override
  String get emergencyConsentDesc =>
      'Ijambo ryitwa safeword ryavuzwe, nkeneye umuhamya';

  @override
  String get emergencyBystanderName => 'Umuhamya Ugira Uruhare';

  @override
  String get emergencyBystanderDesc =>
      'Nkeneye kuba hari kugira ngo turangize amakimbirane';

  @override
  String get emergencyMissingPetName => 'Inyamaswa y\'Urugo Yabuze';

  @override
  String get emergencyMissingPetDesc =>
      'Inyamaswa y\'urugo yarabuze cyangwa yirukanye, nkeneye itsinda ry\'abayishakisha';

  @override
  String get emergencyWellnessCheckName => 'Kugenzura Ubuzima';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kugenzura umuntu ushobora gukeneye ubufasha';

  @override
  String get emergencyQuitCompanionName => 'Umunyamwaka wo Kureka';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ndi kurwanya ibyifuzo bibi, nkeneye inkunga';

  @override
  String get emergencyCompanionshipName => 'Ubwenge';

  @override
  String get emergencyCompanionshipDesc => 'Numva ndi wenyine cyangwa ntuje';

  @override
  String get emergency911CoordinationName => 'Guhuza 911';

  @override
  String get emergency911CoordinationDesc =>
      'Nkeneye ubufasha bwo guhamagara no guhuza serivisi z\'ibihutisho';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Ubushobozi Bwanjye';

  @override
  String capabilitiesSelected(int count) {
    return '$count byahiswemo';
  }

  @override
  String get alertSchedule => 'Gahunda y\'Imenyesha';

  @override
  String get setAvailabilityHours => 'Shiraho amasaha y\'uko uhari';

  @override
  String get trustedResponders => 'Abasubiza Bari mu Cyizere';

  @override
  String get responseHistory => 'Amateka y\'Ibisubizo';

  @override
  String get privacyAndSafety => 'Ibanga n\'Umutekano';

  @override
  String get helpAndSupport => 'Ubufasha n\'Inkunga';

  @override
  String get aboutNayborSos => 'Ibijyanye na Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Amabwiriza n\'Politike y\'Ibanga';

  @override
  String get signOut => 'Gusohoka';

  @override
  String version(String version) {
    return 'Verisiyo $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS ihuza abaturanyi mu bihutisho, ikora urusobekerane rw\'abasubiza vuba bashobora gutanga ubufasha bw\'ingenzi mbere y\'uko abafasha b\'umwuga bagera.';

  @override
  String get aboutDialogContent2 =>
      'Buri wese ashobora kuba intwari. Ntukeneye amahugurwa yihariye kugira ngo ukize ubuzima. Rimwe na rimwe ikintu gikomeye cyane ni ukwihutira kwiza.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Gufunga';

  @override
  String get signOutQuestion => 'Gusohoka?';

  @override
  String get signOutConfirm => 'Uzi neza ko ushaka gusohoka?';

  @override
  String get cancel => 'Kuraguza';

  @override
  String get signedOutSuccessfully => 'Wasohokiye neza';

  @override
  String get settings => 'Igenamiterere';

  @override
  String get capabilityWellnessCheck => 'Kugenzura Ubuzima';

  @override
  String get capabilityQuitCompanion => 'Umunyamwaka wo Kureka';

  @override
  String get capabilityActiveBystander => 'Umuhamya Ugira Uruhare';

  @override
  String get translationTier1Label => 'Ubuhinduzi bw\'AI Bukomeye';

  @override
  String get translationTier2Label => 'Ubuhinduzi bw\'AI Bwiza';

  @override
  String get translationTier3Label => 'Ubuhinduzi bw\'AI Bwo Hagati';

  @override
  String get translationTier4Label => 'Ubuhinduzi bw\'AI Buke';

  @override
  String get translationTier1Notice =>
      'Ubu buhinduzi bwakorwemo na AI n\'ikizere kinini. Bisabwa gusuzumwa n\'umwuga mu ikoreshwa ry\'ibicuruzwa.';

  @override
  String get translationTier2Notice =>
      'Ubu buhinduzi bwakorwemo na AI n\'ikizere cyiza. Bisabwa gusuzumwa n\'umwuga ku magambo ajyanye n\'umutekano-ukomeye n\'icyemezo n\'ibihutisho.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ubu buhinduzi bukeneye gusuzumwa n\'umuntu ku magambo y\'ibihutisho-ukomeye mbere yo gukoresha ibicuruzwa.';

  @override
  String get translationTier4Notice =>
      '⚠️ Uku ni ubuhinduzi bw\'igishusho gusa. Ubuhinduzi bw\'umwuga bukenewe mbere y\'ibicuruzwa.';

  @override
  String get selectLanguage => 'Hitamo Ururimi';

  @override
  String get searchLanguagesHint => 'Shakisha indimi';

  @override
  String translationQualityLabel(String quality) {
    return 'Ubwiza bw\'Ubuhinduzi: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Dufashe kunoza ubuhinduzi - menyesha ibibazo cyangwa utange ubuhinduzi bwiza!';
}
