// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Pahlawan Modern untuk Masa Kini';

  @override
  String get signUpToHelp => 'Daftar untuk membantu tetangga Anda';

  @override
  String get enterPhoneNumber => 'Masukkan nomor telepon Anda untuk memulai';

  @override
  String get phoneNumberLabel => 'Nomor Telepon';

  @override
  String get phoneNumberHint => '(021) 123-4567';

  @override
  String get sendVerificationCode => 'Kirim Kode Verifikasi';

  @override
  String get enterVerificationCode => 'Masukkan kode verifikasi';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Kami telah mengirim kode ke $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kode Verifikasi';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifikasi & Lanjutkan';

  @override
  String get changePhoneNumber => 'Ubah nomor telepon';

  @override
  String get pleaseEnterPhoneNumber => 'Mohon masukkan nomor telepon Anda';

  @override
  String get pleaseEnterVerificationCode => 'Mohon masukkan kode verifikasi';

  @override
  String get createProfile => 'Buat Profil';

  @override
  String get tellUsAboutYourself => 'Ceritakan tentang diri Anda';

  @override
  String get profileSetupDescription =>
      'Informasi ini membantu kami menghubungkan Anda dengan tetangga yang membutuhkan bantuan';

  @override
  String get addPhotoOptional => 'Tambah foto (opsional)';

  @override
  String get fullNameLabel => 'Nama Lengkap *';

  @override
  String get fullNameHint => 'Budi Santoso';

  @override
  String get homeAddressLabel => 'Alamat Rumah *';

  @override
  String get homeAddressHint => 'Jl. Merdeka No. 123, Apt 4B';

  @override
  String get homeAddressHelper =>
      'Hanya digunakan untuk pencocokan kedekatan lokasi';

  @override
  String get ageOptionalLabel => 'Usia (opsional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Usia 70+ dapat mengatur jam siaga yang lebih fleksibel';

  @override
  String get yourPrivacyMatters => 'Privasi Anda penting';

  @override
  String get privacyNotice =>
      'Lokasi Anda hanya dicari saat darurat aktif dan tidak pernah disimpan dalam jangka panjang.';

  @override
  String get continueButton => 'Lanjutkan';

  @override
  String get pleaseFillRequiredFields =>
      'Mohon isi semua kolom yang wajib diisi';

  @override
  String get home => 'Beranda';

  @override
  String get alerts => 'Peringatan';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Siap Merespons';

  @override
  String get notAvailable => 'Tidak Tersedia';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Anda akan menerima peringatan darurat di sekitar';

  @override
  String get toggleOnWhenReady => 'Aktifkan saat siap membantu';

  @override
  String get youreNowAvailable => 'Anda sekarang siap merespons';

  @override
  String get youWontReceiveAlerts => 'Anda tidak akan menerima peringatan';

  @override
  String get lifeThreatening247Info =>
      'Peringatan mengancam jiwa akan memberi tahu Anda 24/7. Peringatan non-mendesak menghormati jadwal Anda.';

  @override
  String get requestHelp => 'MINTA BANTUAN';

  @override
  String get yourImpact => 'Dampak Anda';

  @override
  String get responses => 'Respons';

  @override
  String get avgTime => 'Waktu Rata-rata';

  @override
  String get yourCapabilities => 'Kemampuan Anda';

  @override
  String get edit => 'Edit';

  @override
  String get communityNetwork => 'Jaringan Komunitas';

  @override
  String get nearbyResponders => 'Perespons Terdekat';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count tersedia';
  }

  @override
  String get coverageRadius => 'Radius Jangkauan';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilometer';
  }

  @override
  String get activeAlerts => 'Peringatan Aktif';

  @override
  String get none => 'Tidak Ada';

  @override
  String get yourLocation => 'Lokasi Anda';

  @override
  String get whatDoYouNeedHelpWith => 'Bantuan apa yang Anda butuhkan?';

  @override
  String get additionalDetailsOptional => 'Detail Tambahan (opsional)';

  @override
  String get describeSituation => 'Jelaskan situasinya...';

  @override
  String get alertTrustedRespondersFirst =>
      'Peringatkan perespons terpercaya saya terlebih dahulu';

  @override
  String get trustedRespondersDescription =>
      'Teman/keluarga pilihan Anda akan diberitahu sebelum komunitas umum';

  @override
  String sendingAlert(String emergencyType) {
    return 'Mengirim peringatan: $emergencyType';
  }

  @override
  String get sendAlertNow => 'KIRIM PERINGATAN SEKARANG';

  @override
  String get pleaseSelectEmergencyType => 'Mohon pilih jenis darurat';

  @override
  String get categoryLifeThreatening => '🔴 Mengancam Jiwa';

  @override
  String get categorySecuritySafety => '🟠 Keamanan/Keselamatan';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Mendesak Waktu Terbatas';

  @override
  String get categoryNonLifeThreatening => '🟢 Tidak Mengancam Jiwa';

  @override
  String get emergencyCprCardiacName => 'RJP / Henti Jantung';

  @override
  String get emergencyCprCardiacDesc => 'Orang tidak sadar dan tidak bernapas';

  @override
  String get emergencyAedName => 'Pengiriman AED';

  @override
  String get emergencyAedDesc => 'Butuh AED segera';

  @override
  String get emergencyOverdoseName => 'Overdosis / Nalokson';

  @override
  String get emergencyOverdoseDesc => 'Diduga overdosis obat, butuh nalokson';

  @override
  String get emergencyChokingName => 'Tersedak / Heimlich';

  @override
  String get emergencyChokingDesc => 'Orang tersedak dan tidak bisa bernapas';

  @override
  String get emergencyFireName => 'Kebakaran / Evakuasi';

  @override
  String get emergencyFireDesc => 'Darurat kebakaran, butuh bantuan evakuasi';

  @override
  String get emergencyConsentName => 'Darurat Persetujuan Kamar Tidur';

  @override
  String get emergencyConsentDesc => 'Kata aman dipanggil, butuh saksi';

  @override
  String get emergencyBystanderName => 'Saksi Pengamat Aktif';

  @override
  String get emergencyBystanderDesc =>
      'Butuh kehadiran untuk meredakan konflik';

  @override
  String get emergencyMissingPetName => 'Hewan Peliharaan Hilang';

  @override
  String get emergencyMissingPetDesc =>
      'Hewan peliharaan hilang atau kabur, butuh tim pencari';

  @override
  String get emergencyWellnessCheckName => 'Pemeriksaan Kesejahteraan';

  @override
  String get emergencyWellnessCheckDesc =>
      'Periksa seseorang yang mungkin butuh bantuan';

  @override
  String get emergencyQuitCompanionName => 'Teman Berhenti';

  @override
  String get emergencyQuitCompanionDesc => 'Melawan keinginan, butuh dukungan';

  @override
  String get emergencyCompanionshipName => 'Persahabatan';

  @override
  String get emergencyCompanionshipDesc => 'Merasa kesepian atau terisolasi';

  @override
  String get emergency911CoordinationName => 'Koordinasi Layanan Darurat';

  @override
  String get emergency911CoordinationDesc =>
      'Butuh bantuan menelepon dan mengkoordinasi layanan darurat';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narkan';

  @override
  String get myCapabilities => 'Kemampuan Saya';

  @override
  String capabilitiesSelected(int count) {
    return '$count dipilih';
  }

  @override
  String get alertSchedule => 'Jadwal Peringatan';

  @override
  String get setAvailabilityHours => 'Atur jam ketersediaan Anda';

  @override
  String get trustedResponders => 'Perespons Terpercaya';

  @override
  String get responseHistory => 'Riwayat Respons';

  @override
  String get privacyAndSafety => 'Privasi & Keamanan';

  @override
  String get helpAndSupport => 'Bantuan & Dukungan';

  @override
  String get aboutNayborSos => 'Tentang Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Syarat & Kebijakan Privasi';

  @override
  String get signOut => 'Keluar';

  @override
  String version(String version) {
    return 'Versi $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS menghubungkan tetangga dalam keadaan darurat, menciptakan jaringan perespons cepat yang dapat memberikan bantuan kritis sebelum petugas pertolongan pertama profesional tiba.';

  @override
  String get aboutDialogContent2 =>
      'Semua orang bisa menjadi pahlawan. Anda tidak butuh pelatihan khusus untuk menyelamatkan nyawa. Terkadang intervensi paling ampuh adalah sekadar hadir.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Tutup';

  @override
  String get signOutQuestion => 'Keluar?';

  @override
  String get signOutConfirm => 'Apakah Anda yakin ingin keluar?';

  @override
  String get cancel => 'Batal';

  @override
  String get signedOutSuccessfully => 'Berhasil keluar';

  @override
  String get settings => 'Pengaturan';

  @override
  String get capabilityWellnessCheck => 'Pemeriksaan Kesejahteraan';

  @override
  String get capabilityQuitCompanion => 'Teman Berhenti';

  @override
  String get capabilityActiveBystander => 'Pengamat Aktif';

  @override
  String get translationTier1Label => 'Terjemahan AI Kepercayaan Tinggi';

  @override
  String get translationTier2Label => 'Terjemahan AI Kepercayaan Baik';

  @override
  String get translationTier3Label => 'Terjemahan AI Kepercayaan Sedang';

  @override
  String get translationTier4Label => 'Terjemahan AI Kepercayaan Rendah';

  @override
  String get translationTier1Notice =>
      'Terjemahan ini dibuat AI dengan kepercayaan tinggi. Tinjauan profesional disarankan untuk penggunaan produksi.';

  @override
  String get translationTier2Notice =>
      'Terjemahan ini dibuat AI dengan kepercayaan baik. Tinjauan profesional disarankan untuk terminologi persetujuan dan darurat yang kritis keselamatan.';

  @override
  String get translationTier3Notice =>
      '⚠️ Terjemahan ini memerlukan tinjauan manusia untuk frasa darurat kritis keselamatan sebelum penggunaan produksi.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ini hanya terjemahan draf. Terjemahan profesional diperlukan sebelum penggunaan produksi.';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguagesHint => 'Cari bahasa';

  @override
  String translationQualityLabel(String quality) {
    return 'Kualitas Terjemahan: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Bantu perbaiki terjemahan - laporkan masalah atau kontribusikan terjemahan yang lebih baik!';
}
