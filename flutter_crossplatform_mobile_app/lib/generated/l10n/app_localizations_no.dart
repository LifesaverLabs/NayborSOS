// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderne Minutemenn og Minutekvinner';

  @override
  String get signUpToHelp => 'Registrer deg for å hjelpe naboene dine';

  @override
  String get enterPhoneNumber =>
      'Skriv inn telefonnummeret ditt for å komme i gang';

  @override
  String get phoneNumberLabel => 'Telefonnummer';

  @override
  String get phoneNumberHint => '123 45 678';

  @override
  String get sendVerificationCode => 'Send bekreftelseskode';

  @override
  String get enterVerificationCode => 'Skriv inn bekreftelseskode';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Vi sendte en kode til $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Bekreftelseskode';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Bekreft og fortsett';

  @override
  String get changePhoneNumber => 'Endre telefonnummer';

  @override
  String get pleaseEnterPhoneNumber =>
      'Vennligst skriv inn telefonnummeret ditt';

  @override
  String get pleaseEnterVerificationCode =>
      'Vennligst skriv inn bekreftelseskoden';

  @override
  String get createProfile => 'Opprett profil';

  @override
  String get tellUsAboutYourself => 'Fortell oss om deg selv';

  @override
  String get profileSetupDescription =>
      'Denne informasjonen hjelper oss med å koble deg til naboer som trenger hjelp';

  @override
  String get addPhotoOptional => 'Legg til bilde (valgfritt)';

  @override
  String get fullNameLabel => 'Fullt navn *';

  @override
  String get fullNameHint => 'Ola Nordmann';

  @override
  String get homeAddressLabel => 'Hjemmeadresse *';

  @override
  String get homeAddressHint => 'Storgata 123, Leil. 4B';

  @override
  String get homeAddressHelper => 'Brukes kun for nærhetsmating';

  @override
  String get ageOptionalLabel => 'Alder (valgfritt)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'De over 70 år kan sette milde varseltider';

  @override
  String get yourPrivacyMatters => 'Personvernet ditt er viktig';

  @override
  String get privacyNotice =>
      'Din posisjon hentes kun under aktive nødsituasjoner og lagres aldri langsiktig.';

  @override
  String get continueButton => 'Fortsett';

  @override
  String get pleaseFillRequiredFields =>
      'Vennligst fyll ut alle obligatoriske felt';

  @override
  String get home => 'Hjem';

  @override
  String get alerts => 'Varsler';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Tilgjengelig for respons';

  @override
  String get notAvailable => 'Ikke tilgjengelig';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Du vil motta nødvarsler i nærheten';

  @override
  String get toggleOnWhenReady => 'Slå på når du er klar til å hjelpe';

  @override
  String get youreNowAvailable => 'Du er nå tilgjengelig for respons';

  @override
  String get youWontReceiveAlerts => 'Du vil ikke motta varsler';

  @override
  String get lifeThreatening247Info =>
      'Livstruende varsler vil varsle deg 24/7. Ikke-akutte varsler respekterer tidsplanen din.';

  @override
  String get requestHelp => 'BE OM HJELP';

  @override
  String get yourImpact => 'Din påvirkning';

  @override
  String get responses => 'Responser';

  @override
  String get avgTime => 'Gj.snitt tid';

  @override
  String get yourCapabilities => 'Dine ferdigheter';

  @override
  String get edit => 'Rediger';

  @override
  String get communityNetwork => 'Lokalsamfunnsnettverket';

  @override
  String get nearbyResponders => 'Responsenheter i nærheten';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count tilgjengelig';
  }

  @override
  String get coverageRadius => 'Dekningsradius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilometer';
  }

  @override
  String get activeAlerts => 'Aktive varsler';

  @override
  String get none => 'Ingen';

  @override
  String get yourLocation => 'Din posisjon';

  @override
  String get whatDoYouNeedHelpWith => 'Hva trenger du hjelp med?';

  @override
  String get additionalDetailsOptional => 'Ytterligere detaljer (valgfritt)';

  @override
  String get describeSituation => 'Beskriv situasjonen...';

  @override
  String get alertTrustedRespondersFirst =>
      'Varsle mine betrodde respondenter først';

  @override
  String get trustedRespondersDescription =>
      'Dine valgte venner/familie vil bli varslet før lokalsamfunnet generelt';

  @override
  String sendingAlert(String emergencyType) {
    return 'Sender varsel: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SEND VARSEL NÅ';

  @override
  String get pleaseSelectEmergencyType => 'Vennligst velg en nødtype';

  @override
  String get categoryLifeThreatening => '🔴 Livstruende';

  @override
  String get categorySecuritySafety => '🟠 Sikkerhet/Trygghet';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Akutt tidssensitiv';

  @override
  String get categoryNonLifeThreatening => '🟢 Ikke-livstruende';

  @override
  String get emergencyCprCardiacName => 'HLR / Hjertestans';

  @override
  String get emergencyCprCardiacDesc => 'Person er bevisstløs og puster ikke';

  @override
  String get emergencyAedName => 'Hjertestarter-levering';

  @override
  String get emergencyAedDesc => 'Trenger hjertestarter umiddelbart';

  @override
  String get emergencyOverdoseName => 'Overdose / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Mistenkt narkotikaoversose, trenger nalokson';

  @override
  String get emergencyChokingName => 'Kvelning / Heimlich';

  @override
  String get emergencyChokingDesc => 'Person kveles og kan ikke puste';

  @override
  String get emergencyFireName => 'Brann / Evakuering';

  @override
  String get emergencyFireDesc => 'Brannødsitusjon, trenger evakueringshjelp';

  @override
  String get emergencyConsentName => 'Soverom samtykke-nødsituasjon';

  @override
  String get emergencyConsentDesc => 'Stoppord brukt, trenger vitne';

  @override
  String get emergencyBystanderName => 'Aktivt tilskuer-vitne';

  @override
  String get emergencyBystanderDesc =>
      'Trenger tilstedeværelse for å de-eskalere konflikt';

  @override
  String get emergencyMissingPetName => 'Savnet kjæledyr';

  @override
  String get emergencyMissingPetDesc =>
      'Kjæledyr er borte eller rømte, trenger søkegruppe';

  @override
  String get emergencyWellnessCheckName => 'Velferdssjekk';

  @override
  String get emergencyWellnessCheckDesc =>
      'Sjekke med noen som kanskje trenger hjelp';

  @override
  String get emergencyQuitCompanionName => 'Slutte-følgesvenn';

  @override
  String get emergencyQuitCompanionDesc => 'Kjemper mot trang, trenger støtte';

  @override
  String get emergencyCompanionshipName => 'Selskap';

  @override
  String get emergencyCompanionshipDesc => 'Føler seg ensom eller isolert';

  @override
  String get emergency911CoordinationName => '113-koordinering';

  @override
  String get emergency911CoordinationDesc =>
      'Trenger hjelp til å ringe og koordinere nødtjenester';

  @override
  String get equipmentAed => 'Hjertestarter';

  @override
  String get equipmentNaloxone => 'Nalokson/Narcan';

  @override
  String get myCapabilities => 'Mine ferdigheter';

  @override
  String capabilitiesSelected(int count) {
    return '$count valgt';
  }

  @override
  String get alertSchedule => 'Varselplan';

  @override
  String get setAvailabilityHours => 'Sett tilgjengelighetstimene dine';

  @override
  String get trustedResponders => 'Betrodde respondenter';

  @override
  String get responseHistory => 'Responshstorikk';

  @override
  String get privacyAndSafety => 'Personvern og sikkerhet';

  @override
  String get helpAndSupport => 'Hjelp og støtte';

  @override
  String get aboutNayborSos => 'Om Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Vilkår og personvernregler';

  @override
  String get signOut => 'Logg ut';

  @override
  String version(String version) {
    return 'Versjon $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS kobler naboer sammen i nødsituasjoner, og skaper et nettverk av raske respondenter som kan yte kritisk hjelp før profesjonelle førsterespondenter ankommer.';

  @override
  String get aboutDialogContent2 =>
      'Alle kan være en helt. Du trenger ikke spesiell trening for å redde et liv. Noen ganger er den mest kraftfulle intervensjonen å bare dukke opp.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Lukk';

  @override
  String get signOutQuestion => 'Logg ut?';

  @override
  String get signOutConfirm => 'Er du sikker på at du vil logge ut?';

  @override
  String get cancel => 'Avbryt';

  @override
  String get signedOutSuccessfully => 'Logget ut vellykket';

  @override
  String get settings => 'Innstillinger';

  @override
  String get capabilityWellnessCheck => 'Velferdssjekk';

  @override
  String get capabilityQuitCompanion => 'Slutte-følgesvenn';

  @override
  String get capabilityActiveBystander => 'Aktiv tilskuer';

  @override
  String get translationTier1Label => 'Høy tillit AI-oversettelse';

  @override
  String get translationTier2Label => 'God tillit AI-oversettelse';

  @override
  String get translationTier3Label => 'Middels tillit AI-oversettelse';

  @override
  String get translationTier4Label => 'Lav tillit AI-oversettelse';

  @override
  String get translationTier1Notice =>
      'Denne oversettelsen ble AI-generert med høy tillit. Profesjonell gjennomgang anbefalt for produksjonsbruk.';

  @override
  String get translationTier2Notice =>
      'Denne oversettelsen ble AI-generert med god tillit. Profesjonell gjennomgang anbefalt for sikkerhetskritisk samtykke og nødterminologi.';

  @override
  String get translationTier3Notice =>
      '⚠️ Denne oversettelsen krever menneskelig gjennomgang for sikkerhetskritiske nødfraser før produksjonsbruk.';

  @override
  String get translationTier4Notice =>
      '⚠️ Dette er kun en utkastoversettelse. Profesjonell oversettelse kreves før produksjonsbruk.';

  @override
  String get selectLanguage => 'Velg språk';

  @override
  String get searchLanguagesHint => 'Søk språk';

  @override
  String translationQualityLabel(String quality) {
    return 'Oversettelseskvalitet: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Hjelp til med å forbedre oversettelser - rapporter problemer eller bidra med bedre oversettelser!';

  @override
  String get demoUserInitials => '[EN PLACEHOLDER] JD';

  @override
  String get demoUserName => '[EN PLACEHOLDER] John Doe';

  @override
  String get demoUserPhone => '[EN PLACEHOLDER] (555) 123-4567';

  @override
  String get demoUserAddress => '[EN PLACEHOLDER] 123 Main St, Apt 4B';
}
