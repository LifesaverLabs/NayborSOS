// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Zamonaviy Minutmenlar va Minutwomenlar';

  @override
  String get signUpToHelp =>
      'Qo\'shnilaringizga yordam berish uchun ro\'yxatdan o\'ting';

  @override
  String get enterPhoneNumber => 'Boshlash uchun telefon raqamingizni kiriting';

  @override
  String get phoneNumberLabel => 'Telefon Raqami';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Tasdiqlash Kodini Yuborish';

  @override
  String get enterVerificationCode => 'Tasdiqlash kodini kiriting';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Biz $phoneNumber raqamiga kod yubordik';
  }

  @override
  String get verificationCodeLabel => 'Tasdiqlash Kodi';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Tasdiqlash va Davom etish';

  @override
  String get changePhoneNumber => 'Telefon raqamini o\'zgartirish';

  @override
  String get pleaseEnterPhoneNumber => 'Iltimos, telefon raqamingizni kiriting';

  @override
  String get pleaseEnterVerificationCode =>
      'Iltimos, tasdiqlash kodini kiriting';

  @override
  String get createProfile => 'Profil Yaratish';

  @override
  String get tellUsAboutYourself => 'O\'zingiz haqingizda gapirib bering';

  @override
  String get profileSetupDescription =>
      'Bu ma\'lumotlar sizni yordam kerak bo\'lgan qo\'shnilaringiz bilan bog\'lashga yordam beradi';

  @override
  String get addPhotoOptional => 'Rasm qo\'shish (ixtiyoriy)';

  @override
  String get fullNameLabel => 'To\'liq Ism *';

  @override
  String get fullNameHint => 'Ahmad Karimov';

  @override
  String get homeAddressLabel => 'Uy Manzili *';

  @override
  String get homeAddressHint => 'Navoiy ko\'chasi 123, 4B xonadon';

  @override
  String get homeAddressHelper => 'Faqat yaqinlik aniqlash uchun ishlatiladi';

  @override
  String get ageOptionalLabel => 'Yosh (ixtiyoriy)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70+ yoshdagilar yumshoq ogohlantirish vaqtlarini belgilashi mumkin';

  @override
  String get yourPrivacyMatters => 'Sizning maxfiyligingiz muhim';

  @override
  String get privacyNotice =>
      'Sizning joylashuvingiz faqat favqulodda vaziyatlarda so\'raladi va uzoq muddatga saqlanmaydi.';

  @override
  String get continueButton => 'Davom etish';

  @override
  String get pleaseFillRequiredFields =>
      'Iltimos, barcha majburiy maydonlarni to\'ldiring';

  @override
  String get home => 'Bosh sahifa';

  @override
  String get alerts => 'Ogohlantirishlar';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Javob Berishga Tayyor';

  @override
  String get notAvailable => 'Mavjud Emas';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Siz yaqin atrofdagi favqulodda vaziyat ogohlantirishlarini olasiz';

  @override
  String get toggleOnWhenReady =>
      'Yordam berishga tayyor bo\'lganingizda yoqing';

  @override
  String get youreNowAvailable => 'Siz endi javob berishga tayyorsiz';

  @override
  String get youWontReceiveAlerts => 'Siz ogohlantirishlarni olmaysiz';

  @override
  String get lifeThreatening247Info =>
      'Hayot uchun xavfli ogohlantirishlar sizni 24/7 xabardor qiladi. Shoshilinch bo\'lmagan ogohlantirishlar jadvalingizni hurmat qiladi.';

  @override
  String get requestHelp => 'YORDAM SO\'RASH';

  @override
  String get yourImpact => 'Sizning Ta\'siringiz';

  @override
  String get responses => 'Javoblar';

  @override
  String get avgTime => 'O\'rt. Vaqt';

  @override
  String get yourCapabilities => 'Sizning Imkoniyatlaringiz';

  @override
  String get edit => 'Tahrirlash';

  @override
  String get communityNetwork => 'Jamiyat Tarmog\'i';

  @override
  String get nearbyResponders => 'Yaqin Atrofdagi Javob Beruvchilar';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count ta mavjud';
  }

  @override
  String get coverageRadius => 'Qamrov Radiusi';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance mil';
  }

  @override
  String get activeAlerts => 'Faol Ogohlantirishlar';

  @override
  String get none => 'Yo\'q';

  @override
  String get yourLocation => 'Sizning Joylashuvingiz';

  @override
  String get whatDoYouNeedHelpWith => 'Nimada yordam kerak?';

  @override
  String get additionalDetailsOptional => 'Qo\'shimcha Tafsilotlar (ixtiyoriy)';

  @override
  String get describeSituation => 'Vaziyatni tasvirlab bering...';

  @override
  String get alertTrustedRespondersFirst =>
      'Avval ishonchli javob beruvchilarimni ogohlantirish';

  @override
  String get trustedRespondersDescription =>
      'Tanlagan do\'stlaringiz/oilangiz umumiy jamiyatdan oldin xabardor qilinadi';

  @override
  String sendingAlert(String emergencyType) {
    return 'Ogohlantirish yuborilmoqda: $emergencyType';
  }

  @override
  String get sendAlertNow => 'HOZIR OGOHLANTIRISH YUBORISH';

  @override
  String get pleaseSelectEmergencyType =>
      'Iltimos, favqulodda vaziyat turini tanlang';

  @override
  String get categoryLifeThreatening => '🔴 Hayot Uchun Xavfli';

  @override
  String get categorySecuritySafety => '🟠 Xavfsizlik/Himoya';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Shoshilinch Vaqt Talabi';

  @override
  String get categoryNonLifeThreatening => '🟢 Hayot Uchun Xavfli Emas';

  @override
  String get emergencyCprCardiacName => 'CPR / Yurak To\'xtashi';

  @override
  String get emergencyCprCardiacDesc =>
      'Kishi hushidan ketgan va nafas olmayapti';

  @override
  String get emergencyAedName => 'AED Yetkazib Berish';

  @override
  String get emergencyAedDesc => 'Zudlik bilan AED kerak';

  @override
  String get emergencyOverdoseName => 'Haddan Tashqari Dozalash / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Giyohvand moddalar bilan zaharlanish shubhasi, nalokson kerak';

  @override
  String get emergencyChokingName => 'Bo\'g\'ilish / Geymlix';

  @override
  String get emergencyChokingDesc =>
      'Kishi bo\'g\'ilyapti va nafas ola olmayapti';

  @override
  String get emergencyFireName => 'Yong\'in / Evakuatsiya';

  @override
  String get emergencyFireDesc =>
      'Yong\'in favqulodda vaziyati, evakuatsiya yordami kerak';

  @override
  String get emergencyConsentName => 'Xususiy Rozlik Favqulodda Vaziyati';

  @override
  String get emergencyConsentDesc => 'Xavfsizlik so\'zi aytildi, guvoh kerak';

  @override
  String get emergencyBystanderName => 'Faol Guvoh';

  @override
  String get emergencyBystanderDesc =>
      'Mojaroni yumshatish uchun ishtirok kerak';

  @override
  String get emergencyMissingPetName => 'Yo\'qolgan Uy Hayvoni';

  @override
  String get emergencyMissingPetDesc =>
      'Uy hayvoni yo\'qolgan, qidiruv guruhi kerak';

  @override
  String get emergencyWellnessCheckName => 'Ahvol Tekshiruvi';

  @override
  String get emergencyWellnessCheckDesc =>
      'Yordam kerak bo\'lishi mumkin bo\'lgan kishini tekshirish';

  @override
  String get emergencyQuitCompanionName => 'Tashlab Ketish Hamrohi';

  @override
  String get emergencyQuitCompanionDesc =>
      'Vasvasaga qarshi kurashmoqda, qo\'llab-quvvatlash kerak';

  @override
  String get emergencyCompanionshipName => 'Hamrohlik';

  @override
  String get emergencyCompanionshipDesc => 'Yolg\'izlik yoki ajralganlik hissi';

  @override
  String get emergency911CoordinationName => '103 Koordinatsiyasi';

  @override
  String get emergency911CoordinationDesc =>
      '103 ga qo\'ng\'iroq qilish va koordinatsiya qilishda yordam kerak';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narkan';

  @override
  String get myCapabilities => 'Mening Imkoniyatlarim';

  @override
  String capabilitiesSelected(int count) {
    return '$count ta tanlandi';
  }

  @override
  String get alertSchedule => 'Ogohlantirish Jadvali';

  @override
  String get setAvailabilityHours => 'Mavjudlik vaqtlaringizni belgilang';

  @override
  String get trustedResponders => 'Ishonchli Javob Beruvchilar';

  @override
  String get responseHistory => 'Javob Tarixi';

  @override
  String get privacyAndSafety => 'Maxfiylik va Xavfsizlik';

  @override
  String get helpAndSupport => 'Yordam va Qo\'llab-quvvatlash';

  @override
  String get aboutNayborSos => 'Naybor SOS Haqida';

  @override
  String get termsAndPrivacyPolicy => 'Shartlar va Maxfiylik Siyosati';

  @override
  String get signOut => 'Chiqish';

  @override
  String version(String version) {
    return 'Versiya $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS favqulodda vaziyatlarda qo\'shnilarni bog\'lab, professional birinchi yordam xizmatlari kelguniga qadar muhim yordam ko\'rsata oladigan tezkor javob beruvchilar tarmog\'ini yaratadi.';

  @override
  String get aboutDialogContent2 =>
      'Har kim qahramon bo\'lishi mumkin. Hayot qutqarish uchun maxsus tayyorgarlik shart emas. Ba\'zida eng kuchli aralashuv oddiy ravishda kelib qolishdir.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Jamoat Manfaati Korporatsiyasi';

  @override
  String get close => 'Yopish';

  @override
  String get signOutQuestion => 'Chiqasizmi?';

  @override
  String get signOutConfirm => 'Haqiqatan ham chiqishni xohlaysizmi?';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get signedOutSuccessfully => 'Muvaffaqiyatli chiqildi';

  @override
  String get settings => 'Sozlamalar';

  @override
  String get capabilityWellnessCheck => 'Ahvol Tekshiruvi';

  @override
  String get capabilityQuitCompanion => 'Tashlab Ketish Hamrohi';

  @override
  String get capabilityActiveBystander => 'Faol Guvoh';

  @override
  String get translationTier1Label => 'Yuqori Ishonchli AI Tarjima';

  @override
  String get translationTier2Label => 'Yaxshi Ishonchli AI Tarjima';

  @override
  String get translationTier3Label => 'O\'rta Ishonchli AI Tarjima';

  @override
  String get translationTier4Label => 'Past Ishonchli AI Tarjima';

  @override
  String get translationTier1Notice =>
      'Bu tarjima yuqori ishonch bilan AI tomonidan yaratildi. Ishlab chiqarishda foydalanish uchun professional ko\'rib chiqish tavsiya etiladi.';

  @override
  String get translationTier2Notice =>
      'Bu tarjima yaxshi ishonch bilan AI tomonidan yaratildi. Xavfsizlik uchun muhim rozlik va favqulodda terminologiya uchun professional ko\'rib chiqish tavsiya etiladi.';

  @override
  String get translationTier3Notice =>
      '⚠️ Bu tarjima ishlab chiqarishdan oldin xavfsizlik uchun muhim favqulodda iboralar uchun inson ko\'rib chiqishini talab qiladi.';

  @override
  String get translationTier4Notice =>
      '⚠️ Bu faqat loyiha tarjimasi. Ishlab chiqarishdan oldin professional tarjima talab qilinadi.';

  @override
  String get selectLanguage => 'Til Tanlash';

  @override
  String get searchLanguagesHint => 'Tillarni qidirish';

  @override
  String translationQualityLabel(String quality) {
    return 'Tarjima Sifati: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Tarjimalarni yaxshilashga yordam bering - muammolarni xabar qiling yoki yaxshiroq tarjimalar taklif qiling!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
