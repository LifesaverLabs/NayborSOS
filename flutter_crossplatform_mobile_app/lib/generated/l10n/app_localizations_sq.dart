// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutëmënit dhe Minutëgrat e Ditëve të Sotme';

  @override
  String get signUpToHelp => 'Regjistrohuni për të ndihmuar fqinjët tuaj';

  @override
  String get enterPhoneNumber =>
      'Vendosni numrin tuaj të telefonit për të filluar';

  @override
  String get phoneNumberLabel => 'Numri i Telefonit';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Dërgo Kodin e Verifikimit';

  @override
  String get enterVerificationCode => 'Vendosni kodin e verifikimit';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Dërguam një kod te $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kodi i Verifikimit';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifiko dhe Vazhdo';

  @override
  String get changePhoneNumber => 'Ndrysho numrin e telefonit';

  @override
  String get pleaseEnterPhoneNumber =>
      'Ju lutemi vendosni numrin tuaj të telefonit';

  @override
  String get pleaseEnterVerificationCode =>
      'Ju lutemi vendosni kodin e verifikimit';

  @override
  String get createProfile => 'Krijo Profil';

  @override
  String get tellUsAboutYourself => 'Na tregoni për veten tuaj';

  @override
  String get profileSetupDescription =>
      'Kjo informacion na ndihmon të ju lidhim me fqinjët që kanë nevojë për ndihmë';

  @override
  String get addPhotoOptional => 'Shto foto (opsionale)';

  @override
  String get fullNameLabel => 'Emri i Plotë *';

  @override
  String get fullNameHint => 'Agim Kelmendi';

  @override
  String get homeAddressLabel => 'Adresa e Shtëpisë *';

  @override
  String get homeAddressHint => 'Rruga Dëshmorët e Kombit, Nr. 123, Ap. 4B';

  @override
  String get homeAddressHelper => 'Përdoret vetëm për përputhjen e afërsisë';

  @override
  String get ageOptionalLabel => 'Mosha (opsionale)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Moshat 70+ mund të vendosin orë të qeta alarmi';

  @override
  String get yourPrivacyMatters => 'Privatësia juaj është e rëndësishme';

  @override
  String get privacyNotice =>
      'Vendndodhja juaj kërkohet vetëm gjatë emergjencave aktive dhe nuk ruhet për kohë të gjatë.';

  @override
  String get continueButton => 'Vazhdo';

  @override
  String get pleaseFillRequiredFields =>
      'Ju lutemi plotësoni të gjitha fushat e kërkuara';

  @override
  String get home => 'Kryefaqja';

  @override
  String get alerts => 'Alarmet';

  @override
  String get profile => 'Profili';

  @override
  String get availableToRespond => 'I Gatshëm për t\'u Përgjigjur';

  @override
  String get notAvailable => 'Jo i Disponueshëm';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Do të merrni alarme emergjence në afërsi';

  @override
  String get toggleOnWhenReady => 'Aktivizoni kur jeni gati të ndihmoni';

  @override
  String get youreNowAvailable =>
      'Tani jeni i disponueshëm për t\'u përgjigjur';

  @override
  String get youWontReceiveAlerts => 'Nuk do të merrni alarme';

  @override
  String get lifeThreatening247Info =>
      'Alarmet që kërcënojnë jetën do t\'ju njoftojnë 24/7. Alarmet jo-urgjente respektojnë orarin tuaj.';

  @override
  String get requestHelp => 'KËRKO NDIHMË';

  @override
  String get yourImpact => 'Ndikimi Juaj';

  @override
  String get responses => 'Përgjigjet';

  @override
  String get avgTime => 'Koha Mesatare';

  @override
  String get yourCapabilities => 'Aftësitë Tuaja';

  @override
  String get edit => 'Modifiko';

  @override
  String get communityNetwork => 'Rrjeti i Komunitetit';

  @override
  String get nearbyResponders => 'Përgjigjësit në Afërsi';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count të disponueshëm';
  }

  @override
  String get coverageRadius => 'Rrezja e Mbulimit';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance milje';
  }

  @override
  String get activeAlerts => 'Alarmet Aktive';

  @override
  String get none => 'Asnjë';

  @override
  String get yourLocation => 'Vendndodhja Juaj';

  @override
  String get whatDoYouNeedHelpWith => 'Për çfarë keni nevojë për ndihmë?';

  @override
  String get additionalDetailsOptional => 'Detaje Shtesë (opsionale)';

  @override
  String get describeSituation => 'Përshkruani situatën...';

  @override
  String get alertTrustedRespondersFirst =>
      'Njofto fillimisht përgjigjësit e mi të besuar';

  @override
  String get trustedRespondersDescription =>
      'Miqtë/familja juaj e zgjedhur do të njoftohen para komunitetit të përgjithshëm';

  @override
  String sendingAlert(String emergencyType) {
    return 'Duke dërguar alarm: $emergencyType';
  }

  @override
  String get sendAlertNow => 'DËRGO ALARMIN TANI';

  @override
  String get pleaseSelectEmergencyType =>
      'Ju lutemi zgjidhni një lloj emergjence';

  @override
  String get categoryLifeThreatening => '🔴 Që Kërcënon Jetën';

  @override
  String get categorySecuritySafety => '🟠 Siguri/Mbrojtje';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgjent/I Ndjeshëm ndaj Kohës';

  @override
  String get categoryNonLifeThreatening => '🟢 Jo Që Kërcënon Jetën';

  @override
  String get emergencyCprCardiacName => 'RKP / Arrest Kardiak';

  @override
  String get emergencyCprCardiacDesc =>
      'Personi është i pavetëdijshëm dhe nuk merr frymë';

  @override
  String get emergencyAedName => 'Dërgim AED';

  @override
  String get emergencyAedDesc => 'Kam nevojë për një AED menjëherë';

  @override
  String get emergencyOverdoseName => 'Mbidozë / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Dyshim për mbidozë droge, nevojë për naloxone';

  @override
  String get emergencyChokingName => 'Mbytje / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Personi po mbyset dhe nuk mund të marrë frymë';

  @override
  String get emergencyFireName => 'Zjarr / Evakuim';

  @override
  String get emergencyFireDesc =>
      'Emergjencë zjarri, nevojë për ndihmë evakuimi';

  @override
  String get emergencyConsentName => 'Emergjencë Pëlqimi në Dhomën e Gjumit';

  @override
  String get emergencyConsentDesc =>
      'U thirr fjalë sigurie, nevojë për dëshmitar';

  @override
  String get emergencyBystanderName => 'Dëshmitar Aktiv i Rastit';

  @override
  String get emergencyBystanderDesc =>
      'Nevojë për prani për të ulur tensionin e konfliktit';

  @override
  String get emergencyMissingPetName => 'Kafshë e Humbur';

  @override
  String get emergencyMissingPetDesc =>
      'Kafsha është humbur ose ka ikur, nevojë për grup kërkimi';

  @override
  String get emergencyWellnessCheckName => 'Kontroll Mirëqenie';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kontrolloni dikë që mund të ketë nevojë për ndihmë';

  @override
  String get emergencyQuitCompanionName => 'Shoqërues për të Lënë';

  @override
  String get emergencyQuitCompanionDesc =>
      'Duke luftuar dëshirën, kam nevojë për mbështetje';

  @override
  String get emergencyCompanionshipName => 'Shoqërim';

  @override
  String get emergencyCompanionshipDesc => 'Ndihem i vetmuar ose i izoluar';

  @override
  String get emergency911CoordinationName => 'Koordinim 911';

  @override
  String get emergency911CoordinationDesc =>
      'Kam nevojë për ndihmë për të thirrur dhe koordinuar 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Aftësitë e Mia';

  @override
  String capabilitiesSelected(int count) {
    return '$count të zgjedhura';
  }

  @override
  String get alertSchedule => 'Orari i Alarmeve';

  @override
  String get setAvailabilityHours => 'Vendosni orët tuaja të disponueshmërisë';

  @override
  String get trustedResponders => 'Përgjigjës të Besuar';

  @override
  String get responseHistory => 'Historia e Përgjigjeve';

  @override
  String get privacyAndSafety => 'Privatësia dhe Siguria';

  @override
  String get helpAndSupport => 'Ndihmë dhe Mbështetje';

  @override
  String get aboutNayborSos => 'Rreth Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Kushtet dhe Politika e Privatësisë';

  @override
  String get signOut => 'Dil';

  @override
  String version(String version) {
    return 'Versioni $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS lidh fqinjët në emergjenca, duke krijuar një rrjet përgjigjësish të shpejtë që mund të ofrojnë ndihmë kritike para se të mbërrijnë përgjigjësit profesionalistë të parë.';

  @override
  String get aboutDialogContent2 =>
      'Të gjithë mund të jenë hero. Nuk keni nevojë për trajnim të veçantë për të shpëtuar një jetë. Ndonjëherë ndërhyrja më e fuqishme është thjesht të shfaqeni.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Mbyll';

  @override
  String get signOutQuestion => 'Dil?';

  @override
  String get signOutConfirm => 'Jeni të sigurt që dëshironi të dilni?';

  @override
  String get cancel => 'Anulo';

  @override
  String get signedOutSuccessfully => 'Dolët me sukses';

  @override
  String get settings => 'Cilësimet';

  @override
  String get capabilityWellnessCheck => 'Kontroll Mirëqenie';

  @override
  String get capabilityQuitCompanion => 'Shoqërues për të Lënë';

  @override
  String get capabilityActiveBystander => 'Dëshmitar Aktiv';

  @override
  String get translationTier1Label => 'Përkthim AI me Besim të Lartë';

  @override
  String get translationTier2Label => 'Përkthim AI me Besim të Mirë';

  @override
  String get translationTier3Label => 'Përkthim AI me Besim Mesatar';

  @override
  String get translationTier4Label => 'Përkthim AI me Besim të Ulët';

  @override
  String get translationTier1Notice =>
      'Ky përkthim është krijuar nga AI me besim të lartë. Rishikimi profesional rekomandohet për përdorim në prodhim.';

  @override
  String get translationTier2Notice =>
      'Ky përkthim është krijuar nga AI me besim të mirë. Rishikimi profesional rekomandohet për terminologjinë kritike të sigurisë së pëlqimit dhe emergjencave.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ky përkthim kërkon rishikim njerëzor për frazat kritike të emergjencave të sigurisë para përdorimit në prodhim.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ky është vetëm një përkthim skicë. Përkthimi profesional kërkohet para përdorimit në prodhim.';

  @override
  String get selectLanguage => 'Zgjidh Gjuhën';

  @override
  String get searchLanguagesHint => 'Kërko gjuhë';

  @override
  String translationQualityLabel(String quality) {
    return 'Cilësia e Përkthimit: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ndihmoni të përmirësojmë përkthimet - raportoni probleme ose kontribuoni përkthime më të mira!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
