// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maltese (`mt`).
class AppLocalizationsMt extends AppLocalizations {
  AppLocalizationsMt([String locale = 'mt']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen u Minutewomen tal-Ġurnata Tal-Llum';

  @override
  String get signUpToHelp => 'Irreġistra biex tgħin lill-ġirien tiegħek';

  @override
  String get enterPhoneNumber =>
      'Daħħal in-numru tat-telefon tiegħek biex tibda';

  @override
  String get phoneNumberLabel => 'Numru tat-Telefon';

  @override
  String get phoneNumberHint => '(21) 123-4567';

  @override
  String get sendVerificationCode => 'Ibgħat Kodiċi ta\' Verifika';

  @override
  String get enterVerificationCode => 'Daħħal il-kodiċi ta\' verifika';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Bgħatna kodiċi għal $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kodiċi ta\' Verifika';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Ivverifika u Kompli';

  @override
  String get changePhoneNumber => 'Ibdel in-numru tat-telefon';

  @override
  String get pleaseEnterPhoneNumber =>
      'Jekk jogħġbok daħħal in-numru tat-telefon tiegħek';

  @override
  String get pleaseEnterVerificationCode =>
      'Jekk jogħġbok daħħal il-kodiċi ta\' verifika';

  @override
  String get createProfile => 'Oħloq Profil';

  @override
  String get tellUsAboutYourself => 'Għidilna dwarek';

  @override
  String get profileSetupDescription =>
      'Din l-informazzjoni tgħinna nwasslok ma\' ġirien li jeħtieġu għajnuna';

  @override
  String get addPhotoOptional => 'Żid ritratt (mhux obbligatorju)';

  @override
  String get fullNameLabel => 'Isem Sħiħ *';

  @override
  String get fullNameHint => 'Ġużeppi Borg';

  @override
  String get homeAddressLabel => 'Indirizz tad-Dar *';

  @override
  String get homeAddressHint => '123 Triq Repubblika, Apt 4B';

  @override
  String get homeAddressHelper => 'Jintuża biss għal qrib il-post';

  @override
  String get ageOptionalLabel => 'Età (mhux obbligatorju)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Etajiet 70+ jistgħu jissettjaw siegħat ta\' avviż ħafif';

  @override
  String get yourPrivacyMatters => 'Il-privatezza tiegħek timporta';

  @override
  String get privacyNotice =>
      'Il-post tiegħek jintalab biss waqt emerġenzi attivi u qatt ma jinżamm għal żmien twil.';

  @override
  String get continueButton => 'Kompli';

  @override
  String get pleaseFillRequiredFields =>
      'Jekk jogħġbok imla l-oqsma kollha meħtieġa';

  @override
  String get home => 'Dar';

  @override
  String get alerts => 'Allarmijiet';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Disponibbli biex Nwieġeb';

  @override
  String get notAvailable => 'Mhux Disponibbli';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Se tirċievi allarmijiet ta\' emerġenza fil-qrib';

  @override
  String get toggleOnWhenReady => 'Ixgħel meta tkun lest biex tgħin';

  @override
  String get youreNowAvailable => 'Issa int disponibbli biex twieġeb';

  @override
  String get youWontReceiveAlerts => 'Mhux se tirċievi allarmijiet';

  @override
  String get lifeThreatening247Info =>
      'Allarmijiet ta\' theddid għall-ħajja jinavvizawk 24/7. Allarmijiet mhux urġenti jirrespettaw l-iskeda tiegħek.';

  @override
  String get requestHelp => 'ITLOB GĦAJNUNA';

  @override
  String get yourImpact => 'L-Impatt Tiegħek';

  @override
  String get responses => 'Tweġibiet';

  @override
  String get avgTime => 'Ħin Medju';

  @override
  String get yourCapabilities => 'Il-Kapaċitajiet Tiegħek';

  @override
  String get edit => 'Editja';

  @override
  String get communityNetwork => 'Network tal-Komunità';

  @override
  String get nearbyResponders => 'Respondenti fil-Qrib';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponibbli';
  }

  @override
  String get coverageRadius => 'Raqq tal-Kopertura';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Allarmijiet Attivi';

  @override
  String get none => 'Ebda';

  @override
  String get yourLocation => 'Il-Post Tiegħek';

  @override
  String get whatDoYouNeedHelpWith => 'X\'għajnuna għandek bżonn?';

  @override
  String get additionalDetailsOptional =>
      'Dettalji Addizzjonali (mhux obbligatorju)';

  @override
  String get describeSituation => 'Iddeskrivi s-sitwazzjoni...';

  @override
  String get alertTrustedRespondersFirst =>
      'Navviza l-respondenti fil-fiduċja tiegħi l-ewwel';

  @override
  String get trustedRespondersDescription =>
      'L-għażliet ħbieb/familja tiegħek se jiġu avvizati qabel il-komunità ġenerali';

  @override
  String sendingAlert(String emergencyType) {
    return 'Qed nibgħat allarm: $emergencyType';
  }

  @override
  String get sendAlertNow => 'IBGĦAT ALLARM ISSA';

  @override
  String get pleaseSelectEmergencyType =>
      'Jekk jogħġbok agħżel tip ta\' emerġenza';

  @override
  String get categoryLifeThreatening => '🔴 Theddid għall-Ħajja';

  @override
  String get categorySecuritySafety => '🟠 Sigurtà/Sikurezza';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urġenti u Sensittiv għall-Ħin';

  @override
  String get categoryNonLifeThreatening => '🟢 Mhux Theddid għall-Ħajja';

  @override
  String get emergencyCprCardiacName => 'CPR / Arrest Kardijaku';

  @override
  String get emergencyCprCardiacDesc =>
      'Persuna mhix qed twieġeb u mhix qed tieħu n-nifs';

  @override
  String get emergencyAedName => 'Kunsinna AED';

  @override
  String get emergencyAedDesc => 'Għandi bżonn AED immedjatament';

  @override
  String get emergencyOverdoseName => 'Overdose / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Suspett ta\' overdose ta\' droga, għandi bżonn naloxone';

  @override
  String get emergencyChokingName => 'Hanaq / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Persuna qed tanqad u ma tistax tieħu n-nifs';

  @override
  String get emergencyFireName => 'Nar / Evakwazzjoni';

  @override
  String get emergencyFireDesc =>
      'Emerġenza ta\' nar, għandi bżonn għajnuna għall-evakwazzjoni';

  @override
  String get emergencyConsentName =>
      'Emerġenza ta\' Kunsens fil-Kamra tas-Sodda';

  @override
  String get emergencyConsentDesc => 'Safeword sejħa, għandi bżonn xhud';

  @override
  String get emergencyBystanderName => 'Xhud Attiv ta\' Bystander';

  @override
  String get emergencyBystanderDesc =>
      'Għandi bżonn preżenza biex niżdieġ konflitt';

  @override
  String get emergencyMissingPetName => 'Annimal Domestiku Mitluf';

  @override
  String get emergencyMissingPetDesc =>
      'Annimal domestiku mitluf jew ħarab, għandi bżonn parti ta\' tfittxija';

  @override
  String get emergencyWellnessCheckName => 'Verifika tas-Saħħa';

  @override
  String get emergencyWellnessCheckDesc =>
      'Iċċekkja fuq xi ħadd li jista\' jkollu bżonn għajnuna';

  @override
  String get emergencyQuitCompanionName => 'Sieħeb ta\' Quit';

  @override
  String get emergencyQuitCompanionDesc =>
      'Niġġieled ma\' xewqa, għandi bżonn appoġġ';

  @override
  String get emergencyCompanionshipName => 'Sħubija';

  @override
  String get emergencyCompanionshipDesc => 'Nħoss waħdani jew iżolat';

  @override
  String get emergency911CoordinationName => 'Koordinazzjoni 911';

  @override
  String get emergency911CoordinationDesc =>
      'Għandi bżonn għajnuna biex nissejjaħ u nikkoordina s-servizzi ta\' emerġenza';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Il-Kapaċitajiet Tiegħi';

  @override
  String capabilitiesSelected(int count) {
    return '$count magħżula';
  }

  @override
  String get alertSchedule => 'Skeda tal-Allarmijiet';

  @override
  String get setAvailabilityHours =>
      'Issettja s-siegħat ta\' disponibbiltà tiegħek';

  @override
  String get trustedResponders => 'Respondenti fil-Fiduċja';

  @override
  String get responseHistory => 'Storja tar-Risposti';

  @override
  String get privacyAndSafety => 'Privatezza u Sikurezza';

  @override
  String get helpAndSupport => 'Għajnuna u Appoġġ';

  @override
  String get aboutNayborSos => 'Dwar Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Termini u Politika tal-Privatezza';

  @override
  String get signOut => 'Oħroġ';

  @override
  String version(String version) {
    return 'Verżjoni $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS jgħaqqad lill-ġirien f\'emerġenzi, joħloq network ta\' respondenti mgħaġġla li jistgħu jipprovdu għajnuna kritika qabel ma jaslu r-respondenti professjonali l-ewwel.';

  @override
  String get aboutDialogContent2 =>
      'Kulħadd jista\' jkun erou. M\'għandekx bżonn taħriġ speċjali biex tissalva ħajja. Xi kultant l-aktar intervent b\'saħħtu hu sempliċement li tidher.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Agħlaq';

  @override
  String get signOutQuestion => 'Toħroġ?';

  @override
  String get signOutConfirm => 'Int żgur li trid toħroġ?';

  @override
  String get cancel => 'Ikkanċella';

  @override
  String get signedOutSuccessfully => 'Ħriġt b\'suċċess';

  @override
  String get settings => 'Settijiet';

  @override
  String get capabilityWellnessCheck => 'Verifika tas-Saħħa';

  @override
  String get capabilityQuitCompanion => 'Sieħeb ta\' Quit';

  @override
  String get capabilityActiveBystander => 'Bystander Attiv';

  @override
  String get translationTier1Label => 'Traduzzjoni AI b\'Kunfidenza Għolja';

  @override
  String get translationTier2Label => 'Traduzzjoni AI b\'Kunfidenza Tajba';

  @override
  String get translationTier3Label => 'Traduzzjoni AI b\'Kunfidenza Medja';

  @override
  String get translationTier4Label => 'Traduzzjoni AI b\'Kunfidenza Baxxa';

  @override
  String get translationTier1Notice =>
      'Din it-traduzzjoni ġiet iġġenerata mill-AI b\'kunfidenza għolja. Reviżjoni professjonali rakkomandata għall-użu fil-produzzjoni.';

  @override
  String get translationTier2Notice =>
      'Din it-traduzzjoni ġiet iġġenerata mill-AI b\'kunfidenza tajba. Reviżjoni professjonali rakkomandata għat-terminoloġija ta\' kunsens u emerġenza kritika għas-sikurezza.';

  @override
  String get translationTier3Notice =>
      '⚠️ Din it-traduzzjoni teħtieġ reviżjoni umana għal frażijiet ta\' emerġenza kritiċi għas-sikurezza qabel l-użu fil-produzzjoni.';

  @override
  String get translationTier4Notice =>
      '⚠️ Din hija traduzzjoni abbozz biss. Traduzzjoni professjonali meħtieġa qabel l-użu fil-produzzjoni.';

  @override
  String get selectLanguage => 'Agħżel Lingwa';

  @override
  String get searchLanguagesHint => 'Fittex lingwi';

  @override
  String translationQualityLabel(String quality) {
    return 'Kwalità tat-Traduzzjoni: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Għin biex intejjbu t-traduzzjonijiet - irrapporta kwistjonijiet jew ikkontribwixxi traduzzjonijiet aħjar!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
