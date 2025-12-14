// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Nútíma björgunarsveitarmenn';

  @override
  String get signUpToHelp => 'Skráðu þig til að hjálpa nágrönnum þínum';

  @override
  String get enterPhoneNumber => 'Sláðu inn símanúmerið þitt til að byrja';

  @override
  String get phoneNumberLabel => 'Símanúmer';

  @override
  String get phoneNumberHint => '581-2345';

  @override
  String get sendVerificationCode => 'Senda staðfestingarkóða';

  @override
  String get enterVerificationCode => 'Sláðu inn staðfestingarkóða';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Við sendum kóða á $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Staðfestingarkóði';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Staðfesta og halda áfram';

  @override
  String get changePhoneNumber => 'Breyta símanúmeri';

  @override
  String get pleaseEnterPhoneNumber =>
      'Vinsamlegast sláðu inn símanúmerið þitt';

  @override
  String get pleaseEnterVerificationCode =>
      'Vinsamlegast sláðu inn staðfestingarkóðann';

  @override
  String get createProfile => 'Búa til prófíl';

  @override
  String get tellUsAboutYourself => 'Segðu okkur frá þér';

  @override
  String get profileSetupDescription =>
      'Þessar upplýsingar hjálpa okkur að tengja þig við nágranna sem þurfa hjálp';

  @override
  String get addPhotoOptional => 'Bæta við mynd (valfrjálst)';

  @override
  String get fullNameLabel => 'Fullt nafn *';

  @override
  String get fullNameHint => 'Jón Jónsson';

  @override
  String get homeAddressLabel => 'Heimilisfang *';

  @override
  String get homeAddressHint => 'Laugavegur 123, íbúð 4B';

  @override
  String get homeAddressHelper => 'Aðeins notað til að finna nágranna';

  @override
  String get ageOptionalLabel => 'Aldur (valfrjálst)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70 ára og eldri geta stillt vægar viðvörunartíma';

  @override
  String get yourPrivacyMatters => 'Friðhelgi þín skiptir máli';

  @override
  String get privacyNotice =>
      'Staðsetning þín er aðeins sótt meðan á neyðarástandi stendur og aldrei geymd til lengri tíma.';

  @override
  String get continueButton => 'Halda áfram';

  @override
  String get pleaseFillRequiredFields =>
      'Vinsamlegast fylltu út alla nauðsynlega reiti';

  @override
  String get home => 'Heim';

  @override
  String get alerts => 'Viðvaranir';

  @override
  String get profile => 'Prófíll';

  @override
  String get availableToRespond => 'Tilbúinn að bregðast við';

  @override
  String get notAvailable => 'Ekki tiltækur';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Þú munt fá neyðarviðvaranir í nágrenninu';

  @override
  String get toggleOnWhenReady => 'Kveiktu þegar þú ert tilbúinn að hjálpa';

  @override
  String get youreNowAvailable => 'Þú ert nú tilbúinn að bregðast við';

  @override
  String get youWontReceiveAlerts => 'Þú munt ekki fá viðvaranir';

  @override
  String get lifeThreatening247Info =>
      'Lífshættulegar viðvaranir munu láta þig vita allan sólarhringinn. Ekki brýnar viðvaranir virða þína áætlun.';

  @override
  String get requestHelp => 'ÓSKA EFTIR HJÁLP';

  @override
  String get yourImpact => 'Þín áhrif';

  @override
  String get responses => 'Viðbrögð';

  @override
  String get avgTime => 'Meðaltími';

  @override
  String get yourCapabilities => 'Þín hæfni';

  @override
  String get edit => 'Breyta';

  @override
  String get communityNetwork => 'Samfélagsnet';

  @override
  String get nearbyResponders => 'Björgunarsveitarmenn í nágrenninu';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count tiltækir';
  }

  @override
  String get coverageRadius => 'Þjónustusvæði';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kílómetrar';
  }

  @override
  String get activeAlerts => 'Virkar viðvaranir';

  @override
  String get none => 'Engar';

  @override
  String get yourLocation => 'Þín staðsetning';

  @override
  String get whatDoYouNeedHelpWith => 'Í hverju þarftu hjálp?';

  @override
  String get additionalDetailsOptional => 'Viðbótarupplýsingar (valfrjálst)';

  @override
  String get describeSituation => 'Lýstu aðstæðunum...';

  @override
  String get alertTrustedRespondersFirst =>
      'Láta traustu björgunarsveitarmennina mína vita fyrst';

  @override
  String get trustedRespondersDescription =>
      'Valdir vinir/fjölskylda fá tilkynningu áður en almennt samfélag';

  @override
  String sendingAlert(String emergencyType) {
    return 'Sendi viðvörun: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SENDA VIÐVÖRUN NÚNA';

  @override
  String get pleaseSelectEmergencyType =>
      'Vinsamlegast veldu tegund neyðarstöðu';

  @override
  String get categoryLifeThreatening => '🔴 Lífshættulegt';

  @override
  String get categorySecuritySafety => '🟠 Öryggi/Öryggismál';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Brýnt tímaviðkvæmt';

  @override
  String get categoryNonLifeThreatening => '🟢 Ekki lífshættulegt';

  @override
  String get emergencyCprCardiacName => 'Endurlífgun / Hjartastopp';

  @override
  String get emergencyCprCardiacDesc =>
      'Einstaklingur er meðvitundarlaus og andar ekki';

  @override
  String get emergencyAedName => 'Hjartastuðtæki afhending';

  @override
  String get emergencyAedDesc => 'Þarf hjartastuðtæki strax';

  @override
  String get emergencyOverdoseName => 'Ofskammt / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Grunur um ofskammt af lyfjum, þarf naloxone';

  @override
  String get emergencyChokingName => 'Kafnar / Heimlich';

  @override
  String get emergencyChokingDesc => 'Einstaklingur kafnar og getur ekki andað';

  @override
  String get emergencyFireName => 'Eldur / Rýming';

  @override
  String get emergencyFireDesc => 'Eldsvoði, þarf hjálp við rýmingu';

  @override
  String get emergencyConsentName => 'Samþykkisneyðarástand í svefnherbergi';

  @override
  String get emergencyConsentDesc => 'Öryggismerki kallað, þarf vitni';

  @override
  String get emergencyBystanderName => 'Virkur áhorfandi vitni';

  @override
  String get emergencyBystanderDesc =>
      'Þarf nærveru til að róa niður ágreining';

  @override
  String get emergencyMissingPetName => 'Týnt gæludýr';

  @override
  String get emergencyMissingPetDesc =>
      'Gæludýr er týnt eða hlaupið burt, þarf leitarflokk';

  @override
  String get emergencyWellnessCheckName => 'Líðanskannanir';

  @override
  String get emergencyWellnessCheckDesc =>
      'Athuga með einhvern sem gæti þurft hjálp';

  @override
  String get emergencyQuitCompanionName => 'Hætta félagi';

  @override
  String get emergencyQuitCompanionDesc => 'Berjist við þrá, þarf stuðning';

  @override
  String get emergencyCompanionshipName => 'Félagsskapur';

  @override
  String get emergencyCompanionshipDesc =>
      'Finn fyrir einmanaleika eða einangrun';

  @override
  String get emergency911CoordinationName => '112 samræming';

  @override
  String get emergency911CoordinationDesc =>
      'Þarf hjálp við að hringja og samræma 112';

  @override
  String get equipmentAed => 'Hjartastuðtæki';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Mín hæfni';

  @override
  String capabilitiesSelected(int count) {
    return '$count valin';
  }

  @override
  String get alertSchedule => 'Viðvörunaráætlun';

  @override
  String get setAvailabilityHours => 'Stilltu tiltektartíma þína';

  @override
  String get trustedResponders => 'Traustir björgunarsveitarmenn';

  @override
  String get responseHistory => 'Viðbragðssaga';

  @override
  String get privacyAndSafety => 'Friðhelgi og öryggi';

  @override
  String get helpAndSupport => 'Hjálp og stuðningur';

  @override
  String get aboutNayborSos => 'Um Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Skilmálar og friðhelgisstefna';

  @override
  String get signOut => 'Skrá út';

  @override
  String version(String version) {
    return 'Útgáfa $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS tengir nágranna í neyðartilvikum og skapar net skjótra björgunarsveitarmanna sem geta veitt mikilvæga hjálp áður en fagleg neyðarþjónusta kemur.';

  @override
  String get aboutDialogContent2 =>
      'Allir geta verið hetjur. Þú þarft ekki sérstaka þjálfun til að bjarga lífi. Stundum er öflugasta inngrip það einfaldlega að mæta.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Loka';

  @override
  String get signOutQuestion => 'Skrá út?';

  @override
  String get signOutConfirm => 'Ertu viss um að þú viljir skrá þig út?';

  @override
  String get cancel => 'Hætta við';

  @override
  String get signedOutSuccessfully => 'Skráður út með góðum árangri';

  @override
  String get settings => 'Stillingar';

  @override
  String get capabilityWellnessCheck => 'Líðanskönnun';

  @override
  String get capabilityQuitCompanion => 'Hætta félagi';

  @override
  String get capabilityActiveBystander => 'Virkur áhorfandi';

  @override
  String get translationTier1Label => 'Gervigreind þýðing með miklu trausti';

  @override
  String get translationTier2Label => 'Gervigreind þýðing með góðu trausti';

  @override
  String get translationTier3Label => 'Gervigreind þýðing með meðaltrausti';

  @override
  String get translationTier4Label => 'Gervigreind þýðing með litlu trausti';

  @override
  String get translationTier1Notice =>
      'Þessi þýðing var gerð af gervigreind með miklu trausti. Fagleg yfirferð ráðlögð fyrir framleiðslunotkun.';

  @override
  String get translationTier2Notice =>
      'Þessi þýðing var gerð af gervigreind með góðu trausti. Fagleg yfirferð ráðlögð fyrir öryggismikilvæg samþykki og neyðarorðalag.';

  @override
  String get translationTier3Notice =>
      '⚠️ Þessi þýðing krefst mannlegrar yfirferðar fyrir öryggismikilvægar neyðarsetningar fyrir framleiðslunotkun.';

  @override
  String get translationTier4Notice =>
      '⚠️ Þetta er aðeins drög að þýðingu. Fagleg þýðing nauðsynleg fyrir framleiðslunotkun.';

  @override
  String get selectLanguage => 'Velja tungumál';

  @override
  String get searchLanguagesHint => 'Leita að tungumálum';

  @override
  String translationQualityLabel(String quality) {
    return 'Gæði þýðingar: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Hjálpaðu okkur að bæta þýðingar - tilkynntu vandamál eða leggðu fram betri þýðingar!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
