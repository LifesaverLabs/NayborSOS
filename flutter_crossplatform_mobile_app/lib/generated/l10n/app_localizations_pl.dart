// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Współcześni Obrońcy Minutemani';

  @override
  String get signUpToHelp => 'Zarejestruj się, aby pomagać swoim sąsiadom';

  @override
  String get enterPhoneNumber => 'Wprowadź swój numer telefonu, aby rozpocząć';

  @override
  String get phoneNumberLabel => 'Numer Telefonu';

  @override
  String get phoneNumberHint => '123 456 789';

  @override
  String get sendVerificationCode => 'Wyślij Kod Weryfikacyjny';

  @override
  String get enterVerificationCode => 'Wprowadź kod weryfikacyjny';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Wysłaliśmy kod na numer $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Kod Weryfikacyjny';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Zweryfikuj i Kontynuuj';

  @override
  String get changePhoneNumber => 'Zmień numer telefonu';

  @override
  String get pleaseEnterPhoneNumber => 'Proszę wprowadzić numer telefonu';

  @override
  String get pleaseEnterVerificationCode =>
      'Proszę wprowadzić kod weryfikacyjny';

  @override
  String get createProfile => 'Utwórz Profil';

  @override
  String get tellUsAboutYourself => 'Opowiedz nam o sobie';

  @override
  String get profileSetupDescription =>
      'Te informacje pomagają nam łączyć Cię z sąsiadami, którzy potrzebują pomocy';

  @override
  String get addPhotoOptional => 'Dodaj zdjęcie (opcjonalnie)';

  @override
  String get fullNameLabel => 'Imię i Nazwisko *';

  @override
  String get fullNameHint => 'Jan Kowalski';

  @override
  String get homeAddressLabel => 'Adres Zamieszkania *';

  @override
  String get homeAddressHint => 'ul. Główna 123, m. 4B';

  @override
  String get homeAddressHelper => 'Używane tylko do dopasowania odległości';

  @override
  String get ageOptionalLabel => 'Wiek (opcjonalnie)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Osoby 70+ mogą ustawić łagodne godziny alertów';

  @override
  String get yourPrivacyMatters => 'Twoja prywatność jest ważna';

  @override
  String get privacyNotice =>
      'Twoja lokalizacja jest sprawdzana tylko podczas aktywnych sytuacji awaryjnych i nigdy nie jest przechowywana długoterminowo.';

  @override
  String get continueButton => 'Kontynuuj';

  @override
  String get pleaseFillRequiredFields =>
      'Proszę wypełnić wszystkie wymagane pola';

  @override
  String get home => 'Główna';

  @override
  String get alerts => 'Alerty';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Dostępny do Reagowania';

  @override
  String get notAvailable => 'Niedostępny';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Będziesz otrzymywać alerty awaryjne z okolicy';

  @override
  String get toggleOnWhenReady => 'Włącz, gdy będziesz gotowy pomóc';

  @override
  String get youreNowAvailable => 'Jesteś teraz dostępny do reagowania';

  @override
  String get youWontReceiveAlerts => 'Nie będziesz otrzymywać alertów';

  @override
  String get lifeThreatening247Info =>
      'Alerty zagrażające życiu będą Cię powiadamiać 24/7. Alerty niepilne respektują Twój harmonogram.';

  @override
  String get requestHelp => 'POPROŚ O POMOC';

  @override
  String get yourImpact => 'Twój Wkład';

  @override
  String get responses => 'Odpowiedzi';

  @override
  String get avgTime => 'Śr. Czas';

  @override
  String get yourCapabilities => 'Twoje Umiejętności';

  @override
  String get edit => 'Edytuj';

  @override
  String get communityNetwork => 'Sieć Społeczności';

  @override
  String get nearbyResponders => 'Pobliski Ratownicy';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count dostępnych';
  }

  @override
  String get coverageRadius => 'Zasięg Pokrycia';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilometrów';
  }

  @override
  String get activeAlerts => 'Aktywne Alerty';

  @override
  String get none => 'Brak';

  @override
  String get yourLocation => 'Twoja Lokalizacja';

  @override
  String get whatDoYouNeedHelpWith => 'W czym potrzebujesz pomocy?';

  @override
  String get additionalDetailsOptional => 'Dodatkowe Szczegóły (opcjonalnie)';

  @override
  String get describeSituation => 'Opisz sytuację...';

  @override
  String get alertTrustedRespondersFirst =>
      'Powiadom najpierw moich zaufanych ratowników';

  @override
  String get trustedRespondersDescription =>
      'Wybrani przyjaciele/rodzina zostaną powiadomieni przed ogólną społecznością';

  @override
  String sendingAlert(String emergencyType) {
    return 'Wysyłanie alertu: $emergencyType';
  }

  @override
  String get sendAlertNow => 'WYŚLIJ ALERT TERAZ';

  @override
  String get pleaseSelectEmergencyType =>
      'Proszę wybrać typ sytuacji awaryjnej';

  @override
  String get categoryLifeThreatening => '🔴 Zagrażające Życiu';

  @override
  String get categorySecuritySafety => '🟠 Bezpieczeństwo';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Pilne Czasowo';

  @override
  String get categoryNonLifeThreatening => '🟢 Niezagrażające Życiu';

  @override
  String get emergencyCprCardiacName => 'RKO / Zatrzymanie Krążenia';

  @override
  String get emergencyCprCardiacDesc => 'Osoba nie reaguje i nie oddycha';

  @override
  String get emergencyAedName => 'Dostawa AED';

  @override
  String get emergencyAedDesc => 'Potrzebny natychmiast defibrylator AED';

  @override
  String get emergencyOverdoseName => 'Przedawkowanie / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Podejrzenie przedawkowania narkotyków, potrzebny nalokson';

  @override
  String get emergencyChokingName => 'Zadławienie / Heimlich';

  @override
  String get emergencyChokingDesc => 'Osoba się dławi i nie może oddychać';

  @override
  String get emergencyFireName => 'Pożar / Ewakuacja';

  @override
  String get emergencyFireDesc =>
      'Sytuacja pożarowa, potrzebna pomoc w ewakuacji';

  @override
  String get emergencyConsentName => 'Sytuacja Awaryjna Zgody w Sypialni';

  @override
  String get emergencyConsentDesc =>
      'Wezwano bezpieczne słowo, potrzebny świadek';

  @override
  String get emergencyBystanderName => 'Aktywny Świadek';

  @override
  String get emergencyBystanderDesc =>
      'Potrzebna obecność do deeskalacji konfliktu';

  @override
  String get emergencyMissingPetName => 'Zaginione Zwierzę';

  @override
  String get emergencyMissingPetDesc =>
      'Zwierzę zginęło lub uciekło, potrzebna grupa poszukiwawcza';

  @override
  String get emergencyWellnessCheckName => 'Kontrola Stanu Zdrowia';

  @override
  String get emergencyWellnessCheckDesc =>
      'Sprawdzenie kogoś, kto może potrzebować pomocy';

  @override
  String get emergencyQuitCompanionName => 'Towarzysz Rzucania';

  @override
  String get emergencyQuitCompanionDesc =>
      'Walka z uzależnieniem, potrzebne wsparcie';

  @override
  String get emergencyCompanionshipName => 'Towarzystwo';

  @override
  String get emergencyCompanionshipDesc => 'Uczucie samotności lub izolacji';

  @override
  String get emergency911CoordinationName => 'Koordynacja Służb Ratunkowych';

  @override
  String get emergency911CoordinationDesc =>
      'Potrzebna pomoc w wezwaniu i koordynacji służb ratunkowych';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narkan';

  @override
  String get myCapabilities => 'Moje Umiejętności';

  @override
  String capabilitiesSelected(int count) {
    return '$count wybranych';
  }

  @override
  String get alertSchedule => 'Harmonogram Alertów';

  @override
  String get setAvailabilityHours => 'Ustaw godziny swojej dostępności';

  @override
  String get trustedResponders => 'Zaufani Ratownicy';

  @override
  String get responseHistory => 'Historia Odpowiedzi';

  @override
  String get privacyAndSafety => 'Prywatność i Bezpieczeństwo';

  @override
  String get helpAndSupport => 'Pomoc i Wsparcie';

  @override
  String get aboutNayborSos => 'O Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Warunki i Polityka Prywatności';

  @override
  String get signOut => 'Wyloguj';

  @override
  String version(String version) {
    return 'Wersja $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS łączy sąsiadów w sytuacjach awaryjnych, tworząc sieć szybkich ratowników, którzy mogą udzielić krytycznej pomocy przed przybyciem profesjonalnych służb ratunkowych.';

  @override
  String get aboutDialogContent2 =>
      'Każdy może być bohaterem. Nie potrzebujesz specjalnego szkolenia, aby uratować życie. Czasami najpotężniejszą interwencją jest po prostu pojawienie się.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Zamknij';

  @override
  String get signOutQuestion => 'Wylogować?';

  @override
  String get signOutConfirm => 'Czy na pewno chcesz się wylogować?';

  @override
  String get cancel => 'Anuluj';

  @override
  String get signedOutSuccessfully => 'Pomyślnie wylogowano';

  @override
  String get settings => 'Ustawienia';

  @override
  String get capabilityWellnessCheck => 'Kontrola Stanu Zdrowia';

  @override
  String get capabilityQuitCompanion => 'Towarzysz Rzucania';

  @override
  String get capabilityActiveBystander => 'Aktywny Świadek';

  @override
  String get translationTier1Label => 'Tłumaczenie AI Wysokiej Pewności';

  @override
  String get translationTier2Label => 'Tłumaczenie AI Dobrej Pewności';

  @override
  String get translationTier3Label => 'Tłumaczenie AI Średniej Pewności';

  @override
  String get translationTier4Label => 'Tłumaczenie AI Niskiej Pewności';

  @override
  String get translationTier1Notice =>
      'To tłumaczenie zostało wygenerowane przez AI z wysoką pewnością. Zalecana profesjonalna weryfikacja do użytku produkcyjnego.';

  @override
  String get translationTier2Notice =>
      'To tłumaczenie zostało wygenerowane przez AI z dobrą pewnością. Zalecana profesjonalna weryfikacja dla krytycznej terminologii dotyczącej bezpieczeństwa, zgody i sytuacji awaryjnych.';

  @override
  String get translationTier3Notice =>
      '⚠️ To tłumaczenie wymaga ludzkiej weryfikacji dla krytycznych zwrotów awaryjnych przed użyciem produkcyjnym.';

  @override
  String get translationTier4Notice =>
      '⚠️ To jest tylko wersja robocza tłumaczenia. Profesjonalne tłumaczenie wymagane przed użyciem produkcyjnym.';

  @override
  String get selectLanguage => 'Wybierz Język';

  @override
  String get searchLanguagesHint => 'Szukaj języków';

  @override
  String translationQualityLabel(String quality) {
    return 'Jakość Tłumaczenia: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Pomóż poprawić tłumaczenia - zgłaszaj problemy lub przyczyniaj się do lepszych tłumaczeń!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
