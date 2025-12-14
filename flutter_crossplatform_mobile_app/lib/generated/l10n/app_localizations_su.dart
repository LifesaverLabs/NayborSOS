// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sundanese (`su`).
class AppLocalizationsSu extends AppLocalizations {
  AppLocalizationsSu([String locale = 'su']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen & Minutewomen Jaman Ayeuna';

  @override
  String get signUpToHelp => 'Daptar pikeun mantuan tatangga';

  @override
  String get enterPhoneNumber => 'Lebetkeun nomer telepon kanggo ngamimitian';

  @override
  String get phoneNumberLabel => 'Nomer Telepon';

  @override
  String get phoneNumberHint => '(022) 123-4567';

  @override
  String get sendVerificationCode => 'Kirim Kode Verifikasi';

  @override
  String get enterVerificationCode => 'Lebetkeun kode verifikasi';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Kami parantos ngirim kode ka $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kode Verifikasi';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifikasi & Teraskeun';

  @override
  String get changePhoneNumber => 'Robih nomer telepon';

  @override
  String get pleaseEnterPhoneNumber => 'Punten lebetkeun nomer telepon anjeun';

  @override
  String get pleaseEnterVerificationCode => 'Punten lebetkeun kode verifikasi';

  @override
  String get createProfile => 'Jieun Profil';

  @override
  String get tellUsAboutYourself => 'Carioskeun ihwal anjeun';

  @override
  String get profileSetupDescription =>
      'Inpormasi ieu mantuan kami nyambungkeun anjeun sareng tatangga nu peryogi bantosan';

  @override
  String get addPhotoOptional => 'Tambahkeun poto (pilihan)';

  @override
  String get fullNameLabel => 'Nami Lengkep *';

  @override
  String get fullNameHint => 'Asep Sunandar';

  @override
  String get homeAddressLabel => 'Alamat Bumi *';

  @override
  String get homeAddressHint => 'Jl. Merdeka No. 123, RT 02/05';

  @override
  String get homeAddressHelper => 'Dipaké kanggo milarian jarak wungkul';

  @override
  String get ageOptionalLabel => 'Umur (pilihan)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Umur 70+ tiasa nyetél jam peringatan anu lemes';

  @override
  String get yourPrivacyMatters => 'Privasi anjeun penting';

  @override
  String get privacyNotice =>
      'Lokasi anjeun ngan ukur ditanyakeun nalika darurat aktif sareng henteu disimpen jangka panjang.';

  @override
  String get continueButton => 'Teraskeun';

  @override
  String get pleaseFillRequiredFields =>
      'Punten eusian sadaya widang nu diperyogikeun';

  @override
  String get home => 'Imah';

  @override
  String get alerts => 'Peringatan';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Siap Ngarespon';

  @override
  String get notAvailable => 'Henteu Siap';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Anjeun bakal nampi peringatan darurat di sabudeureun';

  @override
  String get toggleOnWhenReady => 'Hurungkeun nalika siap mantuan';

  @override
  String get youreNowAvailable => 'Anjeun ayeuna siap ngarespon';

  @override
  String get youWontReceiveAlerts => 'Anjeun moal nampi peringatan';

  @override
  String get lifeThreatening247Info =>
      'Peringatan anu ngancam jiwa bakal ngabéjakeun anjeun 24/7. Peringatan nu henteu urgent ngahormatan jadwal anjeun.';

  @override
  String get requestHelp => 'MÉNTA BANTOSAN';

  @override
  String get yourImpact => 'Dampak Anjeun';

  @override
  String get responses => 'Réspon';

  @override
  String get avgTime => 'Waktos Rata-rata';

  @override
  String get yourCapabilities => 'Kamampuan Anjeun';

  @override
  String get edit => 'Édit';

  @override
  String get communityNetwork => 'Jaringan Masarakat';

  @override
  String get nearbyResponders => 'Responder Deukeut';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count sadia';
  }

  @override
  String get coverageRadius => 'Radius Jangkauan';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilométer';
  }

  @override
  String get activeAlerts => 'Peringatan Aktif';

  @override
  String get none => 'Euweuh';

  @override
  String get yourLocation => 'Lokasi Anjeun';

  @override
  String get whatDoYouNeedHelpWith => 'Naon nu peryogi bantosan?';

  @override
  String get additionalDetailsOptional => 'Rincian Tambahan (pilihan)';

  @override
  String get describeSituation => 'Terangkeun kaayaanana...';

  @override
  String get alertTrustedRespondersFirst =>
      'Béjakeun responder dipercaya heula';

  @override
  String get trustedRespondersDescription =>
      'Babaturan/kulawarga pilihan anjeun bakal dibéjakeun sateuacan masarakat umum';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ngirim peringatan: $emergencyType';
  }

  @override
  String get sendAlertNow => 'KIRIM PERINGATAN AYEUNA';

  @override
  String get pleaseSelectEmergencyType => 'Punten pilih jinis darurat';

  @override
  String get categoryLifeThreatening => '🔴 Ngancam Jiwa';

  @override
  String get categorySecuritySafety => '🟠 Kaamanan/Kasalametan';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent Sénsitip Waktos';

  @override
  String get categoryNonLifeThreatening => '🟢 Henteu Ngancam Jiwa';

  @override
  String get emergencyCprCardiacName => 'CPR / Serangan Jantung';

  @override
  String get emergencyCprCardiacDesc => 'Jalma teu sadar sareng teu napas';

  @override
  String get emergencyAedName => 'Pangiriman AED';

  @override
  String get emergencyAedDesc => 'Peryogi AED langsung';

  @override
  String get emergencyOverdoseName => 'Overdosis / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Disangka overdosis narkoba, peryogi nalokson';

  @override
  String get emergencyChokingName => 'Keselak / Heimlich';

  @override
  String get emergencyChokingDesc => 'Jalma keselak sareng teu tiasa napas';

  @override
  String get emergencyFireName => 'Seuneu / Évakuasi';

  @override
  String get emergencyFireDesc => 'Darurat seuneu, peryogi bantosan évakuasi';

  @override
  String get emergencyConsentName => 'Darurat Persetujuan Kamar Tidur';

  @override
  String get emergencyConsentDesc => 'Kecap aman disebut, peryogi saksi';

  @override
  String get emergencyBystanderName => 'Saksi Bystander Aktif';

  @override
  String get emergencyBystanderDesc => 'Peryogi ayana pikeun ngurangan konflik';

  @override
  String get emergencyMissingPetName => 'Sato Peliharaan Leungit';

  @override
  String get emergencyMissingPetDesc =>
      'Sato peliharaan leungit atanapi kabur, peryogi tim milarian';

  @override
  String get emergencyWellnessCheckName => 'Pamariksaan Kaséhatan';

  @override
  String get emergencyWellnessCheckDesc =>
      'Mariksa jalma nu sigana peryogi bantosan';

  @override
  String get emergencyQuitCompanionName => 'Pendamping Lirén';

  @override
  String get emergencyQuitCompanionDesc => 'Ngalawan karep, peryogi dukungan';

  @override
  String get emergencyCompanionshipName => 'Pendampingan';

  @override
  String get emergencyCompanionshipDesc => 'Ngarasa sepi atanapi terasing';

  @override
  String get emergency911CoordinationName => 'Koordinasi 911';

  @override
  String get emergency911CoordinationDesc =>
      'Peryogi bantosan nelepon sareng koordinasi 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narcan';

  @override
  String get myCapabilities => 'Kamampuan Kuring';

  @override
  String capabilitiesSelected(int count) {
    return '$count dipilih';
  }

  @override
  String get alertSchedule => 'Jadwal Peringatan';

  @override
  String get setAvailabilityHours => 'Setel jam kasadiaan anjeun';

  @override
  String get trustedResponders => 'Responder Dipercaya';

  @override
  String get responseHistory => 'Riwayat Réspon';

  @override
  String get privacyAndSafety => 'Privasi & Kaamanan';

  @override
  String get helpAndSupport => 'Bantosan & Dukungan';

  @override
  String get aboutNayborSos => 'Ihwal Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Syarat & Kabijakan Privasi';

  @override
  String get signOut => 'Kaluar';

  @override
  String version(String version) {
    return 'Versi $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS nyambungkeun tatangga dina kaayaan darurat, nyiptakeun jaringan responder gancang nu tiasa nyayogikeun bantosan kritis sateuacan responder profésional datang.';

  @override
  String get aboutDialogContent2 =>
      'Saha waé tiasa jadi pahlawan. Anjeun henteu peryogi latihan khusus pikeun nyalametkeun jiwa. Sakapeung intervensi anu pangkuatna nyaéta ngan ukur hadir.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Tutup';

  @override
  String get signOutQuestion => 'Kaluar?';

  @override
  String get signOutConfirm => 'Yakin badé kaluar?';

  @override
  String get cancel => 'Bolay';

  @override
  String get signedOutSuccessfully => 'Hasil kaluar';

  @override
  String get settings => 'Setélan';

  @override
  String get capabilityWellnessCheck => 'Pamariksaan Kaséhatan';

  @override
  String get capabilityQuitCompanion => 'Pendamping Lirén';

  @override
  String get capabilityActiveBystander => 'Bystander Aktif';

  @override
  String get translationTier1Label => 'Tarjamahan AI Kapercayaan Luhur';

  @override
  String get translationTier2Label => 'Tarjamahan AI Kapercayaan Alus';

  @override
  String get translationTier3Label => 'Tarjamahan AI Kapercayaan Sedeng';

  @override
  String get translationTier4Label => 'Tarjamahan AI Kapercayaan Handap';

  @override
  String get translationTier1Notice =>
      'Tarjamahan ieu dibangkitkeun ku AI kalayan kapercayaan luhur. Tinjauan profésional disarankeun pikeun pamakéan produksi.';

  @override
  String get translationTier2Notice =>
      'Tarjamahan ieu dibangkitkeun ku AI kalayan kapercayaan alus. Tinjauan profésional disarankeun pikeun terminologi persetujuan sareng darurat anu kritis kaamanan.';

  @override
  String get translationTier3Notice =>
      '⚠️ Tarjamahan ieu peryogi tinjauan manusa pikeun frasa darurat kritis kaamanan sateuacan pamakéan produksi.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ieu ngan ukur draf tarjamahan. Tarjamahan profésional diperyogikeun sateuacan pamakéan produksi.';

  @override
  String get selectLanguage => 'Pilih Basa';

  @override
  String get searchLanguagesHint => 'Milarian basa';

  @override
  String translationQualityLabel(String quality) {
    return 'Kualitas Tarjamahan: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Bantosan ningkatkeun tarjamahan - laporkeun masalah atanapi nyumbangkeun tarjamahan anu langkung saé!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
