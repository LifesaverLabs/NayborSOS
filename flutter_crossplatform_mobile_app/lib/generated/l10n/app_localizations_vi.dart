// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Những Chiến Sĩ Thời Hiện Đại';

  @override
  String get signUpToHelp => 'Đăng ký để giúp đỡ hàng xóm';

  @override
  String get enterPhoneNumber => 'Nhập số điện thoại để bắt đầu';

  @override
  String get phoneNumberLabel => 'Số Điện Thoại';

  @override
  String get phoneNumberHint => '(555) 123-4567';

  @override
  String get sendVerificationCode => 'Gửi Mã Xác Minh';

  @override
  String get enterVerificationCode => 'Nhập mã xác minh';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Chúng tôi đã gửi mã đến $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Mã Xác Minh';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Xác Minh & Tiếp Tục';

  @override
  String get changePhoneNumber => 'Thay đổi số điện thoại';

  @override
  String get pleaseEnterPhoneNumber => 'Vui lòng nhập số điện thoại';

  @override
  String get pleaseEnterVerificationCode => 'Vui lòng nhập mã xác minh';

  @override
  String get createProfile => 'Tạo Hồ Sơ';

  @override
  String get tellUsAboutYourself => 'Hãy cho chúng tôi biết về bạn';

  @override
  String get profileSetupDescription =>
      'Thông tin này giúp chúng tôi kết nối bạn với những hàng xóm cần giúp đỡ';

  @override
  String get addPhotoOptional => 'Thêm ảnh (tùy chọn)';

  @override
  String get fullNameLabel => 'Họ Tên Đầy Đủ *';

  @override
  String get fullNameHint => 'Nguyễn Văn An';

  @override
  String get homeAddressLabel => 'Địa Chỉ Nhà *';

  @override
  String get homeAddressHint => '123 Đường Chính, Căn hộ 4B';

  @override
  String get homeAddressHelper => 'Chỉ sử dụng để khớp vị trí gần nhau';

  @override
  String get ageOptionalLabel => 'Tuổi (tùy chọn)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Từ 70 tuổi trở lên có thể đặt giờ cảnh báo nhẹ nhàng';

  @override
  String get yourPrivacyMatters => 'Quyền riêng tư của bạn rất quan trọng';

  @override
  String get privacyNotice =>
      'Vị trí của bạn chỉ được truy vấn trong các trường hợp khẩn cấp và không bao giờ lưu trữ lâu dài.';

  @override
  String get continueButton => 'Tiếp Tục';

  @override
  String get pleaseFillRequiredFields =>
      'Vui lòng điền đầy đủ các trường bắt buộc';

  @override
  String get home => 'Trang Chủ';

  @override
  String get alerts => 'Cảnh Báo';

  @override
  String get profile => 'Hồ Sơ';

  @override
  String get availableToRespond => 'Sẵn Sàng Hỗ Trợ';

  @override
  String get notAvailable => 'Không Có Sẵn';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Bạn sẽ nhận được cảnh báo khẩn cấp gần đây';

  @override
  String get toggleOnWhenReady => 'Bật khi sẵn sàng giúp đỡ';

  @override
  String get youreNowAvailable => 'Bạn hiện đã sẵn sàng hỗ trợ';

  @override
  String get youWontReceiveAlerts => 'Bạn sẽ không nhận được cảnh báo';

  @override
  String get lifeThreatening247Info =>
      'Cảnh báo nguy hiểm tính mạng sẽ thông báo cho bạn 24/7. Cảnh báo không khẩn cấp sẽ tôn trọng lịch trình của bạn.';

  @override
  String get requestHelp => 'YÊU CẦU GIÚP ĐỠ';

  @override
  String get yourImpact => 'Tác Động Của Bạn';

  @override
  String get responses => 'Phản Hồi';

  @override
  String get avgTime => 'Thời Gian TB';

  @override
  String get yourCapabilities => 'Khả Năng Của Bạn';

  @override
  String get edit => 'Chỉnh Sửa';

  @override
  String get communityNetwork => 'Mạng Lưới Cộng Đồng';

  @override
  String get nearbyResponders => 'Người Hỗ Trợ Gần Đây';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count có sẵn';
  }

  @override
  String get coverageRadius => 'Bán Kính Phủ Sóng';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance dặm';
  }

  @override
  String get activeAlerts => 'Cảnh Báo Đang Hoạt Động';

  @override
  String get none => 'Không có';

  @override
  String get yourLocation => 'Vị Trí Của Bạn';

  @override
  String get whatDoYouNeedHelpWith => 'Bạn cần giúp đỡ về vấn đề gì?';

  @override
  String get additionalDetailsOptional => 'Chi Tiết Bổ Sung (tùy chọn)';

  @override
  String get describeSituation => 'Mô tả tình huống...';

  @override
  String get alertTrustedRespondersFirst =>
      'Cảnh báo những người hỗ trợ tin cậy trước';

  @override
  String get trustedRespondersDescription =>
      'Bạn bè/gia đình được chọn sẽ được thông báo trước cộng đồng chung';

  @override
  String sendingAlert(String emergencyType) {
    return 'Đang gửi cảnh báo: $emergencyType';
  }

  @override
  String get sendAlertNow => 'GỬI CẢNH BÁO NGAY';

  @override
  String get pleaseSelectEmergencyType => 'Vui lòng chọn loại khẩn cấp';

  @override
  String get categoryLifeThreatening => '🔴 Nguy Hiểm Tính Mạng';

  @override
  String get categorySecuritySafety => '🟠 An Ninh/An Toàn';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Khẩn Cấp Theo Thời Gian';

  @override
  String get categoryNonLifeThreatening => '🟢 Không Nguy Hiểm Tính Mạng';

  @override
  String get emergencyCprCardiacName => 'Hô Hấp Nhân Tạo / Ngưng Tim';

  @override
  String get emergencyCprCardiacDesc =>
      'Người bệnh không phản ứng và không thở';

  @override
  String get emergencyAedName => 'Giao Máy Khử Rung Tim';

  @override
  String get emergencyAedDesc => 'Cần máy khử rung tim ngay lập tức';

  @override
  String get emergencyOverdoseName => 'Quá Liều / Naloxone';

  @override
  String get emergencyOverdoseDesc => 'Nghi ngờ quá liều ma túy, cần naloxone';

  @override
  String get emergencyChokingName => 'Nghẹt Thở / Heimlich';

  @override
  String get emergencyChokingDesc => 'Người bệnh bị nghẹt và không thể thở';

  @override
  String get emergencyFireName => 'Hỏa Hoạn / Sơ Tán';

  @override
  String get emergencyFireDesc => 'Khẩn cấp hỏa hoạn, cần giúp đỡ sơ tán';

  @override
  String get emergencyConsentName => 'Khẩn Cấp Đồng Thuận Riêng Tư';

  @override
  String get emergencyConsentDesc => 'Từ an toàn được gọi, cần nhân chứng';

  @override
  String get emergencyBystanderName => 'Nhân Chứng Tích Cực';

  @override
  String get emergencyBystanderDesc =>
      'Cần sự hiện diện để giảm leo thang xung đột';

  @override
  String get emergencyMissingPetName => 'Thú Cưng Mất Tích';

  @override
  String get emergencyMissingPetDesc =>
      'Thú cưng bị lạc hoặc chạy mất, cần đội tìm kiếm';

  @override
  String get emergencyWellnessCheckName => 'Kiểm Tra Sức Khỏe';

  @override
  String get emergencyWellnessCheckDesc => 'Kiểm tra người có thể cần giúp đỡ';

  @override
  String get emergencyQuitCompanionName => 'Bạn Đồng Hành Cai Nghiện';

  @override
  String get emergencyQuitCompanionDesc => 'Đang chống cơn thèm, cần hỗ trợ';

  @override
  String get emergencyCompanionshipName => 'Bầu Bạn';

  @override
  String get emergencyCompanionshipDesc => 'Cảm thấy cô đơn hoặc bị cô lập';

  @override
  String get emergency911CoordinationName => 'Điều Phối Dịch Vụ Khẩn Cấp';

  @override
  String get emergency911CoordinationDesc =>
      'Cần giúp gọi và điều phối dịch vụ khẩn cấp';

  @override
  String get equipmentAed => 'Máy Khử Rung Tim';

  @override
  String get equipmentNaloxone => 'Naloxone/Narcan';

  @override
  String get myCapabilities => 'Khả Năng Của Tôi';

  @override
  String capabilitiesSelected(int count) {
    return '$count đã chọn';
  }

  @override
  String get alertSchedule => 'Lịch Cảnh Báo';

  @override
  String get setAvailabilityHours => 'Đặt giờ có mặt của bạn';

  @override
  String get trustedResponders => 'Người Hỗ Trợ Tin Cậy';

  @override
  String get responseHistory => 'Lịch Sử Phản Hồi';

  @override
  String get privacyAndSafety => 'Quyền Riêng Tư & An Toàn';

  @override
  String get helpAndSupport => 'Trợ Giúp & Hỗ Trợ';

  @override
  String get aboutNayborSos => 'Giới Thiệu Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Điều Khoản & Chính Sách Riêng Tư';

  @override
  String get signOut => 'Đăng Xuất';

  @override
  String version(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS kết nối hàng xóm trong các tình huống khẩn cấp, tạo ra một mạng lưới những người hỗ trợ nhanh chóng có thể cung cấp hỗ trợ quan trọng trước khi lực lượng cứu hộ chuyên nghiệp đến.';

  @override
  String get aboutDialogContent2 =>
      'Mọi người đều có thể trở thành anh hùng. Bạn không cần đào tạo đặc biệt để cứu sống. Đôi khi can thiệp mạnh mẽ nhất chỉ đơn giản là có mặt.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Đóng';

  @override
  String get signOutQuestion => 'Đăng Xuất?';

  @override
  String get signOutConfirm => 'Bạn có chắc chắn muốn đăng xuất?';

  @override
  String get cancel => 'Hủy';

  @override
  String get signedOutSuccessfully => 'Đã đăng xuất thành công';

  @override
  String get settings => 'Cài Đặt';

  @override
  String get capabilityWellnessCheck => 'Kiểm Tra Sức Khỏe';

  @override
  String get capabilityQuitCompanion => 'Bạn Đồng Hành Cai Nghiện';

  @override
  String get capabilityActiveBystander => 'Nhân Chứng Tích Cực';

  @override
  String get translationTier1Label => 'Dịch Thuật AI Độ Tin Cậy Cao';

  @override
  String get translationTier2Label => 'Dịch Thuật AI Độ Tin Cậy Tốt';

  @override
  String get translationTier3Label => 'Dịch Thuật AI Độ Tin Cậy Trung Bình';

  @override
  String get translationTier4Label => 'Dịch Thuật AI Độ Tin Cậy Thấp';

  @override
  String get translationTier1Notice =>
      'Bản dịch này được tạo bởi AI với độ tin cậy cao. Khuyến nghị xem xét chuyên nghiệp cho việc sử dụng thực tế.';

  @override
  String get translationTier2Notice =>
      'Bản dịch này được tạo bởi AI với độ tin cậy tốt. Khuyến nghị xem xét chuyên nghiệp cho thuật ngữ đồng thuận và khẩn cấp quan trọng về an toàn.';

  @override
  String get translationTier3Notice =>
      '⚠️ Bản dịch này cần xem xét của con người cho các cụm từ khẩn cấp quan trọng về an toàn trước khi sử dụng thực tế.';

  @override
  String get translationTier4Notice =>
      '⚠️ Đây chỉ là bản dịch thảo. Cần dịch thuật chuyên nghiệp trước khi sử dụng thực tế.';

  @override
  String get selectLanguage => 'Chọn Ngôn Ngữ';

  @override
  String get searchLanguagesHint => 'Tìm kiếm ngôn ngữ';

  @override
  String translationQualityLabel(String quality) {
    return 'Chất Lượng Dịch Thuật: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Giúp cải thiện bản dịch - báo cáo vấn đề hoặc đóng góp bản dịch tốt hơn!';
}
