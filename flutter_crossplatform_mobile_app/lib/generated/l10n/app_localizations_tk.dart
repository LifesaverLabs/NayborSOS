// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkmen (`tk`).
class AppLocalizationsTk extends AppLocalizations {
  AppLocalizationsTk([String locale = 'tk']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Häzirki Zaman Minutmenleri we Minutaýallary';

  @override
  String get signUpToHelp => 'Goňşylaryňyza kömek etmek üçin hasaba duruň';

  @override
  String get enterPhoneNumber => 'Başlamak üçin telefon belgiňizi giriziň';

  @override
  String get phoneNumberLabel => 'Telefon Belgisi';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Tassyklama Kodyny Iber';

  @override
  String get enterVerificationCode => 'Tassyklama kodyny giriziň';

  @override
  String verificationCodeSent(String phoneNumber) {
    return '$phoneNumber nomerine kod iberdik';
  }

  @override
  String get verificationCodeLabel => 'Tassyklama Kody';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Tassykla we Dowam Et';

  @override
  String get changePhoneNumber => 'Telefon belgiňizi üýtget';

  @override
  String get pleaseEnterPhoneNumber => 'Telefon belgiňizi giriziň';

  @override
  String get pleaseEnterVerificationCode => 'Tassyklama kodyny giriziň';

  @override
  String get createProfile => 'Profil Döret';

  @override
  String get tellUsAboutYourself => 'Öziňiz hakda aýdyň';

  @override
  String get profileSetupDescription =>
      'Bu maglumatlar kömege mätäç goňşylaryňyz bilen baglanyşyga kömek edýär';

  @override
  String get addPhotoOptional => 'Surat goş (islegsiz)';

  @override
  String get fullNameLabel => 'Doly Ady *';

  @override
  String get fullNameHint => 'Jahan Durdy';

  @override
  String get homeAddressLabel => 'Öý Salgysy *';

  @override
  String get homeAddressHint => 'Magtymguly köçesi 123, 4B kwartira';

  @override
  String get homeAddressHelper => 'Diňe ýakynlyk tapyş üçin ulanylýar';

  @override
  String get ageOptionalLabel => 'Ýaş (islegsiz)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70+ ýaşly adamlar ýumşak duýduryş wagtlaryny belläp bilerler';

  @override
  String get yourPrivacyMatters => 'Gizlinligiňiz möhümdir';

  @override
  String get privacyNotice =>
      'Siziň ýerleşişiňiz diňe işjeň gyssagly ýagdaýlarda soralýar we uzak möhletde saklanmaýar.';

  @override
  String get continueButton => 'Dowam Et';

  @override
  String get pleaseFillRequiredFields => 'Zerur ähli meýdanlary dolduryň';

  @override
  String get home => 'Baş Sahypa';

  @override
  String get alerts => 'Duýduryşlar';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Jogap Bermäge Taýyn';

  @override
  String get notAvailable => 'Elýeterli Däl';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Ýakyn töwrekdäki gyssagly duýduryşlary alarsyňyz';

  @override
  String get toggleOnWhenReady => 'Kömek bermäge taýyn bolanyňyzda açyň';

  @override
  String get youreNowAvailable => 'Indi jogap bermäge taýynsyňyz';

  @override
  String get youWontReceiveAlerts => 'Duýduryşlary almazsynyz';

  @override
  String get lifeThreatening247Info =>
      'Ömre howply duýduryşlar 24/7 size habar berer. Gyssagly däl duýduryşlar wagtyňyza hormat goýýar.';

  @override
  String get requestHelp => 'KÖMEK SORAŇ';

  @override
  String get yourImpact => 'Siziň Täsiriňiz';

  @override
  String get responses => 'Jogaplar';

  @override
  String get avgTime => 'Orta Wagt';

  @override
  String get yourCapabilities => 'Siziň Ukybylaryňyz';

  @override
  String get edit => 'Redaktirle';

  @override
  String get communityNetwork => 'Jemgyýet Ulgamy';

  @override
  String get nearbyResponders => 'Ýakyn Jogap Berýänler';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count elýeterli';
  }

  @override
  String get coverageRadius => 'Gurşaw Radiusy';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Işjeň Duýduryşlar';

  @override
  String get none => 'Hiç zat';

  @override
  String get yourLocation => 'Siziň Ýeriňiz';

  @override
  String get whatDoYouNeedHelpWith => 'Näme üçin kömek gerek?';

  @override
  String get additionalDetailsOptional => 'Goşmaça Jikme-jiklikler (islegsiz)';

  @override
  String get describeSituation => 'Ýagdaýy düşündiriň...';

  @override
  String get alertTrustedRespondersFirst =>
      'Ilki bilen ynanýan jogapçylaryma habar ber';

  @override
  String get trustedRespondersDescription =>
      'Saýlanan dostlaryňyz/maşgalanyňyz umumy jemgyýetden öň habardar ediler';

  @override
  String sendingAlert(String emergencyType) {
    return 'Duýduryş iberilýär: $emergencyType';
  }

  @override
  String get sendAlertNow => 'HÄZIR DUÝDURYŞ IBER';

  @override
  String get pleaseSelectEmergencyType => 'Gyssagly ýagdaý görnüşini saýlaň';

  @override
  String get categoryLifeThreatening => '🔴 Ömre Howply';

  @override
  String get categorySecuritySafety => '🟠 Howpsuzlyk';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Gyssagly Wagtly';

  @override
  String get categoryNonLifeThreatening => '🟢 Ömre Howply Däl';

  @override
  String get emergencyCprCardiacName => 'CPR / Ýürek Durmagy';

  @override
  String get emergencyCprCardiacDesc => 'Adam jogapsyz we dem almaýar';

  @override
  String get emergencyAedName => 'AED Eltip Berme';

  @override
  String get emergencyAedDesc => 'Derrew AED gerek';

  @override
  String get emergencyOverdoseName => 'Dozany Aşma / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Neşe dozany aşma şübhesi, nalokson gerek';

  @override
  String get emergencyChokingName => 'Bogulma / Heimlich';

  @override
  String get emergencyChokingDesc => 'Adam bogulýar we dem alyp bilmeýär';

  @override
  String get emergencyFireName => 'Ýangyn / Ewakuasiýa';

  @override
  String get emergencyFireDesc => 'Ýangyn howpy, ewakuasiýa kömegi gerek';

  @override
  String get emergencyConsentName => 'Ýatylýan Otag Razyçylyk Howpy';

  @override
  String get emergencyConsentDesc => 'Howpsuzlyk sözi aýdyldy, şaýat gerek';

  @override
  String get emergencyBystanderName => 'Işjeň Şaýat';

  @override
  String get emergencyBystanderDesc => 'Çaknyşygy azaltmak üçin gatnaşyk gerek';

  @override
  String get emergencyMissingPetName => 'Ýitiren Haýwan';

  @override
  String get emergencyMissingPetDesc =>
      'Haýwan ýitdi ýa-da gaçdy, gözleg topary gerek';

  @override
  String get emergencyWellnessCheckName => 'Saglygy Barlag';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kömege mätäç bolup biljek adamyň ýagdaýyny barlaň';

  @override
  String get emergencyQuitCompanionName => 'Taşlamak Kömekçisi';

  @override
  String get emergencyQuitCompanionDesc =>
      'Isleg bilen göreşýärin, goldaw gerek';

  @override
  String get emergencyCompanionshipName => 'Dostluk';

  @override
  String get emergencyCompanionshipDesc => 'Ýalňyzlyk duýýaryn';

  @override
  String get emergency911CoordinationName => '911 Koordinasiýasy';

  @override
  String get emergency911CoordinationDesc =>
      '911 jaň etmek we koordinasiýa üçin kömek gerek';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narkan';

  @override
  String get myCapabilities => 'Meniň Ukyblarym';

  @override
  String capabilitiesSelected(int count) {
    return '$count saýlandy';
  }

  @override
  String get alertSchedule => 'Duýduryş Meýilnamasy';

  @override
  String get setAvailabilityHours => 'Elýeterlilik wagtlaryňyzy belläň';

  @override
  String get trustedResponders => 'Ynanýan Jogapçylar';

  @override
  String get responseHistory => 'Jogap Taryhy';

  @override
  String get privacyAndSafety => 'Gizlinlik we Howpsuzlyk';

  @override
  String get helpAndSupport => 'Kömek we Goldaw';

  @override
  String get aboutNayborSos => 'Naybor SOS hakda';

  @override
  String get termsAndPrivacyPolicy => 'Şertler we Gizlinlik Syýasaty';

  @override
  String get signOut => 'Çyk';

  @override
  String version(String version) {
    return 'Wersiýa $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS gyssagly ýagdaýlarda goňşylary birleşdirýär, professional kömekçiler gelmezden ozal möhüm kömek berip biljek çalt jogapçylaryň ulgamyny döredýär.';

  @override
  String get aboutDialogContent2 =>
      'Her kim gahryman bolup biler. Durmuş halas etmek üçin ýörite taýýarlyk gerek däl. Käwagt iň güýçli goşant diňe ýerine ýetmekdir.';

  @override
  String get lifesaverLabs =>
      'Lifesaver Labs Jemgyýetçilik Peýdasy Korporasiýasy';

  @override
  String get close => 'Ýap';

  @override
  String get signOutQuestion => 'Çykmaly?';

  @override
  String get signOutConfirm => 'Hakykatdan hem çykmak isleýärsiňizmi?';

  @override
  String get cancel => 'Ýatyr';

  @override
  String get signedOutSuccessfully => 'Üstünlikli çykdyňyz';

  @override
  String get settings => 'Sazlamalar';

  @override
  String get capabilityWellnessCheck => 'Saglygy Barlag';

  @override
  String get capabilityQuitCompanion => 'Taşlamak Kömekçisi';

  @override
  String get capabilityActiveBystander => 'Işjeň Şaýat';

  @override
  String get translationTier1Label => 'Ýokary Ynançly AI Terjimesi';

  @override
  String get translationTier2Label => 'Gowy Ynançly AI Terjimesi';

  @override
  String get translationTier3Label => 'Orta Ynançly AI Terjimesi';

  @override
  String get translationTier4Label => 'Pes Ynançly AI Terjimesi';

  @override
  String get translationTier1Notice =>
      'Bu terjime ýokary ynanç bilen AI tarapyndan döredildi. Önümçilik üçin professional gözden geçirme maslahat berilýär.';

  @override
  String get translationTier2Notice =>
      'Bu terjime gowy ynanç bilen AI tarapyndan döredildi. Howpsuzlyk üçin möhüm razyçylyk we gyssagly söz düzümler üçin professional gözden geçirme maslahat berilýär.';

  @override
  String get translationTier3Notice =>
      '⚠️ Bu terjime önümçilik ulanmakdan öň howpsuzlyk üçin möhüm gyssagly sözlemler üçin ynsan gözden geçirmesini talap edýär.';

  @override
  String get translationTier4Notice =>
      '⚠️ Bu diňe garalama terjimesidir. Önümçilik ulanmakdan öň professional terjime zerurdyr.';

  @override
  String get selectLanguage => 'Dil Saýla';

  @override
  String get searchLanguagesHint => 'Dilleri gözle';

  @override
  String translationQualityLabel(String quality) {
    return 'Terjime Hili: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Terjimeleri gowulandyrmaga kömek ediň - meseleleri habar beriň ýa-da has gowy terjimeler goşuň!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
