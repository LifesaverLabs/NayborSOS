// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => '現代のミニッツマン・ミニッツウーマン';

  @override
  String get signUpToHelp => 'ご近所の方々を助けるために登録する';

  @override
  String get enterPhoneNumber => '開始するために電話番号を入力してください';

  @override
  String get phoneNumberLabel => '電話番号';

  @override
  String get phoneNumberHint => '(090) 1234-5678';

  @override
  String get sendVerificationCode => '認証コードを送信';

  @override
  String get enterVerificationCode => '認証コードを入力';

  @override
  String verificationCodeSent(String phoneNumber) {
    return '$phoneNumberにコードを送信しました';
  }

  @override
  String get verificationCodeLabel => '認証コード';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => '認証して続行';

  @override
  String get changePhoneNumber => '電話番号を変更';

  @override
  String get pleaseEnterPhoneNumber => '電話番号を入力してください';

  @override
  String get pleaseEnterVerificationCode => '認証コードを入力してください';

  @override
  String get createProfile => 'プロフィール作成';

  @override
  String get tellUsAboutYourself => 'あなたについて教えてください';

  @override
  String get profileSetupDescription => 'この情報は、助けが必要な近所の方々とあなたをつなぐために使用されます';

  @override
  String get addPhotoOptional => '写真を追加（任意）';

  @override
  String get fullNameLabel => '氏名 *';

  @override
  String get fullNameHint => '山田太郎';

  @override
  String get homeAddressLabel => '自宅住所 *';

  @override
  String get homeAddressHint => '東京都渋谷区○○1-2-3 マンション4B';

  @override
  String get homeAddressHelper => '近接マッチングのためのみに使用';

  @override
  String get ageOptionalLabel => '年齢（任意）';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70歳以上の方は優しい通知時間を設定できます';

  @override
  String get yourPrivacyMatters => 'あなたのプライバシーを大切にします';

  @override
  String get privacyNotice => 'あなたの位置情報は緊急事態の発生中のみ照会され、長期保存されることはありません。';

  @override
  String get continueButton => '続行';

  @override
  String get pleaseFillRequiredFields => '必須項目をすべて入力してください';

  @override
  String get home => 'ホーム';

  @override
  String get alerts => '緊急通知';

  @override
  String get profile => 'プロフィール';

  @override
  String get availableToRespond => '対応可能';

  @override
  String get notAvailable => '対応不可';

  @override
  String get youllReceiveEmergencyAlerts => '近隣の緊急通知を受信します';

  @override
  String get toggleOnWhenReady => '助ける準備ができたらオンにしてください';

  @override
  String get youreNowAvailable => '現在対応可能です';

  @override
  String get youWontReceiveAlerts => '通知を受信しません';

  @override
  String get lifeThreatening247Info =>
      '生命に関わる緊急通知は24時間7日間通知されます。緊急でない通知はあなたのスケジュールを考慮します。';

  @override
  String get requestHelp => '助けを要請';

  @override
  String get yourImpact => 'あなたの貢献';

  @override
  String get responses => '対応回数';

  @override
  String get avgTime => '平均時間';

  @override
  String get yourCapabilities => 'あなたの対応能力';

  @override
  String get edit => '編集';

  @override
  String get communityNetwork => 'コミュニティネットワーク';

  @override
  String get nearbyResponders => '近隣の対応者';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count名対応可能';
  }

  @override
  String get coverageRadius => '対応範囲';

  @override
  String coverageRadiusValue(String distance) {
    return '${distance}km';
  }

  @override
  String get activeAlerts => 'アクティブな緊急通知';

  @override
  String get none => 'なし';

  @override
  String get yourLocation => 'あなたの現在地';

  @override
  String get whatDoYouNeedHelpWith => 'どのような助けが必要ですか？';

  @override
  String get additionalDetailsOptional => '追加詳細（任意）';

  @override
  String get describeSituation => '状況を説明してください...';

  @override
  String get alertTrustedRespondersFirst => '信頼できる対応者に最初に通知';

  @override
  String get trustedRespondersDescription => '選択したご友人・ご家族に、一般コミュニティより先に通知されます';

  @override
  String sendingAlert(String emergencyType) {
    return '緊急通知送信中: $emergencyType';
  }

  @override
  String get sendAlertNow => '今すぐ緊急通知を送信';

  @override
  String get pleaseSelectEmergencyType => '緊急事態の種類を選択してください';

  @override
  String get categoryLifeThreatening => '🔴 生命に関わる緊急事態';

  @override
  String get categorySecuritySafety => '🟠 防犯・安全';

  @override
  String get categoryUrgentTimeSensitive => '🟡 緊急・時間的制約';

  @override
  String get categoryNonLifeThreatening => '🟢 生命に関わらない緊急事態';

  @override
  String get emergencyCprCardiacName => '心肺蘇生法 / 心停止';

  @override
  String get emergencyCprCardiacDesc => '意識不明で呼吸していない人がいます';

  @override
  String get emergencyAedName => 'AED配送';

  @override
  String get emergencyAedDesc => 'すぐにAEDが必要です';

  @override
  String get emergencyOverdoseName => '薬物過量摂取 / ナロキソン';

  @override
  String get emergencyOverdoseDesc => '薬物過量摂取の疑い、ナロキソンが必要';

  @override
  String get emergencyChokingName => '窒息 / ハイムリック法';

  @override
  String get emergencyChokingDesc => '窒息して呼吸できない人がいます';

  @override
  String get emergencyFireName => '火災 / 避難';

  @override
  String get emergencyFireDesc => '火災緊急事態、避難の助けが必要';

  @override
  String get emergencyConsentName => '寝室での同意に関する緊急事態';

  @override
  String get emergencyConsentDesc => 'セーフワードが使われました、立会人が必要';

  @override
  String get emergencyBystanderName => '積極的傍観者の立会い';

  @override
  String get emergencyBystanderDesc => '対立を鎮静化するための立会いが必要';

  @override
  String get emergencyMissingPetName => 'ペットの迷子';

  @override
  String get emergencyMissingPetDesc => 'ペットが迷子になったか逃げました、捜索隊が必要';

  @override
  String get emergencyWellnessCheckName => '安否確認';

  @override
  String get emergencyWellnessCheckDesc => '助けが必要かもしれない人の確認';

  @override
  String get emergencyQuitCompanionName => '禁煙・禁酒サポート';

  @override
  String get emergencyQuitCompanionDesc => '欲求と闘っています、サポートが必要';

  @override
  String get emergencyCompanionshipName => '付き添い';

  @override
  String get emergencyCompanionshipDesc => '孤独感や孤立感を感じています';

  @override
  String get emergency911CoordinationName => '119番通報の調整';

  @override
  String get emergency911CoordinationDesc => '119番通報と調整の助けが必要';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'ナロキソン/ナルカン';

  @override
  String get myCapabilities => '私の対応能力';

  @override
  String capabilitiesSelected(int count) {
    return '$count個選択済み';
  }

  @override
  String get alertSchedule => '緊急通知スケジュール';

  @override
  String get setAvailabilityHours => '対応可能時間を設定';

  @override
  String get trustedResponders => '信頼できる対応者';

  @override
  String get responseHistory => '対応履歴';

  @override
  String get privacyAndSafety => 'プライバシーと安全';

  @override
  String get helpAndSupport => 'ヘルプとサポート';

  @override
  String get aboutNayborSos => 'Naybor SOSについて';

  @override
  String get termsAndPrivacyPolicy => '利用規約とプライバシーポリシー';

  @override
  String get signOut => 'サインアウト';

  @override
  String version(String version) {
    return 'バージョン $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOSは緊急時に近隣住民をつなぎ、専門の救急対応者が到着する前に重要な援助を提供できる迅速対応者のネットワークを構築します。';

  @override
  String get aboutDialogContent2 =>
      '誰でもヒーローになれます。命を救うのに特別な訓練は必要ありません。時として最も力強い介入は、単にその場にいることです。';

  @override
  String get lifesaverLabs => 'Lifesaver Labs公益法人';

  @override
  String get close => '閉じる';

  @override
  String get signOutQuestion => 'サインアウトしますか？';

  @override
  String get signOutConfirm => '本当にサインアウトしますか？';

  @override
  String get cancel => 'キャンセル';

  @override
  String get signedOutSuccessfully => '正常にサインアウトしました';

  @override
  String get settings => '設定';

  @override
  String get capabilityWellnessCheck => '安否確認';

  @override
  String get capabilityQuitCompanion => '禁煙・禁酒サポート';

  @override
  String get capabilityActiveBystander => '積極的傍観者';

  @override
  String get translationTier1Label => '高信頼度AI翻訳';

  @override
  String get translationTier2Label => '良好信頼度AI翻訳';

  @override
  String get translationTier3Label => '中程度信頼度AI翻訳';

  @override
  String get translationTier4Label => '低信頼度AI翻訳';

  @override
  String get translationTier1Notice =>
      'この翻訳は高信頼度でAI生成されました。本格運用には専門的なレビューをお勧めします。';

  @override
  String get translationTier2Notice =>
      'この翻訳は良好な信頼度でAI生成されました。安全に関わる同意と緊急事態の用語については専門的なレビューをお勧めします。';

  @override
  String get translationTier3Notice =>
      '⚠️ この翻訳は、本格運用前に安全に関わる緊急事態の語句について人間によるレビューが必要です。';

  @override
  String get translationTier4Notice => '⚠️ これは下書き翻訳のみです。本格運用前に専門翻訳が必要です。';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get searchLanguagesHint => '言語を検索';

  @override
  String translationQualityLabel(String quality) {
    return '翻訳品質: $quality';
  }

  @override
  String get helpImproveTranslations =>
      '翻訳の改善にご協力ください - 問題を報告するか、より良い翻訳をご提供ください！';
}
