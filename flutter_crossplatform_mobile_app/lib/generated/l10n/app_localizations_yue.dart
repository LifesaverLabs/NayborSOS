// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Yue Chinese Cantonese (`yue`).
class AppLocalizationsYue extends AppLocalizations {
  AppLocalizationsYue([String locale = 'yue']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => '現代民兵男女';

  @override
  String get signUpToHelp => '註冊幫助你嘅鄰居';

  @override
  String get enterPhoneNumber => '輸入你嘅電話號碼開始';

  @override
  String get phoneNumberLabel => '電話號碼';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => '發送驗證碼';

  @override
  String get enterVerificationCode => '輸入驗證碼';

  @override
  String verificationCodeSent(String phoneNumber) {
    return '我哋已經發送驗證碼到 $phoneNumber';
  }

  @override
  String get verificationCodeLabel => '驗證碼';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => '驗證並繼續';

  @override
  String get changePhoneNumber => '更改電話號碼';

  @override
  String get pleaseEnterPhoneNumber => '請輸入你嘅電話號碼';

  @override
  String get pleaseEnterVerificationCode => '請輸入驗證碼';

  @override
  String get createProfile => '建立個人檔案';

  @override
  String get tellUsAboutYourself => '話俾我哋知關於你嘅資料';

  @override
  String get profileSetupDescription => '呢啲資料幫助我哋將你同需要幫助嘅鄰居聯繫起嚟';

  @override
  String get addPhotoOptional => '加相片（可選）';

  @override
  String get fullNameLabel => '全名 *';

  @override
  String get fullNameHint => '陳大文';

  @override
  String get homeAddressLabel => '住址 *';

  @override
  String get homeAddressHint => '香港島中環皇后大道中123號4B室';

  @override
  String get homeAddressHelper => '只用於距離配對';

  @override
  String get ageOptionalLabel => '年齡（可選）';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70歲或以上可以設定溫和提示時間';

  @override
  String get yourPrivacyMatters => '你嘅私隱好重要';

  @override
  String get privacyNotice => '你嘅位置只會喺緊急情況期間查詢，絕不會長期儲存。';

  @override
  String get continueButton => '繼續';

  @override
  String get pleaseFillRequiredFields => '請填寫所有必填欄位';

  @override
  String get home => '主頁';

  @override
  String get alerts => '警報';

  @override
  String get profile => '個人檔案';

  @override
  String get availableToRespond => '可以回應';

  @override
  String get notAvailable => '唔可以';

  @override
  String get youllReceiveEmergencyAlerts => '你會收到附近嘅緊急警報';

  @override
  String get toggleOnWhenReady => '準備好幫手時開啟';

  @override
  String get youreNowAvailable => '你而家可以回應緊急情況';

  @override
  String get youWontReceiveAlerts => '你唔會收到警報';

  @override
  String get lifeThreatening247Info => '危及生命嘅警報會24/7通知你。非緊急警報會尊重你嘅時間安排。';

  @override
  String get requestHelp => '請求幫助';

  @override
  String get yourImpact => '你嘅貢獻';

  @override
  String get responses => '回應次數';

  @override
  String get avgTime => '平均時間';

  @override
  String get yourCapabilities => '你嘅能力';

  @override
  String get edit => '編輯';

  @override
  String get communityNetwork => '社區網絡';

  @override
  String get nearbyResponders => '附近回應者';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count 個可用';
  }

  @override
  String get coverageRadius => '覆蓋範圍';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance 英里';
  }

  @override
  String get activeAlerts => '活躍警報';

  @override
  String get none => '冇';

  @override
  String get yourLocation => '你嘅位置';

  @override
  String get whatDoYouNeedHelpWith => '你需要咩幫助？';

  @override
  String get additionalDetailsOptional => '額外詳情（可選）';

  @override
  String get describeSituation => '描述情況...';

  @override
  String get alertTrustedRespondersFirst => '優先通知我嘅信任回應者';

  @override
  String get trustedRespondersDescription => '你選擇嘅朋友/家人會喺一般社區之前收到通知';

  @override
  String sendingAlert(String emergencyType) {
    return '發送警報：$emergencyType';
  }

  @override
  String get sendAlertNow => '立即發送警報';

  @override
  String get pleaseSelectEmergencyType => '請選擇緊急情況類型';

  @override
  String get categoryLifeThreatening => '🔴 危及生命';

  @override
  String get categorySecuritySafety => '🟠 保安/安全';

  @override
  String get categoryUrgentTimeSensitive => '🟡 緊急時間敏感';

  @override
  String get categoryNonLifeThreatening => '🟢 非危及生命';

  @override
  String get emergencyCprCardiacName => '心肺復甦術 / 心跳停止';

  @override
  String get emergencyCprCardiacDesc => '病人失去知覺同無呼吸';

  @override
  String get emergencyAedName => '自動體外除顫器運送';

  @override
  String get emergencyAedDesc => '立即需要自動體外除顫器';

  @override
  String get emergencyOverdoseName => '藥物過量 / 納洛酮';

  @override
  String get emergencyOverdoseDesc => '懷疑藥物過量，需要納洛酮';

  @override
  String get emergencyChokingName => '哽塞 / 海姆立克急救法';

  @override
  String get emergencyChokingDesc => '病人哽塞無法呼吸';

  @override
  String get emergencyFireName => '火災 / 疏散';

  @override
  String get emergencyFireDesc => '火災緊急情況，需要疏散幫助';

  @override
  String get emergencyConsentName => '房間同意緊急情況';

  @override
  String get emergencyConsentDesc => '叫咗安全詞，需要證人';

  @override
  String get emergencyBystanderName => '主動旁觀者證人';

  @override
  String get emergencyBystanderDesc => '需要在場緩解衝突';

  @override
  String get emergencyMissingPetName => '寵物失蹤';

  @override
  String get emergencyMissingPetDesc => '寵物走失咗，需要搜索隊';

  @override
  String get emergencyWellnessCheckName => '健康檢查';

  @override
  String get emergencyWellnessCheckDesc => '檢查可能需要幫助嘅人';

  @override
  String get emergencyQuitCompanionName => '戒癮陪伴';

  @override
  String get emergencyQuitCompanionDesc => '對抗癮頭，需要支持';

  @override
  String get emergencyCompanionshipName => '陪伴';

  @override
  String get emergencyCompanionshipDesc => '感到孤獨或被孤立';

  @override
  String get emergency911CoordinationName => '999協調';

  @override
  String get emergency911CoordinationDesc => '需要幫助致電同協調999';

  @override
  String get equipmentAed => '自動體外除顫器';

  @override
  String get equipmentNaloxone => '納洛酮/Narcan';

  @override
  String get myCapabilities => '我嘅能力';

  @override
  String capabilitiesSelected(int count) {
    return '已選擇 $count 個';
  }

  @override
  String get alertSchedule => '警報時間表';

  @override
  String get setAvailabilityHours => '設定你嘅可用時間';

  @override
  String get trustedResponders => '信任回應者';

  @override
  String get responseHistory => '回應記錄';

  @override
  String get privacyAndSafety => '私隱同安全';

  @override
  String get helpAndSupport => '幫助同支援';

  @override
  String get aboutNayborSos => '關於 Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => '條款同私隱政策';

  @override
  String get signOut => '登出';

  @override
  String version(String version) {
    return '版本 $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS 喺緊急情況下連接鄰居，建立快速回應者網絡，喺專業急救人員到達之前提供重要援助。';

  @override
  String get aboutDialogContent2 =>
      '每個人都可以係英雄。你唔需要特別訓練就可以拯救生命。有時最有力嘅介入就係簡單嘅出現。';

  @override
  String get lifesaverLabs => 'Lifesaver Labs 公共利益公司';

  @override
  String get close => '關閉';

  @override
  String get signOutQuestion => '登出？';

  @override
  String get signOutConfirm => '你確定要登出？';

  @override
  String get cancel => '取消';

  @override
  String get signedOutSuccessfully => '成功登出';

  @override
  String get settings => '設定';

  @override
  String get capabilityWellnessCheck => '健康檢查';

  @override
  String get capabilityQuitCompanion => '戒癮陪伴';

  @override
  String get capabilityActiveBystander => '主動旁觀者';

  @override
  String get translationTier1Label => '高信心AI翻譯';

  @override
  String get translationTier2Label => '良好信心AI翻譯';

  @override
  String get translationTier3Label => '中等信心AI翻譯';

  @override
  String get translationTier4Label => '低信心AI翻譯';

  @override
  String get translationTier1Notice => '呢個翻譯係高信心AI生成。建議喺正式使用前進行專業審查。';

  @override
  String get translationTier2Notice => '呢個翻譯係良好信心AI生成。建議喺安全關鍵同意同緊急術語方面進行專業審查。';

  @override
  String get translationTier3Notice => '⚠️ 呢個翻譯喺正式使用前需要人工審查安全關鍵緊急短語。';

  @override
  String get translationTier4Notice => '⚠️ 呢個只係草稿翻譯。正式使用前需要專業翻譯。';

  @override
  String get selectLanguage => '選擇語言';

  @override
  String get searchLanguagesHint => '搜索語言';

  @override
  String translationQualityLabel(String quality) {
    return '翻譯質量：$quality';
  }

  @override
  String get helpImproveTranslations => '幫助改善翻譯 - 報告問題或貢獻更好嘅翻譯！';
}
