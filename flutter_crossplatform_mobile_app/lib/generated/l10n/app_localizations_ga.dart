// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutefhir & Minutemhná an Lae Inniu';

  @override
  String get signUpToHelp => 'Cláraigh chun cabhrú le do chomharsana';

  @override
  String get enterPhoneNumber => 'Cuir isteach d\'uimhir ghutháin chun tosú';

  @override
  String get phoneNumberLabel => 'Uimhir Ghutháin';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Seol Cód Fíoraithe';

  @override
  String get enterVerificationCode => 'Cuir isteach an cód fíoraithe';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Sheol muid cód chuig $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Cód Fíoraithe';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Fíoraigh & Lean Ar Aghaidh';

  @override
  String get changePhoneNumber => 'Athraigh uimhir ghutháin';

  @override
  String get pleaseEnterPhoneNumber =>
      'Cuir isteach d\'uimhir ghutháin le do thoil';

  @override
  String get pleaseEnterVerificationCode =>
      'Cuir isteach an cód fíoraithe le do thoil';

  @override
  String get createProfile => 'Cruthaigh Próifíl';

  @override
  String get tellUsAboutYourself => 'Inis dúinn fút féin';

  @override
  String get profileSetupDescription =>
      'Cabhraíonn an fhaisnéis seo linn thú a nascadh le comharsana a dteastaíonn cabhair uathu';

  @override
  String get addPhotoOptional => 'Cuir grianghraf leis (roghnach)';

  @override
  String get fullNameLabel => 'Ainm Iomlán *';

  @override
  String get fullNameHint => 'Seán Ó Smiotha';

  @override
  String get homeAddressLabel => 'Seoladh Baile *';

  @override
  String get homeAddressHint => '123 Sráid Láir, Árasán 4B';

  @override
  String get homeAddressHelper =>
      'Úsáidtear é seo le haghaidh meaitseáil gaireachta amháin';

  @override
  String get ageOptionalLabel => 'Aois (roghnach)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Is féidir le daoine 70+ uaireanta airdeall bog a shocrú';

  @override
  String get yourPrivacyMatters => 'Tá do phríobháideacht tábhachtach';

  @override
  String get privacyNotice =>
      'Ní dhéantar d\'ionad a cheistiú ach le linn éigeandálaí gníomhacha agus ní stóráiltear é ar feadh tréimhse fhada.';

  @override
  String get continueButton => 'Lean Ar Aghaidh';

  @override
  String get pleaseFillRequiredFields =>
      'Líon isteach na réimsí riachtanacha go léir le do thoil';

  @override
  String get home => 'Baile';

  @override
  String get alerts => 'Airdeallaí';

  @override
  String get profile => 'Próifíl';

  @override
  String get availableToRespond => 'Ar Fáil chun Freagairt';

  @override
  String get notAvailable => 'Níl Ar Fáil';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Gheobhaidh tú airdeallaí éigeandála in aice láimhe';

  @override
  String get toggleOnWhenReady => 'Cas air nuair atá tú réidh chun cabhrú';

  @override
  String get youreNowAvailable => 'Tá tú ar fáil chun freagairt anois';

  @override
  String get youWontReceiveAlerts => 'Ní bhfaighidh tú airdeallaí';

  @override
  String get lifeThreatening247Info =>
      'Cuirfidh airdeallaí ina mbeidh an saol i mbaol in iúl duit 24/7. Tabharfaidh airdeallaí neamhphráinneacha urraim do do sceideal.';

  @override
  String get requestHelp => 'IARR CABHAIR';

  @override
  String get yourImpact => 'Do Thionchar';

  @override
  String get responses => 'Freagraí';

  @override
  String get avgTime => 'Meán-Am';

  @override
  String get yourCapabilities => 'Do Chumais';

  @override
  String get edit => 'Cuir in Eagar';

  @override
  String get communityNetwork => 'Líonra Pobail';

  @override
  String get nearbyResponders => 'Freagróirí in Aice Láimhe';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count ar fáil';
  }

  @override
  String get coverageRadius => 'Ga Chlúdaigh';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance míle';
  }

  @override
  String get activeAlerts => 'Airdeallaí Gníomhacha';

  @override
  String get none => 'Dada';

  @override
  String get yourLocation => 'D\'Ionad';

  @override
  String get whatDoYouNeedHelpWith => 'Cad leis a dteastaíonn cabhair uait?';

  @override
  String get additionalDetailsOptional => 'Sonraí Breise (roghnach)';

  @override
  String get describeSituation => 'Cuir síos ar an gcás...';

  @override
  String get alertTrustedRespondersFirst =>
      'Cuir mo fhreagróirí iontaofa ar an eolas ar dtús';

  @override
  String get trustedRespondersDescription =>
      'Cuirfear do chairde/teaghlach roghnaithe ar an eolas roimh an bpobal ginearálta';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ag seoladh airdeall: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SEOL AIRDEALL ANOIS';

  @override
  String get pleaseSelectEmergencyType =>
      'Roghnaigh cineál éigeandála le do thoil';

  @override
  String get categoryLifeThreatening => '🔴 Ina Mbaol don Saol';

  @override
  String get categorySecuritySafety => '🟠 Slándáil/Sábháilteacht';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Práinneach Íogair don Am';

  @override
  String get categoryNonLifeThreatening => '🟢 Gan a Bheith ina Mbaol don Saol';

  @override
  String get emergencyCprCardiacName => 'CPR / Stad Cairdiach';

  @override
  String get emergencyCprCardiacDesc =>
      'Níl duine ag freagairt agus níl sé ag análú';

  @override
  String get emergencyAedName => 'Seachadadh AED';

  @override
  String get emergencyAedDesc => 'Teastaíonn AED láithreach';

  @override
  String get emergencyOverdoseName => 'Ródháileog / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Ródháileog drugaí amhrasta, tá naloxone de dhíth';

  @override
  String get emergencyChokingName => 'Tachdadh / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Tá duine ag tachdadh agus ní féidir leis análú';

  @override
  String get emergencyFireName => 'Dóiteán / Aslonnú';

  @override
  String get emergencyFireDesc =>
      'Éigeandáil dóiteáin, tá cabhair aslonnaithe de dhíth';

  @override
  String get emergencyConsentName => 'Éigeandáil Toilte sa Seomra Leapa';

  @override
  String get emergencyConsentDesc =>
      'Glaodh an focal sábhála, tá finné de dhíth';

  @override
  String get emergencyBystanderName => 'Finné Seasaimh Gníomhach';

  @override
  String get emergencyBystanderDesc =>
      'Tá láithreacht de dhíth chun coinbhleacht a mhaolú';

  @override
  String get emergencyMissingPetName => 'Peata ar Iarraidh';

  @override
  String get emergencyMissingPetDesc =>
      'Tá peata caillte nó tar éis rith as, tá cuardach de dhíth';

  @override
  String get emergencyWellnessCheckName => 'Seiceáil Folláine';

  @override
  String get emergencyWellnessCheckDesc =>
      'Seiceáil ar dhuine a d\'fhéadfadh cabhair a bheith de dhíth orthu';

  @override
  String get emergencyQuitCompanionName => 'Compánach Scoir';

  @override
  String get emergencyQuitCompanionDesc =>
      'Ag troid in aghaidh craving, tá tacaíocht de dhíth';

  @override
  String get emergencyCompanionshipName => 'Compántacht';

  @override
  String get emergencyCompanionshipDesc => 'Ag mothlú uaigneach nó scoite';

  @override
  String get emergency911CoordinationName => 'Comhordú 999';

  @override
  String get emergency911CoordinationDesc =>
      'Tá cabhair de dhíth chun glaoch ar 999 agus é a chomhordú';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Mo Chumais';

  @override
  String capabilitiesSelected(int count) {
    return '$count roghnaithe';
  }

  @override
  String get alertSchedule => 'Sceideal Airdeallaí';

  @override
  String get setAvailabilityHours => 'Socraigh d\'uaireanta infhaighteachta';

  @override
  String get trustedResponders => 'Freagróirí Iontaofa';

  @override
  String get responseHistory => 'Stair Freagartha';

  @override
  String get privacyAndSafety => 'Príobháideacht & Sábháilteacht';

  @override
  String get helpAndSupport => 'Cabhair & Tacaíocht';

  @override
  String get aboutNayborSos => 'Faoi Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Téarmaí & Beartas Príobháideachta';

  @override
  String get signOut => 'Logáil Amach';

  @override
  String version(String version) {
    return 'Leagan $version';
  }

  @override
  String get aboutDialogContent =>
      'Nascann Naybor SOS comharsana in éigeandálaí, ag cruthú líonra de fhreagróirí tapa ar féidir leo cabhair ríthábhachtach a sholáthar sula sroicheann céad-fhreagaróirí gairmiúla.';

  @override
  String get aboutDialogContent2 =>
      'Is féidir le gach duine a bheith ina laoch. Ní gá oiliúint speisialta a bheith agat chun saol a shábháil. Uaireanta is é an idirghabháil is cumhachtaí ná díreach teacht i láthair.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Dún';

  @override
  String get signOutQuestion => 'Logáil Amach?';

  @override
  String get signOutConfirm =>
      'An bhfuil tú cinnte gur mhaith leat logáil amach?';

  @override
  String get cancel => 'Cealaigh';

  @override
  String get signedOutSuccessfully => 'Logáladh amach go rathúil';

  @override
  String get settings => 'Socruithe';

  @override
  String get capabilityWellnessCheck => 'Seiceáil Folláine';

  @override
  String get capabilityQuitCompanion => 'Compánach Scoir';

  @override
  String get capabilityActiveBystander => 'Seasaimh Gníomhach';

  @override
  String get translationTier1Label => 'Aistriúchán AI Muiníne Ardé';

  @override
  String get translationTier2Label => 'Aistriúchán AI Muiníne Maithe';

  @override
  String get translationTier3Label => 'Aistriúchán AI Lár-Mhuiníne';

  @override
  String get translationTier4Label => 'Aistriúchán AI Muiníne Ísle';

  @override
  String get translationTier1Notice =>
      'Gineadh an t-aistriúchán seo le AI le muinín ard. Moltar athbhreithniú gairmiúil le haghaidh úsáid táirgeachta.';

  @override
  String get translationTier2Notice =>
      'Gineadh an t-aistriúchán seo le AI le muinín mhaith. Moltar athbhreithniú gairmiúil le haghaidh téarmaíochta toilithe agus éigeandála atá ríthábhachtach ó thaobh sábháilteachta de.';

  @override
  String get translationTier3Notice =>
      '⚠️ Teastaíonn athbhreithniú daonna ar an aistriúchán seo le haghaidh abairtí éigeandála atá ríthábhachtach ó thaobh sábháilteachta de roimh úsáid táirgeachta.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ní aistriúchán dréachta ach é seo. Tá aistriúchán gairmiúil ag teastáil roimh úsáid táirgeachta.';

  @override
  String get selectLanguage => 'Roghnaigh Teanga';

  @override
  String get searchLanguagesHint => 'Cuardaigh teangacha';

  @override
  String translationQualityLabel(String quality) {
    return 'Cáilíocht Aistriúcháin: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Cabhraigh le haistriúcháin a fheabhsú - tuairiscigh saincheisteanna nó cuir aistriúcháin níos fearr ar fáil!';
}
