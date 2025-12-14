// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen lan Minutewomen Jaman Saiki';

  @override
  String get signUpToHelp => 'Daftar kanggo ngewangi tangga-tangga sampeyan';

  @override
  String get enterPhoneNumber => 'Lebokna nomer telpon sampeyan kanggo miwiti';

  @override
  String get phoneNumberLabel => 'Nomer Telpon';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Kirim Kode Verifikasi';

  @override
  String get enterVerificationCode => 'Lebokna kode verifikasi';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Kita wis ngirim kode menyang $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kode Verifikasi';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifikasi & Terus';

  @override
  String get changePhoneNumber => 'Ganti nomer telpon';

  @override
  String get pleaseEnterPhoneNumber => 'Mangga lebokna nomer telpon sampeyan';

  @override
  String get pleaseEnterVerificationCode => 'Mangga lebokna kode verifikasi';

  @override
  String get createProfile => 'Gawe Profil';

  @override
  String get tellUsAboutYourself => 'Crita babagan sampeyan';

  @override
  String get profileSetupDescription =>
      'Informasi iki mbantu kita nyambungake sampeyan karo tangga sing butuh bantuan';

  @override
  String get addPhotoOptional => 'Tambah foto (opsional)';

  @override
  String get fullNameLabel => 'Jeneng Lengkap *';

  @override
  String get fullNameHint => 'Budi Santoso';

  @override
  String get homeAddressLabel => 'Alamat Omah *';

  @override
  String get homeAddressHint => 'Jl. Malioboro 123, RT 04 RW 02';

  @override
  String get homeAddressHelper => 'Mung kanggo cocok-cocokan jarak';

  @override
  String get ageOptionalLabel => 'Umur (opsional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Umur 70+ bisa nyetel jam wektu peringatan alus';

  @override
  String get yourPrivacyMatters => 'Privasi sampeyan penting';

  @override
  String get privacyNotice =>
      'Lokasi sampeyan mung ditakoni nalika ana darurat aktif lan ora disimpen suwe-suwe.';

  @override
  String get continueButton => 'Terus';

  @override
  String get pleaseFillRequiredFields =>
      'Mangga isi kabeh kolom sing diwajibake';

  @override
  String get home => 'Omah';

  @override
  String get alerts => 'Peringatan';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Siap Nanggapi';

  @override
  String get notAvailable => 'Ora Siap';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Sampeyan bakal nampa peringatan darurat cedhak';

  @override
  String get toggleOnWhenReady => 'Uripake yen siap ngewangi';

  @override
  String get youreNowAvailable => 'Sampeyan saiki siap nanggapi';

  @override
  String get youWontReceiveAlerts => 'Sampeyan ora bakal nampa peringatan';

  @override
  String get lifeThreatening247Info =>
      'Peringatan sing mbebayani nyawa bakal menehi kabar 24/7. Peringatan ora urgent bakal ngormati jadwal sampeyan.';

  @override
  String get requestHelp => 'JALUK BANTUAN';

  @override
  String get yourImpact => 'Dampak Sampeyan';

  @override
  String get responses => 'Tanggapan';

  @override
  String get avgTime => 'Wektu Rata-rata';

  @override
  String get yourCapabilities => 'Kemampuan Sampeyan';

  @override
  String get edit => 'Sunting';

  @override
  String get communityNetwork => 'Jaringan Masyarakat';

  @override
  String get nearbyResponders => 'Penanggap Cedhak';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count kasedhiya';
  }

  @override
  String get coverageRadius => 'Radius Jangkauan';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Peringatan Aktif';

  @override
  String get none => 'Ora Ana';

  @override
  String get yourLocation => 'Lokasi Sampeyan';

  @override
  String get whatDoYouNeedHelpWith => 'Apa sing perlu dibantu?';

  @override
  String get additionalDetailsOptional => 'Rincian Tambahan (opsional)';

  @override
  String get describeSituation => 'Critakake kahanane...';

  @override
  String get alertTrustedRespondersFirst =>
      'Wenehi kabar penanggap sing dipercaya dhisik';

  @override
  String get trustedRespondersDescription =>
      'Kanca/kulawarga pilihan sampeyan bakal diwenehi kabar sadurunge masyarakat umum';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ngirim peringatan: $emergencyType';
  }

  @override
  String get sendAlertNow => 'KIRIM PERINGATAN SAIKI';

  @override
  String get pleaseSelectEmergencyType => 'Mangga pilih jenis darurat';

  @override
  String get categoryLifeThreatening => '🔴 Mbebayani Nyawa';

  @override
  String get categorySecuritySafety => '🟠 Keamanan/Kaamanan';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent Sensitif Wektu';

  @override
  String get categoryNonLifeThreatening => '🟢 Ora Mbebayani Nyawa';

  @override
  String get emergencyCprCardiacName => 'CPR / Serangan Jantung';

  @override
  String get emergencyCprCardiacDesc => 'Wong ora sadar lan ora ambegan';

  @override
  String get emergencyAedName => 'Pangiriman AED';

  @override
  String get emergencyAedDesc => 'Butuh AED langsung';

  @override
  String get emergencyOverdoseName => 'Overdosis / Naloxone';

  @override
  String get emergencyOverdoseDesc => 'Diduga overdosis obat, butuh naloxone';

  @override
  String get emergencyChokingName => 'Keselak / Heimlich';

  @override
  String get emergencyChokingDesc => 'Wong keselak lan ora bisa ambegan';

  @override
  String get emergencyFireName => 'Kobongan / Evakuasi';

  @override
  String get emergencyFireDesc => 'Darurat kobongan, butuh bantuan evakuasi';

  @override
  String get emergencyConsentName => 'Darurat Persetujuan Kamar';

  @override
  String get emergencyConsentDesc => 'Safeword diarani, butuh saksi';

  @override
  String get emergencyBystanderName => 'Saksi Aktif';

  @override
  String get emergencyBystanderDesc => 'Butuh kehadiran kanggo nyuda konflik';

  @override
  String get emergencyMissingPetName => 'Kewan Ilang';

  @override
  String get emergencyMissingPetDesc =>
      'Kewan ilang utawa mlayu, butuh tim pencari';

  @override
  String get emergencyWellnessCheckName => 'Cek Kesehatan';

  @override
  String get emergencyWellnessCheckDesc => 'Cek wong sing bisa butuh bantuan';

  @override
  String get emergencyQuitCompanionName => 'Kanca Mandheg';

  @override
  String get emergencyQuitCompanionDesc =>
      'Lagi nglawan kepengin, butuh dukugan';

  @override
  String get emergencyCompanionshipName => 'Kancanan';

  @override
  String get emergencyCompanionshipDesc => 'Krasa sepi utawa terisolasi';

  @override
  String get emergency911CoordinationName => 'Koordinasi Layanan Darurat';

  @override
  String get emergency911CoordinationDesc =>
      'Butuh bantuan nelpon lan koordinasi layanan darurat';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Kemampuan Aku';

  @override
  String capabilitiesSelected(int count) {
    return '$count dipilih';
  }

  @override
  String get alertSchedule => 'Jadwal Peringatan';

  @override
  String get setAvailabilityHours => 'Setel jam ketersediaan sampeyan';

  @override
  String get trustedResponders => 'Penanggap Dipercaya';

  @override
  String get responseHistory => 'Riwayat Tanggapan';

  @override
  String get privacyAndSafety => 'Privasi & Keamanan';

  @override
  String get helpAndSupport => 'Bantuan & Dukugan';

  @override
  String get aboutNayborSos => 'Babagan Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Syarat & Kebijakan Privasi';

  @override
  String get signOut => 'Metu';

  @override
  String version(String version) {
    return 'Versi $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS nyambungake tangga-tangga ing darurat, nggawe jaringan penanggap cepet sing bisa menehi bantuan kritis sadurunge petugas darurat profesional teka.';

  @override
  String get aboutDialogContent2 =>
      'Kabeh wong bisa dadi pahlawan. Sampeyan ora butuh latihan khusus kanggo nylametake nyawa. Kadhangkala intervensi sing paling kuat yaiku mung muncul.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Tutup';

  @override
  String get signOutQuestion => 'Metu?';

  @override
  String get signOutConfirm => 'Sampeyan yakin arep metu?';

  @override
  String get cancel => 'Batal';

  @override
  String get signedOutSuccessfully => 'Sukses metu';

  @override
  String get settings => 'Setelan';

  @override
  String get capabilityWellnessCheck => 'Cek Kesehatan';

  @override
  String get capabilityQuitCompanion => 'Kanca Mandheg';

  @override
  String get capabilityActiveBystander => 'Saksi Aktif';

  @override
  String get translationTier1Label => 'Terjemahan AI Kapercayan Dhuwur';

  @override
  String get translationTier2Label => 'Terjemahan AI Kapercayan Apik';

  @override
  String get translationTier3Label => 'Terjemahan AI Kapercayan Sedeng';

  @override
  String get translationTier4Label => 'Terjemahan AI Kapercayan Kurang';

  @override
  String get translationTier1Notice =>
      'Terjemahan iki digawe AI kanthi kapercayan dhuwur. Disaranake ditinjau profesional kanggo panggunaan produksi.';

  @override
  String get translationTier2Notice =>
      'Terjemahan iki digawe AI kanthi kapercayan apik. Disaranake ditinjau profesional kanggo terminologi persetujuan lan darurat sing kritis kanggo keamanan.';

  @override
  String get translationTier3Notice =>
      '⚠️ Terjemahan iki mbutuhake tinjauan manungsa kanggo frasa darurat kritis kanggo keamanan sadurunge panggunaan produksi.';

  @override
  String get translationTier4Notice =>
      '⚠️ Iki mung draf terjemahan. Terjemahan profesional dibutuhake sadurunge panggunaan produksi.';

  @override
  String get selectLanguage => 'Pilih Basa';

  @override
  String get searchLanguagesHint => 'Golek basa';

  @override
  String translationQualityLabel(String quality) {
    return 'Kualitas Terjemahan: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Bantua ningkatake terjemahan - laporke masalah utawa sumbang terjemahan sing luwih apik!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
