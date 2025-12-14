// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Igbo (`ig`).
class AppLocalizationsIg extends AppLocalizations {
  AppLocalizationsIg([String locale = 'ig']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Ndị Ọgbọ Oge A';

  @override
  String get signUpToHelp => 'Debanye aha ka ị nyere ndị agbata obi gị aka';

  @override
  String get enterPhoneNumber => 'Tinye nọmba ekwentị gị ka ị malite';

  @override
  String get phoneNumberLabel => 'Nọmba Ekwentị';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Ziga Koodu Nkwenye';

  @override
  String get enterVerificationCode => 'Tinye koodu nkwenye';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Anyị zigara koodu na $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Koodu Nkwenye';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Kwenye ma Gaa N\'ihu';

  @override
  String get changePhoneNumber => 'Gbanwee nọmba ekwentị';

  @override
  String get pleaseEnterPhoneNumber => 'Biko tinye nọmba ekwentị gị';

  @override
  String get pleaseEnterVerificationCode => 'Biko tinye koodu nkwenye ahụ';

  @override
  String get createProfile => 'Mepụta Profaịlụ';

  @override
  String get tellUsAboutYourself => 'Gwa anyị banyere onwe gị';

  @override
  String get profileSetupDescription =>
      'Ozi a na-enyere anyị aka ijikọ gị na ndị agbata obi chọrọ enyemaka';

  @override
  String get addPhotoOptional => 'Tinye foto (ọ bụghị iwu)';

  @override
  String get fullNameLabel => 'Aha Zuru Ezu *';

  @override
  String get fullNameHint => 'John Smith';

  @override
  String get homeAddressLabel => 'Adreesị Ụlọ *';

  @override
  String get homeAddressHint => '123 Main St, Apt 4B';

  @override
  String get homeAddressHelper => 'A na-eji naanị maka njikọta nso';

  @override
  String get ageOptionalLabel => 'Afọ (ọ bụghị iwu)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Ndị afọ 70 gbagoro nwere ike ịhazi oge mkpọtụ dị nwayọọ';

  @override
  String get yourPrivacyMatters => 'Nzuzo gị dị mkpa';

  @override
  String get privacyNotice =>
      'A na-achọ ọnọdụ gị naanị n\'oge ihe mberede na-eme na anaghị echekwa ya ogologo oge.';

  @override
  String get continueButton => 'Gaa N\'ihu';

  @override
  String get pleaseFillRequiredFields => 'Biko jupụta ihe niile achọrọ';

  @override
  String get home => 'Ụlọ';

  @override
  String get alerts => 'Mkpọtụ';

  @override
  String get profile => 'Profaịlụ';

  @override
  String get availableToRespond => 'Dị Njikere Ịza';

  @override
  String get notAvailable => 'Adịghị Njikere';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Ị ga-anata mkpọtụ ihe mberede dị nso';

  @override
  String get toggleOnWhenReady => 'Gbanwee mgbe ị dị njikere inye aka';

  @override
  String get youreNowAvailable => 'Ị dị njikere ịza ugbu a';

  @override
  String get youWontReceiveAlerts => 'Ị gaghị anata mkpọtụ';

  @override
  String get lifeThreatening247Info =>
      'Mkpọtụ ihe egwu ndụ ga-akpọte gị 24/7. Mkpọtụ na-adịghị ngwa ngwa na-asọpụrụ nhazi oge gị.';

  @override
  String get requestHelp => 'RỊỌ ENYEMAKA';

  @override
  String get yourImpact => 'Mmetụta Gị';

  @override
  String get responses => 'Nzaghachi';

  @override
  String get avgTime => 'Oge Nkezi';

  @override
  String get yourCapabilities => 'Ikike Gị';

  @override
  String get edit => 'Dezie';

  @override
  String get communityNetwork => 'Netwọk Obodo';

  @override
  String get nearbyResponders => 'Ndị Nzaghachi Dị Nso';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count dị njikere';
  }

  @override
  String get coverageRadius => 'Ogologo Mkpuchi';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance maịl';
  }

  @override
  String get activeAlerts => 'Mkpọtụ Na-arụ Ọrụ';

  @override
  String get none => 'Ọ dịghị';

  @override
  String get yourLocation => 'Ebe Ị Nọ';

  @override
  String get whatDoYouNeedHelpWith => 'Gịnị ka ị chọrọ enyemaka na ya?';

  @override
  String get additionalDetailsOptional => 'Nkọwa Ndị Ọzọ (ọ bụghị iwu)';

  @override
  String get describeSituation => 'Kọwaa ọnọdụ ahụ...';

  @override
  String get alertTrustedRespondersFirst =>
      'Kpọtee ndị nzaghachi m tụkwasịrị obi mbụ';

  @override
  String get trustedRespondersDescription =>
      'A ga-agwa ndị enyi/ezinụlọ gị ahọpụtara tupu obodo niile';

  @override
  String sendingAlert(String emergencyType) {
    return 'Na-eziga mkpọtụ: $emergencyType';
  }

  @override
  String get sendAlertNow => 'ZIGA MKPỌTỤ UGBU A';

  @override
  String get pleaseSelectEmergencyType => 'Biko họrọ ụdị ihe mberede';

  @override
  String get categoryLifeThreatening => '🔴 Ihe Egwu Ndụ';

  @override
  String get categorySecuritySafety => '🟠 Nchekwa/Nchebe';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Ngwa Ngwa Nke Oge';

  @override
  String get categoryNonLifeThreatening => '🟢 Na-abụghị Ihe Egwu Ndụ';

  @override
  String get emergencyCprCardiacName => 'CPR / Nkwụsị Obi';

  @override
  String get emergencyCprCardiacDesc => 'Onye ahụ anaghị aza ma anaghị eku ume';

  @override
  String get emergencyAedName => 'Nnyefe AED';

  @override
  String get emergencyAedDesc => 'Chọrọ AED ozugbo';

  @override
  String get emergencyOverdoseName => 'Ịṅụbiga Ọgwụ / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Echere na ọ bụ ịṅụbiga ọgwụ, chọrọ naloxone';

  @override
  String get emergencyChokingName => 'Iku Ume / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Onye ahụ na-aku ume ma enweghị ike iku ume';

  @override
  String get emergencyFireName => 'Ọkụ / Mbupụ';

  @override
  String get emergencyFireDesc => 'Ihe mberede ọkụ, chọrọ enyemaka mbupụ';

  @override
  String get emergencyConsentName => 'Ihe Mberede Nkwenye N\'ime Ụlọ';

  @override
  String get emergencyConsentDesc => 'Akpọrọ okwu nchekwa, chọrọ onye akaebe';

  @override
  String get emergencyBystanderName => 'Onye Akaebe Na-arụsi Ọrụ Ike';

  @override
  String get emergencyBystanderDesc => 'Chọrọ ọnụnọ iji belata esemokwu';

  @override
  String get emergencyMissingPetName => 'Anụ Ụlọ Furu Efu';

  @override
  String get emergencyMissingPetDesc =>
      'Anụ ụlọ furu efu ma ọ bụ gbapụrụ, chọrọ ndị nchọta';

  @override
  String get emergencyWellnessCheckName => 'Nlele Ahụike';

  @override
  String get emergencyWellnessCheckDesc => 'Lelee onye nwere ike ịchọ enyemaka';

  @override
  String get emergencyQuitCompanionName => 'Onye Enyemaka Nkwụsị';

  @override
  String get emergencyQuitCompanionDesc =>
      'Na-alụso agụụ ọjọọ ọgụ, chọrọ nkwado';

  @override
  String get emergencyCompanionshipName => 'Mkpakọrịta';

  @override
  String get emergencyCompanionshipDesc =>
      'Na-enwe mmetụta owu na-ama ma ọ bụ iche onwe ya';

  @override
  String get emergency911CoordinationName => 'Nhazi 911';

  @override
  String get emergency911CoordinationDesc => 'Chọrọ enyemaka ịkpọ na ịhazi 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Ikike M';

  @override
  String capabilitiesSelected(int count) {
    return '$count ahọrọla';
  }

  @override
  String get alertSchedule => 'Nhazi Mkpọtụ';

  @override
  String get setAvailabilityHours => 'Hazie oge ọrụ gị';

  @override
  String get trustedResponders => 'Ndị Nzaghachi A Tụkwasịrị Obi';

  @override
  String get responseHistory => 'Akụkọ Nzaghachi';

  @override
  String get privacyAndSafety => 'Nzuzo na Nchekwa';

  @override
  String get helpAndSupport => 'Enyemaka na Nkwado';

  @override
  String get aboutNayborSos => 'Banyere Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Usoro na Iwu Nzuzo';

  @override
  String get signOut => 'Pụọ';

  @override
  String version(String version) {
    return 'Ụdị $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS na-ejikọ ndị agbata obi n\'oge ihe mberede, na-emepụta netwọk ndị nzaghachi ngwa ngwa nwere ike inye enyemaka dị mkpa tupu ndị ọrụ mbụ ọkachamara erute.';

  @override
  String get aboutDialogContent2 =>
      'Onye ọ bụla nwere ike ịbụ dike. Ị chọghị ọzụzụ pụrụ iche iji chekwaa ndụ. Mgbe ụfọdụ ntinye aka kacha ike bụ naanị igosi.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Mechie';

  @override
  String get signOutQuestion => 'Pụọ?';

  @override
  String get signOutConfirm => 'Ị ji n\'aka na ị chọrọ ịpụ?';

  @override
  String get cancel => 'Kagbuo';

  @override
  String get signedOutSuccessfully => 'Apụọla nke ọma';

  @override
  String get settings => 'Ntọala';

  @override
  String get capabilityWellnessCheck => 'Nlele Ahụike';

  @override
  String get capabilityQuitCompanion => 'Onye Enyemaka Nkwụsị';

  @override
  String get capabilityActiveBystander => 'Onye Na-ahụ Ihe Na-arụsi Ọrụ Ike';

  @override
  String get translationTier1Label => 'Nsụgharị AI Nke Ntụkwasị Obi Dị Elu';

  @override
  String get translationTier2Label => 'Nsụgharị AI Nke Ntụkwasị Obi Dị Mma';

  @override
  String get translationTier3Label =>
      'Nsụgharị AI Nke Ntụkwasị Obi Dị N\'etiti';

  @override
  String get translationTier4Label =>
      '⚠️ Nke a bụ nsụgharị edemede naanị. Achọrọ nsụgharị ọkachamara tupu mmepụta.';

  @override
  String get translationTier1Notice =>
      'AI mepụtara nsụgharị a na ntụkwasị obi dị elu. A na-atụ aro nyocha ọkachamara maka iji mmepụta.';

  @override
  String get translationTier2Notice =>
      'AI mepụtara nsụgharị a na ntụkwasị obi dị mma. A na-atụ aro nyocha ọkachamara maka nkwenye na-adị ize ndụ na okwu ihe mberede.';

  @override
  String get translationTier3Notice =>
      '⚠️ Nsụgharị a chọrọ nyocha mmadụ maka nkebi okwu ihe mberede dị ize ndụ tupu eji ya mepụta ihe.';

  @override
  String get translationTier4Notice =>
      '⚠️ This is a draft translation only. Professional translation required before production use.';

  @override
  String get selectLanguage => 'Họrọ Asụsụ';

  @override
  String get searchLanguagesHint => 'Chọọ asụsụ';

  @override
  String translationQualityLabel(String quality) {
    return 'Ogo Nsụgharị: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Nyere aka imeziwanye nsụgharị - kọọ nsogbu ma ọ bụ tinye nsụgharị ka mma!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
