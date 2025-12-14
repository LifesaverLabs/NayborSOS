// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Minutemani și Minutewomanii Moderni';

  @override
  String get signUpToHelp => 'Înregistrează-te pentru a-ți ajuta vecinii';

  @override
  String get enterPhoneNumber =>
      'Introduceți numărul de telefon pentru a începe';

  @override
  String get phoneNumberLabel => 'Număr de telefon';

  @override
  String get phoneNumberHint => '0712 345 678';

  @override
  String get sendVerificationCode => 'Trimite codul de verificare';

  @override
  String get enterVerificationCode => 'Introduceți codul de verificare';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Am trimis un cod la $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Cod de verificare';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifică și continuă';

  @override
  String get changePhoneNumber => 'Schimbă numărul de telefon';

  @override
  String get pleaseEnterPhoneNumber =>
      'Vă rugăm introduceți numărul de telefon';

  @override
  String get pleaseEnterVerificationCode =>
      'Vă rugăm introduceți codul de verificare';

  @override
  String get createProfile => 'Creează profil';

  @override
  String get tellUsAboutYourself => 'Spune-ne despre tine';

  @override
  String get profileSetupDescription =>
      'Aceste informații ne ajută să te conectăm cu vecinii care au nevoie de ajutor';

  @override
  String get addPhotoOptional => 'Adaugă fotografie (opțional)';

  @override
  String get fullNameLabel => 'Nume complet *';

  @override
  String get fullNameHint => 'Ion Popescu';

  @override
  String get homeAddressLabel => 'Adresa de domiciliu *';

  @override
  String get homeAddressHint => 'Str. Principală nr. 123, Ap. 4B';

  @override
  String get homeAddressHelper =>
      'Folosit doar pentru corespondența de proximitate';

  @override
  String get ageOptionalLabel => 'Vârsta (opțional)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Persoanele de 70+ ani pot seta ore de alertă blânde';

  @override
  String get yourPrivacyMatters => 'Confidențialitatea ta contează';

  @override
  String get privacyNotice =>
      'Locația ta este solicitată doar în timpul urgențelor active și nu este niciodată stocată pe termen lung.';

  @override
  String get continueButton => 'Continuă';

  @override
  String get pleaseFillRequiredFields =>
      'Vă rugăm completați toate câmpurile obligatorii';

  @override
  String get home => 'Acasă';

  @override
  String get alerts => 'Alerte';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Disponibil pentru răspuns';

  @override
  String get notAvailable => 'Indisponibil';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Veți primi alerte de urgență din apropiere';

  @override
  String get toggleOnWhenReady => 'Activează când ești gata să ajuți';

  @override
  String get youreNowAvailable => 'Acum ești disponibil pentru a răspunde';

  @override
  String get youWontReceiveAlerts => 'Nu veți primi alerte';

  @override
  String get lifeThreatening247Info =>
      'Alertele care pun viața în pericol vă vor notifica 24/7. Alertele non-urgente respectă programul dvs.';

  @override
  String get requestHelp => 'SOLICITĂ AJUTOR';

  @override
  String get yourImpact => 'Impactul tău';

  @override
  String get responses => 'Răspunsuri';

  @override
  String get avgTime => 'Timp mediu';

  @override
  String get yourCapabilities => 'Abilitățile tale';

  @override
  String get edit => 'Editează';

  @override
  String get communityNetwork => 'Rețeaua comunității';

  @override
  String get nearbyResponders => 'Respondenti din apropiere';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count disponibili';
  }

  @override
  String get coverageRadius => 'Raza de acoperire';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance km';
  }

  @override
  String get activeAlerts => 'Alerte active';

  @override
  String get none => 'Niciunul';

  @override
  String get yourLocation => 'Locația ta';

  @override
  String get whatDoYouNeedHelpWith => 'Cu ce ai nevoie de ajutor?';

  @override
  String get additionalDetailsOptional => 'Detalii suplimentare (opțional)';

  @override
  String get describeSituation => 'Descrieți situația...';

  @override
  String get alertTrustedRespondersFirst =>
      'Alertează mai întâi respondenții de încredere';

  @override
  String get trustedRespondersDescription =>
      'Prietenii/familia selectată vor fi notificați înainte de comunitatea generală';

  @override
  String sendingAlert(String emergencyType) {
    return 'Trimit alerta: $emergencyType';
  }

  @override
  String get sendAlertNow => 'TRIMITE ALERTA ACUM';

  @override
  String get pleaseSelectEmergencyType => 'Vă rugăm selectați tipul de urgență';

  @override
  String get categoryLifeThreatening => '🔴 Pericol de moarte';

  @override
  String get categorySecuritySafety => '🟠 Securitate/Siguranță';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent sensibil la timp';

  @override
  String get categoryNonLifeThreatening => '🟢 Fără pericol de moarte';

  @override
  String get emergencyCprCardiacName => 'RCP / Stop cardiac';

  @override
  String get emergencyCprCardiacDesc => 'Persoana nu răspunde și nu respiră';

  @override
  String get emergencyAedName => 'Livrare AED';

  @override
  String get emergencyAedDesc => 'Am nevoie de un AED imediat';

  @override
  String get emergencyOverdoseName => 'Supradoză / Naloxona';

  @override
  String get emergencyOverdoseDesc =>
      'Suspiciune de supradoză, am nevoie de naloxona';

  @override
  String get emergencyChokingName => 'Înăbușire / Heimlich';

  @override
  String get emergencyChokingDesc =>
      'Persoana se înăbușește și nu poate respira';

  @override
  String get emergencyFireName => 'Incendiu / Evacuare';

  @override
  String get emergencyFireDesc =>
      'Urgență incendiu, am nevoie de ajutor pentru evacuare';

  @override
  String get emergencyConsentName => 'Urgență de consimțământ în dormitor';

  @override
  String get emergencyConsentDesc =>
      'Cuvântul de siguranță a fost rostit, am nevoie de martor';

  @override
  String get emergencyBystanderName => 'Martor activ observator';

  @override
  String get emergencyBystanderDesc =>
      'Am nevoie de prezență pentru a dezamorsa conflictul';

  @override
  String get emergencyMissingPetName => 'Animal de companie dispărut';

  @override
  String get emergencyMissingPetDesc =>
      'Animalul s-a pierdut sau a fugit, am nevoie de echipă de căutare';

  @override
  String get emergencyWellnessCheckName => 'Verificare de bunăstare';

  @override
  String get emergencyWellnessCheckDesc =>
      'Verificați pe cineva care poate avea nevoie de ajutor';

  @override
  String get emergencyQuitCompanionName => 'Companion pentru renunțare';

  @override
  String get emergencyQuitCompanionDesc =>
      'Lupt împotriva poftei, am nevoie de sprijin';

  @override
  String get emergencyCompanionshipName => 'Companionship';

  @override
  String get emergencyCompanionshipDesc => 'Mă simt singur sau izolat';

  @override
  String get emergency911CoordinationName => 'Coordonare 112';

  @override
  String get emergency911CoordinationDesc =>
      'Am nevoie de ajutor să sun și să coordonez cu 112';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxona/Narcan';

  @override
  String get myCapabilities => 'Abilitățile mele';

  @override
  String capabilitiesSelected(int count) {
    return '$count selectate';
  }

  @override
  String get alertSchedule => 'Program alerte';

  @override
  String get setAvailabilityHours => 'Setează orele de disponibilitate';

  @override
  String get trustedResponders => 'Respondenti de încredere';

  @override
  String get responseHistory => 'Istoricul răspunsurilor';

  @override
  String get privacyAndSafety => 'Confidențialitate și siguranță';

  @override
  String get helpAndSupport => 'Ajutor și suport';

  @override
  String get aboutNayborSos => 'Despre Naybor SOS';

  @override
  String get termsAndPrivacyPolicy =>
      'Termeni și politica de confidențialitate';

  @override
  String get signOut => 'Deconectare';

  @override
  String version(String version) {
    return 'Versiunea $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS conectează vecinii în urgențe, creând o rețea de respondenti rapizi care pot oferi ajutor critic înainte de sosirea serviciilor profesionale de urgență.';

  @override
  String get aboutDialogContent2 =>
      'Toată lumea poate fi un erou. Nu ai nevoie de pregătire specială pentru a salva o viață. Uneori cea mai puternică intervenție este pur și simplu să te prezinți.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Închide';

  @override
  String get signOutQuestion => 'Deconectare?';

  @override
  String get signOutConfirm => 'Ești sigur că vrei să te deconectezi?';

  @override
  String get cancel => 'Anulează';

  @override
  String get signedOutSuccessfully => 'Deconectat cu succes';

  @override
  String get settings => 'Setări';

  @override
  String get capabilityWellnessCheck => 'Verificare de bunăstare';

  @override
  String get capabilityQuitCompanion => 'Companion pentru renunțare';

  @override
  String get capabilityActiveBystander => 'Martor activ';

  @override
  String get translationTier1Label => 'Traducere AI cu încredere mare';

  @override
  String get translationTier2Label => 'Traducere AI cu încredere bună';

  @override
  String get translationTier3Label => 'Traducere AI cu încredere medie';

  @override
  String get translationTier4Label => 'Traducere AI cu încredere scăzută';

  @override
  String get translationTier1Notice =>
      'Această traducere a fost generată de AI cu încredere mare. Se recomandă revizuirea profesională pentru utilizarea în producție.';

  @override
  String get translationTier2Notice =>
      'Această traducere a fost generată de AI cu încredere bună. Se recomandă revizuirea profesională pentru terminologia critică de siguranță, consimțământ și urgență.';

  @override
  String get translationTier3Notice =>
      '⚠️ Această traducere necesită revizuire umană pentru frazele de urgență critice de siguranță înainte de utilizarea în producție.';

  @override
  String get translationTier4Notice =>
      '⚠️ Aceasta este doar o traducere de draft. Este necesară traducerea profesională înainte de utilizarea în producție.';

  @override
  String get selectLanguage => 'Selectează limba';

  @override
  String get searchLanguagesHint => 'Caută limbi';

  @override
  String translationQualityLabel(String quality) {
    return 'Calitatea traducerii: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Ajută la îmbunătățirea traducerilor - raportează probleme sau contribuie cu traduceri mai bune!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
