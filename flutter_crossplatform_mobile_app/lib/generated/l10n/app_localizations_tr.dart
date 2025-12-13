// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Modern Zamanın Dakika Adamları ve Kadınları';

  @override
  String get signUpToHelp => 'Komşularınıza yardım etmek için kaydolun';

  @override
  String get enterPhoneNumber => 'Başlamak için telefon numaranızı girin';

  @override
  String get phoneNumberLabel => 'Telefon Numarası';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Doğrulama Kodu Gönder';

  @override
  String get enterVerificationCode => 'Doğrulama kodunu girin';

  @override
  String verificationCodeSent(String phoneNumber) {
    return '$phoneNumber numarasına bir kod gönderdik';
  }

  @override
  String get verificationCodeLabel => 'Doğrulama Kodu';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Doğrula ve Devam Et';

  @override
  String get changePhoneNumber => 'Telefon numarasını değiştir';

  @override
  String get pleaseEnterPhoneNumber => 'Lütfen telefon numaranızı girin';

  @override
  String get pleaseEnterVerificationCode => 'Lütfen doğrulama kodunu girin';

  @override
  String get createProfile => 'Profil Oluştur';

  @override
  String get tellUsAboutYourself => 'Bize kendinizden bahsedin';

  @override
  String get profileSetupDescription =>
      'Bu bilgiler yardıma ihtiyaç duyan komşularla bağlantı kurmanıza yardımcı olur';

  @override
  String get addPhotoOptional => 'Fotoğraf ekle (isteğe bağlı)';

  @override
  String get fullNameLabel => 'Tam Ad *';

  @override
  String get fullNameHint => 'Ahmet Yılmaz';

  @override
  String get homeAddressLabel => 'Ev Adresi *';

  @override
  String get homeAddressHint => 'Atatürk Cad. No:123, Daire 4B';

  @override
  String get homeAddressHelper =>
      'Sadece yakınlık eşleştirmesi için kullanılır';

  @override
  String get ageOptionalLabel => 'Yaş (isteğe bağlı)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70 yaş üstü kişiler nazik uyarı saatleri ayarlayabilir';

  @override
  String get yourPrivacyMatters => 'Gizliliğiniz önemli';

  @override
  String get privacyNotice =>
      'Konumunuz sadece aktif acil durumlar sırasında sorgulanır ve uzun süre saklanmaz.';

  @override
  String get continueButton => 'Devam Et';

  @override
  String get pleaseFillRequiredFields => 'Lütfen tüm gerekli alanları doldurun';

  @override
  String get home => 'Ana Sayfa';

  @override
  String get alerts => 'Uyarılar';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Müdahale Etmeye Hazır';

  @override
  String get notAvailable => 'Müsait Değil';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Yakındaki acil durum uyarıları alacaksınız';

  @override
  String get toggleOnWhenReady => 'Yardım etmeye hazır olduğunuzda açın';

  @override
  String get youreNowAvailable => 'Artık müdahale etmeye hazırsınız';

  @override
  String get youWontReceiveAlerts => 'Uyarı almayacaksınız';

  @override
  String get lifeThreatening247Info =>
      'Yaşamsal tehlike uyarıları size 7/24 bildirim gönderir. Acil olmayan uyarılar programınıza saygı gösterir.';

  @override
  String get requestHelp => 'YARDIM İSTE';

  @override
  String get yourImpact => 'Etkileriniz';

  @override
  String get responses => 'Müdahaleler';

  @override
  String get avgTime => 'Ort. Süre';

  @override
  String get yourCapabilities => 'Yetenekleriniz';

  @override
  String get edit => 'Düzenle';

  @override
  String get communityNetwork => 'Topluluk Ağı';

  @override
  String get nearbyResponders => 'Yakındaki Müdahale Edenler';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count müsait';
  }

  @override
  String get coverageRadius => 'Kapsama Yarıçapı';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Aktif Uyarılar';

  @override
  String get none => 'Yok';

  @override
  String get yourLocation => 'Konumunuz';

  @override
  String get whatDoYouNeedHelpWith => 'Neye yardıma ihtiyacınız var?';

  @override
  String get additionalDetailsOptional => 'Ek Detaylar (isteğe bağlı)';

  @override
  String get describeSituation => 'Durumu tarif edin...';

  @override
  String get alertTrustedRespondersFirst =>
      'Önce güvenilir müdahale edenleri uyar';

  @override
  String get trustedRespondersDescription =>
      'Seçtiğiniz arkadaşlar/aile genel topluluktan önce bilgilendirilecek';

  @override
  String sendingAlert(String emergencyType) {
    return 'Uyarı gönderiliyor: $emergencyType';
  }

  @override
  String get sendAlertNow => 'UYARIYI ŞİMDİ GÖNDER';

  @override
  String get pleaseSelectEmergencyType => 'Lütfen bir acil durum türü seçin';

  @override
  String get categoryLifeThreatening => '🔴 Yaşamsal Tehlike';

  @override
  String get categorySecuritySafety => '🟠 Güvenlik/Emniyet';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Acil Zamana Bağlı';

  @override
  String get categoryNonLifeThreatening => '🟢 Yaşamsal Tehlike Olmayan';

  @override
  String get emergencyCprCardiacName => 'CPR / Kalp Durması';

  @override
  String get emergencyCprCardiacDesc => 'Kişi tepkisiz ve nefes almıyor';

  @override
  String get emergencyAedName => 'AED Teslimi';

  @override
  String get emergencyAedDesc => 'Acilen AED gerekli';

  @override
  String get emergencyOverdoseName => 'Aşırı Doz / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Şüpheli uyuşturucu aşırı dozu, nalokson gerekli';

  @override
  String get emergencyChokingName => 'Boğulma / Heimlich';

  @override
  String get emergencyChokingDesc => 'Kişi boğuluyor ve nefes alamıyor';

  @override
  String get emergencyFireName => 'Yangın / Tahliye';

  @override
  String get emergencyFireDesc => 'Yangın acil durumu, tahliye yardımı gerekli';

  @override
  String get emergencyConsentName => 'Yatak Odası Rıza Acil Durumu';

  @override
  String get emergencyConsentDesc =>
      'Güvenlik kelimesi söylendi, tanığa ihtiyaç var';

  @override
  String get emergencyBystanderName => 'Aktif Seyirci Tanığı';

  @override
  String get emergencyBystanderDesc =>
      'Çatışmayı yatıştırmak için varlığa ihtiyaç var';

  @override
  String get emergencyMissingPetName => 'Kayıp Evcil Hayvan';

  @override
  String get emergencyMissingPetDesc =>
      'Evcil hayvan kayıp veya kaçtı, arama ekibi gerekli';

  @override
  String get emergencyWellnessCheckName => 'Sağlık Kontrolü';

  @override
  String get emergencyWellnessCheckDesc =>
      'Yardıma ihtiyaç duyabilecek birini kontrol et';

  @override
  String get emergencyQuitCompanionName => 'Bırakma Arkadaşı';

  @override
  String get emergencyQuitCompanionDesc =>
      'İstekle mücadele ediyor, destek gerekli';

  @override
  String get emergencyCompanionshipName => 'Arkadaşlık';

  @override
  String get emergencyCompanionshipDesc => 'Yalnız veya izole hissediyor';

  @override
  String get emergency911CoordinationName => '112 Koordinasyonu';

  @override
  String get emergency911CoordinationDesc =>
      '112\'yi arama ve koordine etmede yardım gerekli';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narcan';

  @override
  String get myCapabilities => 'Yeteneklerim';

  @override
  String capabilitiesSelected(int count) {
    return '$count seçildi';
  }

  @override
  String get alertSchedule => 'Uyarı Programı';

  @override
  String get setAvailabilityHours => 'Müsaitlik saatlerinizi ayarlayın';

  @override
  String get trustedResponders => 'Güvenilir Müdahale Edenler';

  @override
  String get responseHistory => 'Müdahale Geçmişi';

  @override
  String get privacyAndSafety => 'Gizlilik ve Güvenlik';

  @override
  String get helpAndSupport => 'Yardım ve Destek';

  @override
  String get aboutNayborSos => 'Naybor SOS Hakkında';

  @override
  String get termsAndPrivacyPolicy => 'Şartlar ve Gizlilik Politikası';

  @override
  String get signOut => 'Çıkış Yap';

  @override
  String version(String version) {
    return 'Sürüm $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS acil durumlarda komşuları birbirine bağlayarak, profesyonel ilk müdahale ekipleri gelmeden önce kritik yardım sağlayabilecek hızlı müdahale ağı oluşturur.';

  @override
  String get aboutDialogContent2 =>
      'Herkes kahraman olabilir. Hayat kurtarmak için özel eğitime ihtiyacınız yok. Bazen en güçlü müdahale sadece orada olmaktır.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Kamu Yararı Şirketi';

  @override
  String get close => 'Kapat';

  @override
  String get signOutQuestion => 'Çıkış Yapılsın mı?';

  @override
  String get signOutConfirm => 'Çıkış yapmak istediğinizden emin misiniz?';

  @override
  String get cancel => 'İptal';

  @override
  String get signedOutSuccessfully => 'Başarıyla çıkış yapıldı';

  @override
  String get settings => 'Ayarlar';

  @override
  String get capabilityWellnessCheck => 'Sağlık Kontrolü';

  @override
  String get capabilityQuitCompanion => 'Bırakma Arkadaşı';

  @override
  String get capabilityActiveBystander => 'Aktif Seyirci';

  @override
  String get translationTier1Label => 'Yüksek Güvenilirlik AI Çevirisi';

  @override
  String get translationTier2Label => 'İyi Güvenilirlik AI Çevirisi';

  @override
  String get translationTier3Label => 'Orta Güvenilirlik AI Çevirisi';

  @override
  String get translationTier4Label => 'Düşük Güvenilirlik AI Çevirisi';

  @override
  String get translationTier1Notice =>
      'Bu çeviri yüksek güvenilirlikle AI tarafından üretilmiştir. Üretim kullanımı için profesyonel inceleme önerilir.';

  @override
  String get translationTier2Notice =>
      'Bu çeviri iyi güvenilirlikle AI tarafından üretilmiştir. Güvenlik açısından kritik rıza ve acil durum terminolojisi için profesyonel inceleme önerilir.';

  @override
  String get translationTier3Notice =>
      '⚠️ Bu çeviri üretim kullanımından önce güvenlik açısından kritik acil durum ifadeleri için insan incelemesi gerektirir.';

  @override
  String get translationTier4Notice =>
      '⚠️ Bu sadece taslak bir çeviridir. Üretim kullanımından önce profesyonel çeviri gereklidir.';

  @override
  String get selectLanguage => 'Dil Seç';

  @override
  String get searchLanguagesHint => 'Dilleri ara';

  @override
  String translationQualityLabel(String quality) {
    return 'Çeviri Kalitesi: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Çevirileri geliştirmeye yardım edin - sorunları bildirin veya daha iyi çeviriler katkıda bulunun!';
}
