// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderne Minutmænd & Minutkvinder';

  @override
  String get signUpToHelp => 'Tilmeld dig for at hjælpe dine naboer';

  @override
  String get enterPhoneNumber =>
      'Indtast dit telefonnummer for at komme i gang';

  @override
  String get phoneNumberLabel => 'Telefonnummer';

  @override
  String get phoneNumberHint => '12 34 56 78';

  @override
  String get sendVerificationCode => 'Send bekræftelseskode';

  @override
  String get enterVerificationCode => 'Indtast bekræftelseskode';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Vi sendte en kode til $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Bekræftelseskode';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Bekræft & Fortsæt';

  @override
  String get changePhoneNumber => 'Skift telefonnummer';

  @override
  String get pleaseEnterPhoneNumber => 'Indtast venligst dit telefonnummer';

  @override
  String get pleaseEnterVerificationCode =>
      'Indtast venligst bekræftelseskoden';

  @override
  String get createProfile => 'Opret Profil';

  @override
  String get tellUsAboutYourself => 'Fortæl os om dig selv';

  @override
  String get profileSetupDescription =>
      'Disse oplysninger hjælper os med at forbinde dig med naboer, der har brug for hjælp';

  @override
  String get addPhotoOptional => 'Tilføj foto (valgfrit)';

  @override
  String get fullNameLabel => 'Fulde Navn *';

  @override
  String get fullNameHint => 'Lars Nielsen';

  @override
  String get homeAddressLabel => 'Hjemmeadresse *';

  @override
  String get homeAddressHint => 'Hovedgaden 123, 2. th';

  @override
  String get homeAddressHelper => 'Bruges kun til nærhedsmatching';

  @override
  String get ageOptionalLabel => 'Alder (valgfrit)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => 'Aldre på 70+ kan indstille skånsomme alarmtimer';

  @override
  String get yourPrivacyMatters => 'Dit privatliv betyder noget';

  @override
  String get privacyNotice =>
      'Din placering bliver kun forespurgt under aktive nødsituationer og opbevares aldrig langsigtet.';

  @override
  String get continueButton => 'Fortsæt';

  @override
  String get pleaseFillRequiredFields =>
      'Udfyld venligst alle påkrævede felter';

  @override
  String get home => 'Hjem';

  @override
  String get alerts => 'Alarmer';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Tilgængelig til at Reagere';

  @override
  String get notAvailable => 'Ikke Tilgængelig';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Du vil modtage nødalarmer i nærheden';

  @override
  String get toggleOnWhenReady => 'Slå til når du er klar til at hjælpe';

  @override
  String get youreNowAvailable => 'Du er nu tilgængelig til at reagere';

  @override
  String get youWontReceiveAlerts => 'Du vil ikke modtage alarmer';

  @override
  String get lifeThreatening247Info =>
      'Livstruende alarmer vil underrette dig 24/7. Ikke-akutte alarmer respekterer din tidsplan.';

  @override
  String get requestHelp => 'ANMOD OM HJÆLP';

  @override
  String get yourImpact => 'Din Indvirkning';

  @override
  String get responses => 'Reaktioner';

  @override
  String get avgTime => 'Gns. Tid';

  @override
  String get yourCapabilities => 'Dine Færdigheder';

  @override
  String get edit => 'Rediger';

  @override
  String get communityNetwork => 'Lokalsamfundsnetværk';

  @override
  String get nearbyResponders => 'Nærliggende Hjælpere';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count tilgængelige';
  }

  @override
  String get coverageRadius => 'Dækningsradius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilometer';
  }

  @override
  String get activeAlerts => 'Aktive Alarmer';

  @override
  String get none => 'Ingen';

  @override
  String get yourLocation => 'Din Placering';

  @override
  String get whatDoYouNeedHelpWith => 'Hvad har du brug for hjælp til?';

  @override
  String get additionalDetailsOptional => 'Yderligere Detaljer (valgfrit)';

  @override
  String get describeSituation => 'Beskriv situationen...';

  @override
  String get alertTrustedRespondersFirst =>
      'Alarmér mine betroede hjælpere først';

  @override
  String get trustedRespondersDescription =>
      'Dine udvalgte venner/familie vil blive underrettet før det generelle lokalsamfund';

  @override
  String sendingAlert(String emergencyType) {
    return 'Sender alarm: $emergencyType';
  }

  @override
  String get sendAlertNow => 'SEND ALARM NU';

  @override
  String get pleaseSelectEmergencyType => 'Vælg venligst en nødsituationstype';

  @override
  String get categoryLifeThreatening => '🔴 Livstruende';

  @override
  String get categorySecuritySafety => '🟠 Sikkerhed/Tryghed';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Akut Tidsfølsom';

  @override
  String get categoryNonLifeThreatening => '🟢 Ikke-Livstruende';

  @override
  String get emergencyCprCardiacName => 'HLR / Hjertestop';

  @override
  String get emergencyCprCardiacDesc =>
      'Person reagerer ikke og trækker ikke vejret';

  @override
  String get emergencyAedName => 'Hjertestarter Levering';

  @override
  String get emergencyAedDesc => 'Har brug for en hjertestarter med det samme';

  @override
  String get emergencyOverdoseName => 'Overdosis / Naloxon';

  @override
  String get emergencyOverdoseDesc =>
      'Formodet stofoverdosis, har brug for naloxon';

  @override
  String get emergencyChokingName => 'Kvælning / Heimlich';

  @override
  String get emergencyChokingDesc => 'Person kvæles og kan ikke trække vejret';

  @override
  String get emergencyFireName => 'Brand / Evakuering';

  @override
  String get emergencyFireDesc =>
      'Brandnødsituation, har brug for evakueringshjælp';

  @override
  String get emergencyConsentName => 'Samtykke Nødsituation';

  @override
  String get emergencyConsentDesc => 'Stopord kaldt, har brug for vidne';

  @override
  String get emergencyBystanderName => 'Aktiv Tilskuer Vidne';

  @override
  String get emergencyBystanderDesc =>
      'Har brug for tilstedeværelse til at deeskalere konflikt';

  @override
  String get emergencyMissingPetName => 'Savnet Kæledyr';

  @override
  String get emergencyMissingPetDesc =>
      'Kæledyr er forsvundet eller løbet væk, har brug for søgehold';

  @override
  String get emergencyWellnessCheckName => 'Trivselstjek';

  @override
  String get emergencyWellnessCheckDesc =>
      'Tjek på en person der muligvis har brug for hjælp';

  @override
  String get emergencyQuitCompanionName => 'Stopkammerat';

  @override
  String get emergencyQuitCompanionDesc =>
      'Kæmper mod trang, har brug for støtte';

  @override
  String get emergencyCompanionshipName => 'Føleskab';

  @override
  String get emergencyCompanionshipDesc => 'Føler sig ensom eller isoleret';

  @override
  String get emergency911CoordinationName => '112 Koordinering';

  @override
  String get emergency911CoordinationDesc =>
      'Har brug for hjælp til at ringe og koordinere med 112';

  @override
  String get equipmentAed => 'Hjertestarter';

  @override
  String get equipmentNaloxone => 'Naloxon/Narcan';

  @override
  String get myCapabilities => 'Mine Færdigheder';

  @override
  String capabilitiesSelected(int count) {
    return '$count valgt';
  }

  @override
  String get alertSchedule => 'Alarmtidsplan';

  @override
  String get setAvailabilityHours => 'Indstil dine tilgængelighedstimer';

  @override
  String get trustedResponders => 'Betroede Hjælpere';

  @override
  String get responseHistory => 'Reaktionshistorik';

  @override
  String get privacyAndSafety => 'Privatliv & Sikkerhed';

  @override
  String get helpAndSupport => 'Hjælp & Support';

  @override
  String get aboutNayborSos => 'Om Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Vilkår & Privatlivspolitik';

  @override
  String get signOut => 'Log Ud';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS forbinder naboer i nødsituationer og skaber et netværk af hurtige hjælpere, der kan yde kritisk hjælp før professionelle førstehjælpere ankommer.';

  @override
  String get aboutDialogContent2 =>
      'Alle kan være en helt. Du behøver ikke særlig træning for at redde et liv. Nogle gange er den mest kraftfulde intervention simpelthen at dukke op.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Luk';

  @override
  String get signOutQuestion => 'Log Ud?';

  @override
  String get signOutConfirm => 'Er du sikker på, at du vil logge ud?';

  @override
  String get cancel => 'Annuller';

  @override
  String get signedOutSuccessfully => 'Logget ud med succes';

  @override
  String get settings => 'Indstillinger';

  @override
  String get capabilityWellnessCheck => 'Trivselstjek';

  @override
  String get capabilityQuitCompanion => 'Stopkammerat';

  @override
  String get capabilityActiveBystander => 'Aktiv Tilskuer';

  @override
  String get translationTier1Label => 'Høj Tillid AI Oversættelse';

  @override
  String get translationTier2Label => 'God Tillid AI Oversættelse';

  @override
  String get translationTier3Label => 'Mellem Tillid AI Oversættelse';

  @override
  String get translationTier4Label => 'Lav Tillid AI Oversættelse';

  @override
  String get translationTier1Notice =>
      'Denne oversættelse blev AI-genereret med høj tillid. Professionel gennemgang anbefales til produktionsbrug.';

  @override
  String get translationTier2Notice =>
      'Denne oversættelse blev AI-genereret med god tillid. Professionel gennemgang anbefales for sikkerhedskritisk samtykke- og nødterminologi.';

  @override
  String get translationTier3Notice =>
      '⚠️ Denne oversættelse kræver menneskelig gennemgang for sikkerhedskritiske nødfraser før produktionsbrug.';

  @override
  String get translationTier4Notice =>
      '⚠️ Dette er kun et udkast til oversættelse. Professionel oversættelse påkrævet før produktionsbrug.';

  @override
  String get selectLanguage => 'Vælg Sprog';

  @override
  String get searchLanguagesHint => 'Søg sprog';

  @override
  String translationQualityLabel(String quality) {
    return 'Oversættelseskvalitet: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Hjælp med at forbedre oversættelser - rapporter problemer eller bidrag med bedre oversættelser!';
}
