// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'מתנדבים מודרניים לעזרה דחופה';

  @override
  String get signUpToHelp => 'הירשמו כדי לעזור לשכנים שלכם';

  @override
  String get enterPhoneNumber => 'הזינו את מספר הטלפון שלכם כדי להתחיל';

  @override
  String get phoneNumberLabel => 'מספר טלפון';

  @override
  String get phoneNumberHint => '050-123-4567';

  @override
  String get sendVerificationCode => 'שלחו קוד אימות';

  @override
  String get enterVerificationCode => 'הזינו קוד אימות';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'שלחנו קוד אל $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'קוד אימות';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'אמתו והמשיכו';

  @override
  String get changePhoneNumber => 'שנו מספר טלפון';

  @override
  String get pleaseEnterPhoneNumber => 'אנא הזינו את מספר הטלפון שלכם';

  @override
  String get pleaseEnterVerificationCode => 'אנא הזינו את קוד האימות';

  @override
  String get createProfile => 'צרו פרופיל';

  @override
  String get tellUsAboutYourself => 'ספרו לנו על עצמכם';

  @override
  String get profileSetupDescription =>
      'המידע הזה עוזר לנו לחבר אתכם לשכנים שזקוקים לעזרה';

  @override
  String get addPhotoOptional => 'הוסיפו תמונה (אופציונלי)';

  @override
  String get fullNameLabel => 'שם מלא *';

  @override
  String get fullNameHint => 'יוחנן כהן';

  @override
  String get homeAddressLabel => 'כתובת מגורים *';

  @override
  String get homeAddressHint => 'רחוב הרצל 123, דירה 4ב';

  @override
  String get homeAddressHelper => 'משמש לחיבור לפי קרבה בלבד';

  @override
  String get ageOptionalLabel => 'גיל (אופציונלי)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'גילאי 70+ יכולים להגדיר שעות התראה עדינות';

  @override
  String get yourPrivacyMatters => 'הפרטיות שלכם חשובה';

  @override
  String get privacyNotice =>
      'המיקום שלכם נשלח רק במהלך מצבי חירום פעילים ואינו נשמר לטווח ארוך.';

  @override
  String get continueButton => 'המשיכו';

  @override
  String get pleaseFillRequiredFields => 'אנא מלאו את כל השדות הנדרשים';

  @override
  String get home => 'בית';

  @override
  String get alerts => 'התראות';

  @override
  String get profile => 'פרופיל';

  @override
  String get availableToRespond => 'זמין להגיב';

  @override
  String get notAvailable => 'לא זמין';

  @override
  String get youllReceiveEmergencyAlerts => 'תקבלו התראות חירום בסביבה';

  @override
  String get toggleOnWhenReady => 'הפעילו כשאתם מוכנים לעזור';

  @override
  String get youreNowAvailable => 'אתם זמינים כעת להגיב';

  @override
  String get youWontReceiveAlerts => 'לא תקבלו התראות';

  @override
  String get lifeThreatening247Info =>
      'התראות מסכנות חיים יגיעו אליכם 24/7. התראות לא דחופות יכבדו את הלוח הזמנים שלכם.';

  @override
  String get requestHelp => 'בקשו עזרה';

  @override
  String get yourImpact => 'ההשפעה שלכם';

  @override
  String get responses => 'תגובות';

  @override
  String get avgTime => 'זמן ממוצע';

  @override
  String get yourCapabilities => 'היכולות שלכם';

  @override
  String get edit => 'ערכו';

  @override
  String get communityNetwork => 'רשת הקהילה';

  @override
  String get nearbyResponders => 'מגיבים בסביבה';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count זמינים';
  }

  @override
  String get coverageRadius => 'רדיוס כיסוי';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance ק\"מ';
  }

  @override
  String get activeAlerts => 'התראות פעילות';

  @override
  String get none => 'אין';

  @override
  String get yourLocation => 'המיקום שלכם';

  @override
  String get whatDoYouNeedHelpWith => 'במה אתם זקוקים לעזרה?';

  @override
  String get additionalDetailsOptional => 'פרטים נוספים (אופציונלי)';

  @override
  String get describeSituation => 'תארו את המצב...';

  @override
  String get alertTrustedRespondersFirst => 'התריעו תחילה למגיבים המהימנים שלי';

  @override
  String get trustedRespondersDescription =>
      'חברים/משפחה שבחרתם יקבלו התראה לפני הקהילה הכללית';

  @override
  String sendingAlert(String emergencyType) {
    return 'שולח התראה: $emergencyType';
  }

  @override
  String get sendAlertNow => 'שלחו התראה עכשיו';

  @override
  String get pleaseSelectEmergencyType => 'אנא בחרו סוג חירום';

  @override
  String get categoryLifeThreatening => '🔴 מסכן חיים';

  @override
  String get categorySecuritySafety => '🟠 בטחון/בטיחות';

  @override
  String get categoryUrgentTimeSensitive => '🟡 דחוף ורגיש זמן';

  @override
  String get categoryNonLifeThreatening => '🟢 לא מסכן חיים';

  @override
  String get emergencyCprCardiacName => 'החייאה / דום לב';

  @override
  String get emergencyCprCardiacDesc => 'אדם לא מגיב ולא נושם';

  @override
  String get emergencyAedName => 'הבאת דפיברילטור';

  @override
  String get emergencyAedDesc => 'זקוק לדפיברילטור מיד';

  @override
  String get emergencyOverdoseName => 'מנת יתר / נלוקסון';

  @override
  String get emergencyOverdoseDesc => 'חשד למנת יתר של סמים, זקוק לנלוקסון';

  @override
  String get emergencyChokingName => 'חנק / היימליך';

  @override
  String get emergencyChokingDesc => 'אדם נחנק ולא יכול לנשום';

  @override
  String get emergencyFireName => 'שריפה / פינוי';

  @override
  String get emergencyFireDesc => 'חירום שריפה, זקוק לעזרת פינוי';

  @override
  String get emergencyConsentName => 'חירום הסכמה חדר שינה';

  @override
  String get emergencyConsentDesc => 'נאמרה מילת בטחון, זקוק לעד';

  @override
  String get emergencyBystanderName => 'עד צופה פעיל';

  @override
  String get emergencyBystanderDesc => 'זקוק לנוכחות להרגעת עימות';

  @override
  String get emergencyMissingPetName => 'חיית מחמד נעדרת';

  @override
  String get emergencyMissingPetDesc =>
      'חיית מחמד אבדה או ברחה, זקוק לקבוצת חיפוש';

  @override
  String get emergencyWellnessCheckName => 'בדיקת רווחה';

  @override
  String get emergencyWellnessCheckDesc => 'לבדוק מישהו שעלול להזדקק לעזרה';

  @override
  String get emergencyQuitCompanionName => 'בן לוויה להפסקת הרגל';

  @override
  String get emergencyQuitCompanionDesc => 'נלחם בתשוקה, זקוק לתמיכה';

  @override
  String get emergencyCompanionshipName => 'חברות';

  @override
  String get emergencyCompanionshipDesc => 'מרגיש בודד או מבודד';

  @override
  String get emergency911CoordinationName => 'תיאום שירותי חירום';

  @override
  String get emergency911CoordinationDesc =>
      'זקוק לעזרה בהתקשרות ותיאום שירותי חירום';

  @override
  String get equipmentAed => 'דפיברילטור';

  @override
  String get equipmentNaloxone => 'נלוקסון/נרקן';

  @override
  String get myCapabilities => 'היכולות שלי';

  @override
  String capabilitiesSelected(int count) {
    return '$count נבחרו';
  }

  @override
  String get alertSchedule => 'לוח זמני התראות';

  @override
  String get setAvailabilityHours => 'הגדירו את שעות הזמינות שלכם';

  @override
  String get trustedResponders => 'מגיבים מהימנים';

  @override
  String get responseHistory => 'היסטוריית תגובות';

  @override
  String get privacyAndSafety => 'פרטיות ובטיחות';

  @override
  String get helpAndSupport => 'עזרה ותמיכה';

  @override
  String get aboutNayborSos => 'אודות Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'תנאים ומדיניות פרטיות';

  @override
  String get signOut => 'התנתקו';

  @override
  String version(String version) {
    return 'גרסה $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS מחבר שכנים במצבי חירום, יוצר רשת של מגיבים מהירים שיכולים לספק עזרה קריטית לפני הגעת כוחות הצלה מקצועיים.';

  @override
  String get aboutDialogContent2 =>
      'כולם יכולים להיות גיבורים. אתם לא צריכים הכשרה מיוחדת כדי להציל חיים. לפעמים ההתערבות החזקה ביותר היא פשוט להגיע.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'סגרו';

  @override
  String get signOutQuestion => 'להתנתק?';

  @override
  String get signOutConfirm => 'האם אתם בטוחים שברצונכם להתנתק?';

  @override
  String get cancel => 'ביטול';

  @override
  String get signedOutSuccessfully => 'התנתקתם בהצלחה';

  @override
  String get settings => 'הגדרות';

  @override
  String get capabilityWellnessCheck => 'בדיקת רווחה';

  @override
  String get capabilityQuitCompanion => 'בן לוויה להפסקת הרגל';

  @override
  String get capabilityActiveBystander => 'צופה פעיל';

  @override
  String get translationTier1Label => 'תרגום AI ברמת אמון גבוהה';

  @override
  String get translationTier2Label => 'תרגום AI ברמת אמון טובה';

  @override
  String get translationTier3Label => 'תרגום AI ברמת אמון בינונית';

  @override
  String get translationTier4Label => 'תרגום AI ברמת אמון נמוכה';

  @override
  String get translationTier1Notice =>
      'תרגום זה נוצר על ידי AI ברמת אמון גבוהה. מומלצת בדיקה מקצועית לשימוש בייצור.';

  @override
  String get translationTier2Notice =>
      'תרגום זה נוצר על ידי AI ברמת אמון טובה. מומלצת בדיקה מקצועית עבור טרמינולוגיה קריטית של הסכמה וחירום.';

  @override
  String get translationTier3Notice =>
      '⚠️ תרגום זה דורש בדיקה אנושית עבור ביטויי חירום קריטיים לפני שימוש בייצור.';

  @override
  String get translationTier4Notice =>
      '⚠️ זהו תרגום טיוטה בלבד. נדרש תרגום מקצועי לפני שימוש בייצור.';

  @override
  String get selectLanguage => 'בחרו שפה';

  @override
  String get searchLanguagesHint => 'חפשו שפות';

  @override
  String translationQualityLabel(String quality) {
    return 'איכות תרגום: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'עזרו לשפר תרגומים - דווחו על בעיות או תרמו תרגומים טובים יותר!';
}
