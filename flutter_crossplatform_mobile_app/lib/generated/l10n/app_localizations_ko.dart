// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => '현대의 의용소방대원들';

  @override
  String get signUpToHelp => '이웃을 도울 수 있도록 가입하세요';

  @override
  String get enterPhoneNumber => '시작하려면 전화번호를 입력하세요';

  @override
  String get phoneNumberLabel => '전화번호';

  @override
  String get phoneNumberHint => '(010) 1234-5678';

  @override
  String get sendVerificationCode => '인증번호 전송';

  @override
  String get enterVerificationCode => '인증번호를 입력하세요';

  @override
  String verificationCodeSent(String phoneNumber) {
    return '$phoneNumber로 인증번호를 전송했습니다';
  }

  @override
  String get verificationCodeLabel => '인증번호';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => '인증 후 계속';

  @override
  String get changePhoneNumber => '전화번호 변경';

  @override
  String get pleaseEnterPhoneNumber => '전화번호를 입력해 주세요';

  @override
  String get pleaseEnterVerificationCode => '인증번호를 입력해 주세요';

  @override
  String get createProfile => '프로필 생성';

  @override
  String get tellUsAboutYourself => '본인에 대해 알려주세요';

  @override
  String get profileSetupDescription => '이 정보는 도움이 필요한 이웃과 연결하는 데 사용됩니다';

  @override
  String get addPhotoOptional => '사진 추가 (선택사항)';

  @override
  String get fullNameLabel => '성명 *';

  @override
  String get fullNameHint => '홍길동';

  @override
  String get homeAddressLabel => '집 주소 *';

  @override
  String get homeAddressHint => '서울특별시 강남구 테헤란로 123, 456호';

  @override
  String get homeAddressHelper => '근거리 매칭에만 사용됩니다';

  @override
  String get ageOptionalLabel => '나이 (선택사항)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70세 이상은 조용한 알림 시간을 설정할 수 있습니다';

  @override
  String get yourPrivacyMatters => '귀하의 개인정보 보호가 중요합니다';

  @override
  String get privacyNotice => '귀하의 위치는 활성 응급상황 중에만 조회되며 장기간 저장되지 않습니다.';

  @override
  String get continueButton => '계속';

  @override
  String get pleaseFillRequiredFields => '모든 필수 항목을 입력해 주세요';

  @override
  String get home => '홈';

  @override
  String get alerts => '알림';

  @override
  String get profile => '프로필';

  @override
  String get availableToRespond => '대응 가능';

  @override
  String get notAvailable => '대응 불가';

  @override
  String get youllReceiveEmergencyAlerts => '근처의 응급상황 알림을 받게 됩니다';

  @override
  String get toggleOnWhenReady => '도움을 줄 준비가 되면 켜주세요';

  @override
  String get youreNowAvailable => '이제 대응 가능 상태입니다';

  @override
  String get youWontReceiveAlerts => '알림을 받지 않습니다';

  @override
  String get lifeThreatening247Info =>
      '생명위험 알림은 24시간 알려드립니다. 비응급 알림은 설정된 시간을 존중합니다.';

  @override
  String get requestHelp => '도움 요청';

  @override
  String get yourImpact => '당신의 기여';

  @override
  String get responses => '대응 횟수';

  @override
  String get avgTime => '평균 시간';

  @override
  String get yourCapabilities => '당신의 능력';

  @override
  String get edit => '편집';

  @override
  String get communityNetwork => '커뮤니티 네트워크';

  @override
  String get nearbyResponders => '근처 대응자';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count명 대응 가능';
  }

  @override
  String get coverageRadius => '대응 반경';

  @override
  String coverageRadiusValue(String distance) {
    return '${distance}km';
  }

  @override
  String get activeAlerts => '활성 알림';

  @override
  String get none => '없음';

  @override
  String get yourLocation => '당신의 위치';

  @override
  String get whatDoYouNeedHelpWith => '어떤 도움이 필요하신가요?';

  @override
  String get additionalDetailsOptional => '추가 세부사항 (선택사항)';

  @override
  String get describeSituation => '상황을 설명해 주세요...';

  @override
  String get alertTrustedRespondersFirst => '신뢰하는 대응자에게 먼저 알림';

  @override
  String get trustedRespondersDescription => '선택한 친구/가족이 일반 커뮤니티보다 먼저 알림을 받습니다';

  @override
  String sendingAlert(String emergencyType) {
    return '알림 전송 중: $emergencyType';
  }

  @override
  String get sendAlertNow => '지금 알림 전송';

  @override
  String get pleaseSelectEmergencyType => '응급상황 유형을 선택해 주세요';

  @override
  String get categoryLifeThreatening => '🔴 생명위험';

  @override
  String get categorySecuritySafety => '🟠 보안/안전';

  @override
  String get categoryUrgentTimeSensitive => '🟡 긴급 시간제한';

  @override
  String get categoryNonLifeThreatening => '🟢 비생명위험';

  @override
  String get emergencyCprCardiacName => '심폐소생술 / 심정지';

  @override
  String get emergencyCprCardiacDesc => '의식불명이고 호흡하지 않는 상태';

  @override
  String get emergencyAedName => '자동제세동기 전달';

  @override
  String get emergencyAedDesc => '자동제세동기가 즉시 필요함';

  @override
  String get emergencyOverdoseName => '과다복용 / 날록손';

  @override
  String get emergencyOverdoseDesc => '약물 과다복용 의심, 날록손 필요';

  @override
  String get emergencyChokingName => '기도폐쇄 / 하임리히법';

  @override
  String get emergencyChokingDesc => '기도가 막혀 숨을 쉴 수 없는 상태';

  @override
  String get emergencyFireName => '화재 / 대피';

  @override
  String get emergencyFireDesc => '화재 응급상황, 대피 도움 필요';

  @override
  String get emergencyConsentName => '침실 동의 응급상황';

  @override
  String get emergencyConsentDesc => '안전단어 호출됨, 목격자 필요';

  @override
  String get emergencyBystanderName => '적극적 방관자 증인';

  @override
  String get emergencyBystanderDesc => '갈등 완화를 위한 존재 필요';

  @override
  String get emergencyMissingPetName => '반려동물 실종';

  @override
  String get emergencyMissingPetDesc => '반려동물이 길을 잃었거나 도망감, 수색대 필요';

  @override
  String get emergencyWellnessCheckName => '안부 확인';

  @override
  String get emergencyWellnessCheckDesc => '도움이 필요할 수 있는 사람 확인';

  @override
  String get emergencyQuitCompanionName => '금단 동반자';

  @override
  String get emergencyQuitCompanionDesc => '욕구와 싸우고 있음, 지지 필요';

  @override
  String get emergencyCompanionshipName => '동반자';

  @override
  String get emergencyCompanionshipDesc => '외롭거나 고립감을 느끼는 상태';

  @override
  String get emergency911CoordinationName => '119 조정';

  @override
  String get emergency911CoordinationDesc => '119 신고 및 조정 도움 필요';

  @override
  String get equipmentAed => '자동제세동기';

  @override
  String get equipmentNaloxone => '날록손/나르칸';

  @override
  String get myCapabilities => '나의 능력';

  @override
  String capabilitiesSelected(int count) {
    return '$count개 선택됨';
  }

  @override
  String get alertSchedule => '알림 일정';

  @override
  String get setAvailabilityHours => '대응 가능 시간을 설정하세요';

  @override
  String get trustedResponders => '신뢰하는 대응자';

  @override
  String get responseHistory => '대응 기록';

  @override
  String get privacyAndSafety => '개인정보 보호 및 안전';

  @override
  String get helpAndSupport => '도움말 및 지원';

  @override
  String get aboutNayborSos => 'Naybor SOS 소개';

  @override
  String get termsAndPrivacyPolicy => '이용약관 및 개인정보 처리방침';

  @override
  String get signOut => '로그아웃';

  @override
  String version(String version) {
    return '버전 $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS는 응급상황에서 이웃들을 연결하여 전문 구급대원이 도착하기 전에 중요한 도움을 제공할 수 있는 신속 대응자 네트워크를 만듭니다.';

  @override
  String get aboutDialogContent2 =>
      '누구나 영웅이 될 수 있습니다. 생명을 구하기 위해 특별한 훈련이 필요하지 않습니다. 때로는 단순히 나타나는 것만으로도 가장 강력한 개입이 될 수 있습니다.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs 공익법인';

  @override
  String get close => '닫기';

  @override
  String get signOutQuestion => '로그아웃하시겠습니까?';

  @override
  String get signOutConfirm => '정말로 로그아웃하시겠습니까?';

  @override
  String get cancel => '취소';

  @override
  String get signedOutSuccessfully => '성공적으로 로그아웃되었습니다';

  @override
  String get settings => '설정';

  @override
  String get capabilityWellnessCheck => '안부 확인';

  @override
  String get capabilityQuitCompanion => '금단 동반자';

  @override
  String get capabilityActiveBystander => '적극적 방관자';

  @override
  String get translationTier1Label => '높은 신뢰도 AI 번역';

  @override
  String get translationTier2Label => '양호한 신뢰도 AI 번역';

  @override
  String get translationTier3Label => '보통 신뢰도 AI 번역';

  @override
  String get translationTier4Label => '낮은 신뢰도 AI 번역';

  @override
  String get translationTier1Notice =>
      '이 번역은 높은 신뢰도로 AI가 생성했습니다. 실제 사용을 위해서는 전문가 검토를 권장합니다.';

  @override
  String get translationTier2Notice =>
      '이 번역은 양호한 신뢰도로 AI가 생성했습니다. 안전이 중요한 동의 및 응급상황 용어에 대해서는 전문가 검토를 권장합니다.';

  @override
  String get translationTier3Notice =>
      '⚠️ 이 번역은 실제 사용 전에 안전이 중요한 응급상황 문구에 대한 인간 검토가 필요합니다.';

  @override
  String get translationTier4Notice =>
      '⚠️ 이것은 초안 번역입니다. 실제 사용 전에 전문 번역이 필요합니다.';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get searchLanguagesHint => '언어 검색';

  @override
  String translationQualityLabel(String quality) {
    return '번역 품질: $quality';
  }

  @override
  String get helpImproveTranslations =>
      '번역 개선에 도움을 주세요 - 문제를 신고하거나 더 나은 번역에 기여해 주세요!';
}
