// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemen & Minutewomen Zaman Moden';

  @override
  String get signUpToHelp => 'Daftar untuk membantu jiran anda';

  @override
  String get enterPhoneNumber => 'Masukkan nombor telefon anda untuk bermula';

  @override
  String get phoneNumberLabel => 'Nombor Telefon';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Hantar Kod Pengesahan';

  @override
  String get enterVerificationCode => 'Masukkan kod pengesahan';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Kami telah menghantar kod ke $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kod Pengesahan';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Sahkan & Teruskan';

  @override
  String get changePhoneNumber => 'Tukar nombor telefon';

  @override
  String get pleaseEnterPhoneNumber => 'Sila masukkan nombor telefon anda';

  @override
  String get pleaseEnterVerificationCode => 'Sila masukkan kod pengesahan';

  @override
  String get createProfile => 'Cipta Profil';

  @override
  String get tellUsAboutYourself => 'Beritahu kami tentang diri anda';

  @override
  String get profileSetupDescription =>
      'Maklumat ini membantu kami menghubungkan anda dengan jiran yang memerlukan bantuan';

  @override
  String get addPhotoOptional => 'Tambah foto (pilihan)';

  @override
  String get fullNameLabel => 'Nama Penuh *';

  @override
  String get fullNameHint => 'Ahmad Abdullah';

  @override
  String get homeAddressLabel => 'Alamat Rumah *';

  @override
  String get homeAddressHint => '123 Jalan Utama, Unit 4B';

  @override
  String get homeAddressHelper => 'Digunakan untuk padanan jarak sahaja';

  @override
  String get ageOptionalLabel => 'Umur (pilihan)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Umur 70+ boleh tetapkan waktu amaran lembut';

  @override
  String get yourPrivacyMatters => 'Privasi anda penting';

  @override
  String get privacyNotice =>
      'Lokasi anda hanya ditanya semasa kecemasan aktif dan tidak disimpan dalam jangka panjang.';

  @override
  String get continueButton => 'Teruskan';

  @override
  String get pleaseFillRequiredFields => 'Sila isi semua medan yang diperlukan';

  @override
  String get home => 'Utama';

  @override
  String get alerts => 'Amaran';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Bersedia Bertindak Balas';

  @override
  String get notAvailable => 'Tidak Tersedia';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Anda akan menerima amaran kecemasan berhampiran';

  @override
  String get toggleOnWhenReady => 'Hidupkan apabila bersedia untuk membantu';

  @override
  String get youreNowAvailable => 'Anda kini bersedia untuk bertindak balas';

  @override
  String get youWontReceiveAlerts => 'Anda tidak akan menerima amaran';

  @override
  String get lifeThreatening247Info =>
      'Amaran mengancam nyawa akan memberitahu anda 24/7. Amaran tidak mendesak menghormati jadual anda.';

  @override
  String get requestHelp => 'MINTA BANTUAN';

  @override
  String get yourImpact => 'Impak Anda';

  @override
  String get responses => 'Respons';

  @override
  String get avgTime => 'Masa Purata';

  @override
  String get yourCapabilities => 'Kebolehan Anda';

  @override
  String get edit => 'Edit';

  @override
  String get communityNetwork => 'Rangkaian Komuniti';

  @override
  String get nearbyResponders => 'Perespons Berhampiran';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count tersedia';
  }

  @override
  String get coverageRadius => 'Radius Liputan';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance batu';
  }

  @override
  String get activeAlerts => 'Amaran Aktif';

  @override
  String get none => 'Tiada';

  @override
  String get yourLocation => 'Lokasi Anda';

  @override
  String get whatDoYouNeedHelpWith => 'Apakah yang anda perlukan bantuan?';

  @override
  String get additionalDetailsOptional => 'Butiran Tambahan (pilihan)';

  @override
  String get describeSituation => 'Terangkan situasi...';

  @override
  String get alertTrustedRespondersFirst =>
      'Maklumkan perespons dipercayai saya dahulu';

  @override
  String get trustedRespondersDescription =>
      'Rakan/keluarga pilihan anda akan dimaklumkan sebelum komuniti am';

  @override
  String sendingAlert(String emergencyType) {
    return 'Menghantar amaran: $emergencyType';
  }

  @override
  String get sendAlertNow => 'HANTAR AMARAN SEKARANG';

  @override
  String get pleaseSelectEmergencyType => 'Sila pilih jenis kecemasan';

  @override
  String get categoryLifeThreatening => '🔴 Mengancam Nyawa';

  @override
  String get categorySecuritySafety => '🟠 Keselamatan/Keamanan';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Mendesak Sensitif Masa';

  @override
  String get categoryNonLifeThreatening => '🟢 Tidak Mengancam Nyawa';

  @override
  String get emergencyCprCardiacName => 'CPR / Serangan Jantung';

  @override
  String get emergencyCprCardiacDesc =>
      'Seseorang tidak sedarkan diri dan tidak bernafas';

  @override
  String get emergencyAedName => 'Penghantaran AED';

  @override
  String get emergencyAedDesc => 'Memerlukan AED dengan segera';

  @override
  String get emergencyOverdoseName => 'Overdos / Naloxone';

  @override
  String get emergencyOverdoseDesc =>
      'Disyaki overdos dadah, memerlukan naloxone';

  @override
  String get emergencyChokingName => 'Tersedak / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Seseorang tersedak dan tidak boleh bernafas';

  @override
  String get emergencyFireName => 'Kebakaran / Pemindahan';

  @override
  String get emergencyFireDesc =>
      'Kecemasan kebakaran, memerlukan bantuan pemindahan';

  @override
  String get emergencyConsentName => 'Kecemasan Persetujuan Bilik Tidur';

  @override
  String get emergencyConsentDesc => 'Kata selamat dipanggil, memerlukan saksi';

  @override
  String get emergencyBystanderName => 'Saksi Pemerhati Aktif';

  @override
  String get emergencyBystanderDesc =>
      'Memerlukan kehadiran untuk meredakan konflik';

  @override
  String get emergencyMissingPetName => 'Haiwan Kesayangan Hilang';

  @override
  String get emergencyMissingPetDesc =>
      'Haiwan kesayangan hilang atau lari, memerlukan pasukan carian';

  @override
  String get emergencyWellnessCheckName => 'Pemeriksaan Kesejahteraan';

  @override
  String get emergencyWellnessCheckDesc =>
      'Periksa seseorang yang mungkin memerlukan bantuan';

  @override
  String get emergencyQuitCompanionName => 'Teman Berhenti';

  @override
  String get emergencyQuitCompanionDesc =>
      'Melawan keinginan, memerlukan sokongan';

  @override
  String get emergencyCompanionshipName => 'Persahabatan';

  @override
  String get emergencyCompanionshipDesc => 'Berasa kesepian atau terpencil';

  @override
  String get emergency911CoordinationName => 'Koordinasi 911';

  @override
  String get emergency911CoordinationDesc =>
      'Memerlukan bantuan menelefon dan menyelaras 911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Kebolehan Saya';

  @override
  String capabilitiesSelected(int count) {
    return '$count dipilih';
  }

  @override
  String get alertSchedule => 'Jadual Amaran';

  @override
  String get setAvailabilityHours => 'Tetapkan waktu ketersediaan anda';

  @override
  String get trustedResponders => 'Perespons Dipercayai';

  @override
  String get responseHistory => 'Sejarah Respons';

  @override
  String get privacyAndSafety => 'Privasi & Keselamatan';

  @override
  String get helpAndSupport => 'Bantuan & Sokongan';

  @override
  String get aboutNayborSos => 'Tentang Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Terma & Dasar Privasi';

  @override
  String get signOut => 'Log Keluar';

  @override
  String version(String version) {
    return 'Versi $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS menghubungkan jiran dalam kecemasan, mencipta rangkaian perespons pantas yang boleh memberikan bantuan kritikal sebelum perespons pertama profesional tiba.';

  @override
  String get aboutDialogContent2 =>
      'Setiap orang boleh menjadi wira. Anda tidak memerlukan latihan khas untuk menyelamatkan nyawa. Kadangkala intervensi paling berkuasa adalah dengan hadir sahaja.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Tutup';

  @override
  String get signOutQuestion => 'Log Keluar?';

  @override
  String get signOutConfirm => 'Adakah anda pasti mahu log keluar?';

  @override
  String get cancel => 'Batal';

  @override
  String get signedOutSuccessfully => 'Berjaya log keluar';

  @override
  String get settings => 'Tetapan';

  @override
  String get capabilityWellnessCheck => 'Pemeriksaan Kesejahteraan';

  @override
  String get capabilityQuitCompanion => 'Teman Berhenti';

  @override
  String get capabilityActiveBystander => 'Pemerhati Aktif';

  @override
  String get translationTier1Label => 'Terjemahan AI Keyakinan Tinggi';

  @override
  String get translationTier2Label => 'Terjemahan AI Keyakinan Baik';

  @override
  String get translationTier3Label => 'Terjemahan AI Keyakinan Sederhana';

  @override
  String get translationTier4Label => 'Terjemahan AI Keyakinan Rendah';

  @override
  String get translationTier1Notice =>
      'Terjemahan ini dijana AI dengan keyakinan tinggi. Kajian profesional disyorkan untuk kegunaan produksi.';

  @override
  String get translationTier2Notice =>
      'Terjemahan ini dijana AI dengan keyakinan baik. Kajian profesional disyorkan untuk terminologi persetujuan dan kecemasan kritikal keselamatan.';

  @override
  String get translationTier3Notice =>
      '⚠️ Terjemahan ini memerlukan kajian manusia untuk frasa kecemasan kritikal keselamatan sebelum kegunaan produksi.';

  @override
  String get translationTier4Notice =>
      '⚠️ Ini adalah draf terjemahan sahaja. Terjemahan profesional diperlukan sebelum kegunaan produksi.';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get searchLanguagesHint => 'Cari bahasa';

  @override
  String translationQualityLabel(String quality) {
    return 'Kualiti Terjemahan: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Bantu tingkatkan terjemahan - laporkan isu atau sumbangkan terjemahan yang lebih baik!';

  @override
  String get demoUserInitials => 'JD';

  @override
  String get demoUserName => 'John Doe';

  @override
  String get demoUserPhone => '(555) 123-4567';

  @override
  String get demoUserAddress => '123 Main St, Apt 4B';
}
