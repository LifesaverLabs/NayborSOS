// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => '现代民兵';

  @override
  String get signUpToHelp => '注册帮助您的邻居';

  @override
  String get enterPhoneNumber => '输入您的电话号码开始使用';

  @override
  String get phoneNumberLabel => '电话号码';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => '发送验证码';

  @override
  String get enterVerificationCode => '输入验证码';

  @override
  String verificationCodeSent(String phoneNumber) {
    return '我们已向 $phoneNumber 发送验证码';
  }

  @override
  String get verificationCodeLabel => '验证码';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => '验证并继续';

  @override
  String get changePhoneNumber => '更改电话号码';

  @override
  String get pleaseEnterPhoneNumber => '请输入您的电话号码';

  @override
  String get pleaseEnterVerificationCode => '请输入验证码';

  @override
  String get createProfile => '创建个人资料';

  @override
  String get tellUsAboutYourself => '告诉我们关于您的信息';

  @override
  String get profileSetupDescription => '这些信息帮助我们将您与需要帮助的邻居联系起来';

  @override
  String get addPhotoOptional => '添加照片（可选）';

  @override
  String get fullNameLabel => '全名 *';

  @override
  String get fullNameHint => '张伟';

  @override
  String get homeAddressLabel => '家庭住址 *';

  @override
  String get homeAddressHint => '主街123号，4B室';

  @override
  String get homeAddressHelper => '仅用于邻近匹配';

  @override
  String get ageOptionalLabel => '年龄（可选）';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70岁以上可以设置温和提醒时间';

  @override
  String get yourPrivacyMatters => '您的隐私很重要';

  @override
  String get privacyNotice => '您的位置仅在紧急情况下查询，从不长期存储。';

  @override
  String get continueButton => '继续';

  @override
  String get pleaseFillRequiredFields => '请填写所有必填项';

  @override
  String get home => '主页';

  @override
  String get alerts => '警报';

  @override
  String get profile => '个人资料';

  @override
  String get availableToRespond => '可以响应';

  @override
  String get notAvailable => '不可用';

  @override
  String get youllReceiveEmergencyAlerts => '您将收到附近的紧急警报';

  @override
  String get toggleOnWhenReady => '准备好帮助时打开';

  @override
  String get youreNowAvailable => '您现在可以响应';

  @override
  String get youWontReceiveAlerts => '您不会收到警报';

  @override
  String get lifeThreatening247Info => '危及生命的警报将全天候通知您。非紧急警报尊重您的时间表。';

  @override
  String get requestHelp => '请求帮助';

  @override
  String get yourImpact => '您的影响';

  @override
  String get responses => '响应次数';

  @override
  String get avgTime => '平均时间';

  @override
  String get yourCapabilities => '您的能力';

  @override
  String get edit => '编辑';

  @override
  String get communityNetwork => '社区网络';

  @override
  String get nearbyResponders => '附近的响应者';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count 位可用';
  }

  @override
  String get coverageRadius => '覆盖半径';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance 英里';
  }

  @override
  String get activeAlerts => '活动警报';

  @override
  String get none => '无';

  @override
  String get yourLocation => '您的位置';

  @override
  String get whatDoYouNeedHelpWith => '您需要什么帮助？';

  @override
  String get additionalDetailsOptional => '其他详细信息（可选）';

  @override
  String get describeSituation => '描述情况...';

  @override
  String get alertTrustedRespondersFirst => '先警报我的信任响应者';

  @override
  String get trustedRespondersDescription => '您选择的朋友/家人将在一般社区之前收到通知';

  @override
  String sendingAlert(String emergencyType) {
    return '正在发送警报：$emergencyType';
  }

  @override
  String get sendAlertNow => '立即发送警报';

  @override
  String get pleaseSelectEmergencyType => '请选择紧急类型';

  @override
  String get categoryLifeThreatening => '🔴 危及生命';

  @override
  String get categorySecuritySafety => '🟠 安全保障';

  @override
  String get categoryUrgentTimeSensitive => '🟡 紧急时间敏感';

  @override
  String get categoryNonLifeThreatening => '🟢 非危及生命';

  @override
  String get emergencyCprCardiacName => '心肺复苏/心脏骤停';

  @override
  String get emergencyCprCardiacDesc => '患者无反应且未呼吸';

  @override
  String get emergencyAedName => '自动体外除颤器（AED）递送';

  @override
  String get emergencyAedDesc => '立即需要AED';

  @override
  String get emergencyOverdoseName => '药物过量/纳洛酮';

  @override
  String get emergencyOverdoseDesc => '疑似药物过量，需要纳洛酮';

  @override
  String get emergencyChokingName => '窒息/海姆立克急救法';

  @override
  String get emergencyChokingDesc => '患者窒息无法呼吸';

  @override
  String get emergencyFireName => '火灾/疏散';

  @override
  String get emergencyFireDesc => '火灾紧急情况，需要疏散帮助';

  @override
  String get emergencyConsentName => '同意紧急情况';

  @override
  String get emergencyConsentDesc => '已呼叫安全词，需要见证人';

  @override
  String get emergencyBystanderName => '积极旁观者见证';

  @override
  String get emergencyBystanderDesc => '需要在场以缓解冲突';

  @override
  String get emergencyMissingPetName => '宠物失踪';

  @override
  String get emergencyMissingPetDesc => '宠物走失或跑掉了，需要搜索队';

  @override
  String get emergencyWellnessCheckName => '健康检查';

  @override
  String get emergencyWellnessCheckDesc => '检查可能需要帮助的人';

  @override
  String get emergencyQuitCompanionName => '戒断陪伴';

  @override
  String get emergencyQuitCompanionDesc => '正在对抗渴望，需要支持';

  @override
  String get emergencyCompanionshipName => '陪伴';

  @override
  String get emergencyCompanionshipDesc => '感到孤独或孤立';

  @override
  String get emergency911CoordinationName => '911协调';

  @override
  String get emergency911CoordinationDesc => '需要帮助拨打和协调911';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => '纳洛酮/Narcan';

  @override
  String get myCapabilities => '我的能力';

  @override
  String capabilitiesSelected(int count) {
    return '已选择 $count 项';
  }

  @override
  String get alertSchedule => '警报时间表';

  @override
  String get setAvailabilityHours => '设置您的可用时间';

  @override
  String get trustedResponders => '信任的响应者';

  @override
  String get responseHistory => '响应历史';

  @override
  String get privacyAndSafety => '隐私与安全';

  @override
  String get helpAndSupport => '帮助与支持';

  @override
  String get aboutNayborSos => '关于 Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => '条款与隐私政策';

  @override
  String get signOut => '退出登录';

  @override
  String version(String version) {
    return '版本 $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS 在紧急情况下连接邻居，创建一个快速响应者网络，在专业急救人员到达之前提供关键援助。';

  @override
  String get aboutDialogContent2 =>
      '每个人都可以成为英雄。您不需要特殊培训就能拯救生命。有时最有力的干预就是简单地出现。';

  @override
  String get lifesaverLabs => 'Lifesaver Labs 公益公司';

  @override
  String get close => '关闭';

  @override
  String get signOutQuestion => '退出登录？';

  @override
  String get signOutConfirm => '您确定要退出登录吗？';

  @override
  String get cancel => '取消';

  @override
  String get signedOutSuccessfully => '成功退出登录';

  @override
  String get settings => '设置';

  @override
  String get capabilityWellnessCheck => '健康检查';

  @override
  String get capabilityQuitCompanion => '戒断陪伴';

  @override
  String get capabilityActiveBystander => '积极旁观者';

  @override
  String get translationTier1Label => '高置信度 AI 翻译';

  @override
  String get translationTier2Label => '良好置信度 AI 翻译';

  @override
  String get translationTier3Label => '中等置信度 AI 翻译';

  @override
  String get translationTier4Label => '低置信度 AI 翻译';

  @override
  String get translationTier1Notice => '此翻译由 AI 高置信度生成。建议在生产使用前进行专业审核。';

  @override
  String get translationTier2Notice => '此翻译由 AI 良好置信度生成。建议对安全关键的同意和紧急术语进行专业审核。';

  @override
  String get translationTier3Notice => '⚠️ 此翻译在生产使用前需要对安全关键的紧急短语进行人工审核。';

  @override
  String get translationTier4Notice => '⚠️ 这只是草稿翻译。生产使用前需要专业翻译。';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get searchLanguagesHint => '搜索语言';

  @override
  String translationQualityLabel(String quality) {
    return '翻译质量：$quality';
  }

  @override
  String get helpImproveTranslations => '帮助改进翻译 - 报告问题或贡献更好的翻译！';
}
