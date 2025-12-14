// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Müasir Dövrdə Minuteman və Minutewoman';

  @override
  String get signUpToHelp =>
      'Qonşularınıza kömək etmək üçün qeydiyyatdan keçin';

  @override
  String get enterPhoneNumber => 'Başlamaq üçün telefon nömrənizi daxil edin';

  @override
  String get phoneNumberLabel => 'Telefon Nömrəsi';

  @override
  String get phoneNumberHint => '(055) 123-45-67';

  @override
  String get sendVerificationCode => 'Təsdiq Kodunu Göndər';

  @override
  String get enterVerificationCode => 'Təsdiq kodunu daxil edin';

  @override
  String verificationCodeSent(String phoneNumber) {
    return '$phoneNumber nömrəsinə kod göndərdik';
  }

  @override
  String get verificationCodeLabel => 'Təsdiq Kodu';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Təsdiq Et və Davam Et';

  @override
  String get changePhoneNumber => 'Telefon nömrəsini dəyişdir';

  @override
  String get pleaseEnterPhoneNumber =>
      'Zəhmət olmasa telefon nömrənizi daxil edin';

  @override
  String get pleaseEnterVerificationCode =>
      'Zəhmət olmasa təsdiq kodunu daxil edin';

  @override
  String get createProfile => 'Profil Yarat';

  @override
  String get tellUsAboutYourself => 'Özünüz haqqında bizə danışın';

  @override
  String get profileSetupDescription =>
      'Bu məlumat bizə sizi kömək ehtiyacı olan qonşularla əlaqələndirməkdə kömək edir';

  @override
  String get addPhotoOptional => 'Foto əlavə et (isteğe bağlı)';

  @override
  String get fullNameLabel => 'Tam Ad *';

  @override
  String get fullNameHint => 'Əhməd Məmmədov';

  @override
  String get homeAddressLabel => 'Ev Ünvanı *';

  @override
  String get homeAddressHint => 'Nizami küç. 123, mənzil 4B';

  @override
  String get homeAddressHelper =>
      'Yalnız yaxınlıq uyğunlaşdırması üçün istifadə olunur';

  @override
  String get ageOptionalLabel => 'Yaş (isteğe bağlı)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70+ yaşlılar yumşaq xəbərdarlıq saatları təyin edə bilər';

  @override
  String get yourPrivacyMatters => 'Məxfiliyiniz vacibdir';

  @override
  String get privacyNotice =>
      'Məkanınız yalnız aktiv təcili hallar zamanı sorğulanır və uzunmüddətli saxlanılmır.';

  @override
  String get continueButton => 'Davam Et';

  @override
  String get pleaseFillRequiredFields =>
      'Zəhmət olmasa bütün tələb olunan sahələri doldurun';

  @override
  String get home => 'Əsas';

  @override
  String get alerts => 'Xəbərdarlıqlar';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Cavab Verməyə Hazır';

  @override
  String get notAvailable => 'Əlçatan Deyil';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Yaxınlıqda təcili xəbərdarlıqlar alacaqsınız';

  @override
  String get toggleOnWhenReady => 'Kömək etməyə hazır olduqda aktiv edin';

  @override
  String get youreNowAvailable => 'İndi cavab verməyə hazırsınız';

  @override
  String get youWontReceiveAlerts => 'Xəbərdarlıq almayacaqsınız';

  @override
  String get lifeThreatening247Info =>
      'Həyat təhlükəsi olan xəbərdarlıqlar sizi 24/7 məlumatlandırır. Təcili olmayan xəbərdarlıqlar cədvəlinizə hörmət edir.';

  @override
  String get requestHelp => 'KÖMƏK İSTƏ';

  @override
  String get yourImpact => 'Təsiriniz';

  @override
  String get responses => 'Cavablar';

  @override
  String get avgTime => 'Orta Vaxt';

  @override
  String get yourCapabilities => 'Qabiliyyətləriniz';

  @override
  String get edit => 'Redaktə Et';

  @override
  String get communityNetwork => 'İcma Şəbəkəsi';

  @override
  String get nearbyResponders => 'Yaxın Cavabverənlər';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count əlçatan';
  }

  @override
  String get coverageRadius => 'Əhatə Radiusu';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Aktiv Xəbərdarlıqlar';

  @override
  String get none => 'Heç biri';

  @override
  String get yourLocation => 'Məkanınız';

  @override
  String get whatDoYouNeedHelpWith => 'Nədə kömək lazımdır?';

  @override
  String get additionalDetailsOptional => 'Əlavə Təfərrüatlar (isteğe bağlı)';

  @override
  String get describeSituation => 'Vəziyyəti təsvir edin...';

  @override
  String get alertTrustedRespondersFirst =>
      'Əvvəl etibarlı cavabverənlərimi xəbərdar et';

  @override
  String get trustedRespondersDescription =>
      'Seçilmiş dostlarınız/ailəniz ümumi icmadan əvvəl məlumatlandırılacaq';

  @override
  String sendingAlert(String emergencyType) {
    return 'Xəbərdarlıq göndərilir: $emergencyType';
  }

  @override
  String get sendAlertNow => 'İNDİ XƏBƏRDARLIQ GÖNDƏR';

  @override
  String get pleaseSelectEmergencyType =>
      'Zəhmət olmasa təcili hal növünü seçin';

  @override
  String get categoryLifeThreatening => '🔴 Həyat Təhlükəsi';

  @override
  String get categorySecuritySafety => '🟠 Təhlükəsizlik/Etibarlılıq';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Təcili Vaxt-Həssas';

  @override
  String get categoryNonLifeThreatening => '🟢 Həyat Təhlükəsi Olmayan';

  @override
  String get emergencyCprCardiacName => 'CPR / Ürək Durması';

  @override
  String get emergencyCprCardiacDesc => 'Şəxs cavab vermir və nəfəs almır';

  @override
  String get emergencyAedName => 'AED Çatdırılması';

  @override
  String get emergencyAedDesc => 'Dərhal AED lazımdır';

  @override
  String get emergencyOverdoseName => 'Dozaşımı / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Şübhəli narkotik dozaşımı, nalokson lazımdır';

  @override
  String get emergencyChokingName => 'Boğulma / Geymlix';

  @override
  String get emergencyChokingDesc => 'Şəxs boğulur və nəfəs ala bilmir';

  @override
  String get emergencyFireName => 'Yanğın / Təxliyə';

  @override
  String get emergencyFireDesc => 'Yanğın təcili halı, təxliyə kömək lazımdır';

  @override
  String get emergencyConsentName => 'Yataq Otağı Razılıq Təcili Halı';

  @override
  String get emergencyConsentDesc =>
      'Təhlükəsizlik sözü deyildi, şahid lazımdır';

  @override
  String get emergencyBystanderName => 'Aktiv Müşahidəçi Şahidi';

  @override
  String get emergencyBystanderDesc =>
      'Münaqişəni sakitləşdirmək üçün iştirak lazımdır';

  @override
  String get emergencyMissingPetName => 'İtirilmiş Ev Heyvanı';

  @override
  String get emergencyMissingPetDesc =>
      'Ev heyvanı itib və ya qaçıb, axtarış qrupu lazımdır';

  @override
  String get emergencyWellnessCheckName => 'Rifahın Yoxlanması';

  @override
  String get emergencyWellnessCheckDesc =>
      'Kömək ehtiyacı ola biləcək kimsəni yoxla';

  @override
  String get emergencyQuitCompanionName => 'Tərk Etmə Yoldaşı';

  @override
  String get emergencyQuitCompanionDesc =>
      'İstəklə mübarizə aparıram, dəstək lazımdır';

  @override
  String get emergencyCompanionshipName => 'Yoldaşlıq';

  @override
  String get emergencyCompanionshipDesc =>
      'Tənha və ya təcrid olunmuş hiss edirəm';

  @override
  String get emergency911CoordinationName => '911 Koordinasiyası';

  @override
  String get emergency911CoordinationDesc =>
      '911-i zəng etmək və koordinasiya etməkdə kömək lazımdır';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narkan';

  @override
  String get myCapabilities => 'Qabiliyyətlərim';

  @override
  String capabilitiesSelected(int count) {
    return '$count seçilib';
  }

  @override
  String get alertSchedule => 'Xəbərdarlıq Cədvəli';

  @override
  String get setAvailabilityHours => 'Mövcudluq saatlarınızı təyin edin';

  @override
  String get trustedResponders => 'Etibarlı Cavabverənlər';

  @override
  String get responseHistory => 'Cavab Tarixi';

  @override
  String get privacyAndSafety => 'Məxfilik və Təhlükəsizlik';

  @override
  String get helpAndSupport => 'Kömək və Dəstək';

  @override
  String get aboutNayborSos => 'Naybor SOS Haqqında';

  @override
  String get termsAndPrivacyPolicy => 'Şərtlər və Məxfilik Siyasəti';

  @override
  String get signOut => 'Çıxış';

  @override
  String version(String version) {
    return 'Versiya $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS təcili hallarda qonşuları birləşdirir, peşəkar ilk yardım xidmətləri gələnə qədər kritik yardım təmin edə bilən sürətli cavabverənlər şəbəkəsi yaradır.';

  @override
  String get aboutDialogContent2 =>
      'Hər kəs qəhrəman ola bilər. Həyat xilas etmək üçün xüsusi təlimə ehtiyac yoxdur. Bəzən ən güclü müdaxilə sadəcə görünməkdir.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs İctimai Fayda Korporasiyası';

  @override
  String get close => 'Bağla';

  @override
  String get signOutQuestion => 'Çıxış edilsin?';

  @override
  String get signOutConfirm => 'Çıxış etmək istədiyinizdən əminsiniz?';

  @override
  String get cancel => 'Ləğv Et';

  @override
  String get signedOutSuccessfully => 'Uğurla çıxış edildi';

  @override
  String get settings => 'Parametrlər';

  @override
  String get capabilityWellnessCheck => 'Rifahın Yoxlanması';

  @override
  String get capabilityQuitCompanion => 'Tərk Etmə Yoldaşı';

  @override
  String get capabilityActiveBystander => 'Aktiv Müşahidəçi';

  @override
  String get translationTier1Label => 'Yüksək Etimad AI Tərcüməsi';

  @override
  String get translationTier2Label => 'Yaxşı Etimad AI Tərcüməsi';

  @override
  String get translationTier3Label => 'Orta Etimad AI Tərcüməsi';

  @override
  String get translationTier4Label => 'Aşağı Etimad AI Tərcüməsi';

  @override
  String get translationTier1Notice =>
      'Bu tərcümə yüksək etimadla AI tərəfindən yaradılıb. İstehsal istifadəsi üçün peşəkar nəzərdən keçirmə tövsiyə olunur.';

  @override
  String get translationTier2Notice =>
      'Bu tərcümə yaxşı etimadla AI tərəfindən yaradılıb. Təhlükəsizlik-kritik razılıq və təcili terminologiya üçün peşəkar nəzərdən keçirmə tövsiyə olunur.';

  @override
  String get translationTier3Notice =>
      '⚠️ Bu tərcümə istehsal istifadəsindən əvvəl təhlükəsizlik-kritik təcili ifadələr üçün insan nəzərdən keçirməsini tələb edir.';

  @override
  String get translationTier4Notice =>
      '⚠️ Bu yalnız layihə tərcüməsidir. İstehsal istifadəsindən əvvəl peşəkar tərcümə tələb olunur.';

  @override
  String get selectLanguage => 'Dil Seç';

  @override
  String get searchLanguagesHint => 'Dilləri axtar';

  @override
  String translationQualityLabel(String quality) {
    return 'Tərcümə Keyfiyyəti: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Tərcümələrin yaxşılaşdırılmasına kömək edin - problemləri bildirin və ya daha yaxşı tərcümələr təqdim edin!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
