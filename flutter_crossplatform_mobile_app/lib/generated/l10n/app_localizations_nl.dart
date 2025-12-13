// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Moderne Minutemen & Minutewomen';

  @override
  String get signUpToHelp => 'Meld je aan om je buren te helpen';

  @override
  String get enterPhoneNumber => 'Voer je telefoonnummer in om te beginnen';

  @override
  String get phoneNumberLabel => 'Telefoonnummer';

  @override
  String get phoneNumberHint => '06 12345678';

  @override
  String get sendVerificationCode => 'Verificatiecode verzenden';

  @override
  String get enterVerificationCode => 'Voer verificatiecode in';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'We hebben een code gestuurd naar $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Verificatiecode';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Verifiëren & Doorgaan';

  @override
  String get changePhoneNumber => 'Telefoonnummer wijzigen';

  @override
  String get pleaseEnterPhoneNumber => 'Voer alsjeblieft je telefoonnummer in';

  @override
  String get pleaseEnterVerificationCode =>
      'Voer alsjeblieft de verificatiecode in';

  @override
  String get createProfile => 'Profiel aanmaken';

  @override
  String get tellUsAboutYourself => 'Vertel ons over jezelf';

  @override
  String get profileSetupDescription =>
      'Deze informatie helpt ons je te verbinden met buren die hulp nodig hebben';

  @override
  String get addPhotoOptional => 'Foto toevoegen (optioneel)';

  @override
  String get fullNameLabel => 'Volledige naam *';

  @override
  String get fullNameHint => 'Jan Jansen';

  @override
  String get homeAddressLabel => 'Thuisadres *';

  @override
  String get homeAddressHint => 'Hoofdstraat 123, App 4B';

  @override
  String get homeAddressHelper => 'Alleen gebruikt voor nabijheidskoppeling';

  @override
  String get ageOptionalLabel => 'Leeftijd (optioneel)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper => '70+ kunnen rustige waarschuwingsuren instellen';

  @override
  String get yourPrivacyMatters => 'Je privacy is belangrijk';

  @override
  String get privacyNotice =>
      'Je locatie wordt alleen opgevraagd tijdens actieve noodsituaties en nooit langdurig opgeslagen.';

  @override
  String get continueButton => 'Doorgaan';

  @override
  String get pleaseFillRequiredFields =>
      'Vul alsjeblieft alle verplichte velden in';

  @override
  String get home => 'Home';

  @override
  String get alerts => 'Waarschuwingen';

  @override
  String get profile => 'Profiel';

  @override
  String get availableToRespond => 'Beschikbaar om te reageren';

  @override
  String get notAvailable => 'Niet beschikbaar';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Je ontvangt noodwaarschuwingen in de buurt';

  @override
  String get toggleOnWhenReady => 'Zet aan wanneer je klaar bent om te helpen';

  @override
  String get youreNowAvailable => 'Je bent nu beschikbaar om te reageren';

  @override
  String get youWontReceiveAlerts => 'Je ontvangt geen waarschuwingen';

  @override
  String get lifeThreatening247Info =>
      'Levensbedreigende waarschuwingen melden je 24/7. Niet-urgente waarschuwingen respecteren je schema.';

  @override
  String get requestHelp => 'HULP VRAGEN';

  @override
  String get yourImpact => 'Jouw impact';

  @override
  String get responses => 'Reacties';

  @override
  String get avgTime => 'Gem. tijd';

  @override
  String get yourCapabilities => 'Jouw vaardigheden';

  @override
  String get edit => 'Bewerken';

  @override
  String get communityNetwork => 'Gemeenschapsnetwerk';

  @override
  String get nearbyResponders => 'Hulpverleners in de buurt';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count beschikbaar';
  }

  @override
  String get coverageRadius => 'Dekkingsradius';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance kilometer';
  }

  @override
  String get activeAlerts => 'Actieve waarschuwingen';

  @override
  String get none => 'Geen';

  @override
  String get yourLocation => 'Jouw locatie';

  @override
  String get whatDoYouNeedHelpWith => 'Waarbij heb je hulp nodig?';

  @override
  String get additionalDetailsOptional => 'Extra details (optioneel)';

  @override
  String get describeSituation => 'Beschrijf de situatie...';

  @override
  String get alertTrustedRespondersFirst =>
      'Waarschuw eerst mijn vertrouwde hulpverleners';

  @override
  String get trustedRespondersDescription =>
      'Je geselecteerde vrienden/familie worden gewaarschuwd voor de algemene gemeenschap';

  @override
  String sendingAlert(String emergencyType) {
    return 'Waarschuwing verzenden: $emergencyType';
  }

  @override
  String get sendAlertNow => 'WAARSCHUWING NU VERZENDEN';

  @override
  String get pleaseSelectEmergencyType => 'Selecteer alsjeblieft een noodtype';

  @override
  String get categoryLifeThreatening => '🔴 Levensbedreigend';

  @override
  String get categorySecuritySafety => '🟠 Veiligheid/Beveiliging';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Urgent Tijdgevoelig';

  @override
  String get categoryNonLifeThreatening => '🟢 Niet-levensbedreigend';

  @override
  String get emergencyCprCardiacName => 'CPR / Hartstilstand';

  @override
  String get emergencyCprCardiacDesc => 'Persoon reageert niet en ademt niet';

  @override
  String get emergencyAedName => 'AED Levering';

  @override
  String get emergencyAedDesc => 'Heb onmiddellijk een AED nodig';

  @override
  String get emergencyOverdoseName => 'Overdosis / Naloxon';

  @override
  String get emergencyOverdoseDesc => 'Vermoede overdosis, naloxon nodig';

  @override
  String get emergencyChokingName => 'Verstikking / Heimlich';

  @override
  String get emergencyChokingDesc => 'Persoon stikt en kan niet ademen';

  @override
  String get emergencyFireName => 'Brand / Evacuatie';

  @override
  String get emergencyFireDesc => 'Brandnood, evacuatiehulp nodig';

  @override
  String get emergencyConsentName => 'Slaapkamer Toestemmingsnood';

  @override
  String get emergencyConsentDesc => 'Stopwoord gebruikt, getuige nodig';

  @override
  String get emergencyBystanderName => 'Actieve Omstander Getuige';

  @override
  String get emergencyBystanderDesc =>
      'Aanwezigheid nodig om conflict te de-escaleren';

  @override
  String get emergencyMissingPetName => 'Vermist Huisdier';

  @override
  String get emergencyMissingPetDesc =>
      'Huisdier is zoek of weggelopen, zoekteam nodig';

  @override
  String get emergencyWellnessCheckName => 'Welzijnscontrole';

  @override
  String get emergencyWellnessCheckDesc =>
      'Controleer iemand die hulp nodig kan hebben';

  @override
  String get emergencyQuitCompanionName => 'Stopmaatje';

  @override
  String get emergencyQuitCompanionDesc => 'Vecht tegen verlangen, steun nodig';

  @override
  String get emergencyCompanionshipName => 'Gezelschap';

  @override
  String get emergencyCompanionshipDesc => 'Voel me eenzaam of geïsoleerd';

  @override
  String get emergency911CoordinationName => '112 Coördinatie';

  @override
  String get emergency911CoordinationDesc =>
      'Hulp nodig bij bellen en coördineren 112';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Naloxon/Narcan';

  @override
  String get myCapabilities => 'Mijn vaardigheden';

  @override
  String capabilitiesSelected(int count) {
    return '$count geselecteerd';
  }

  @override
  String get alertSchedule => 'Waarschuwingsschema';

  @override
  String get setAvailabilityHours => 'Stel je beschikbaarheidsuren in';

  @override
  String get trustedResponders => 'Vertrouwde hulpverleners';

  @override
  String get responseHistory => 'Reactiegeschiedenis';

  @override
  String get privacyAndSafety => 'Privacy & Veiligheid';

  @override
  String get helpAndSupport => 'Hulp & Ondersteuning';

  @override
  String get aboutNayborSos => 'Over Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Voorwaarden & Privacybeleid';

  @override
  String get signOut => 'Uitloggen';

  @override
  String version(String version) {
    return 'Versie $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS verbindt buren in noodsituaties en creëert een netwerk van snelle hulpverleners die kritieke hulp kunnen bieden voordat professionele eerste hulpverleners arriveren.';

  @override
  String get aboutDialogContent2 =>
      'Iedereen kan een held zijn. Je hebt geen speciale training nodig om een leven te redden. Soms is de krachtigste interventie gewoon komen opdagen.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Sluiten';

  @override
  String get signOutQuestion => 'Uitloggen?';

  @override
  String get signOutConfirm => 'Weet je zeker dat je wilt uitloggen?';

  @override
  String get cancel => 'Annuleren';

  @override
  String get signedOutSuccessfully => 'Succesvol uitgelogd';

  @override
  String get settings => 'Instellingen';

  @override
  String get capabilityWellnessCheck => 'Welzijnscontrole';

  @override
  String get capabilityQuitCompanion => 'Stopmaatje';

  @override
  String get capabilityActiveBystander => 'Actieve Omstander';

  @override
  String get translationTier1Label => 'Hoge Betrouwbaarheid AI Vertaling';

  @override
  String get translationTier2Label => 'Goede Betrouwbaarheid AI Vertaling';

  @override
  String get translationTier3Label => 'Gemiddelde Betrouwbaarheid AI Vertaling';

  @override
  String get translationTier4Label => 'Lage Betrouwbaarheid AI Vertaling';

  @override
  String get translationTier1Notice =>
      'Deze vertaling is AI-gegenereerd met hoge betrouwbaarheid. Professionele beoordeling aanbevolen voor productiegebruik.';

  @override
  String get translationTier2Notice =>
      'Deze vertaling is AI-gegenereerd met goede betrouwbaarheid. Professionele beoordeling aanbevolen voor veiligheidskritieke toestemming- en noodterminologie.';

  @override
  String get translationTier3Notice =>
      '⚠️ Deze vertaling vereist menselijke beoordeling voor veiligheidskritieke nooduitdrukkingen voor productiegebruik.';

  @override
  String get translationTier4Notice =>
      '⚠️ Dit is alleen een conceptvertaling. Professionele vertaling vereist voor productiegebruik.';

  @override
  String get selectLanguage => 'Taal selecteren';

  @override
  String get searchLanguagesHint => 'Zoek talen';

  @override
  String translationQualityLabel(String quality) {
    return 'Vertaalkwaliteit: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Help vertalingen verbeteren - meld problemen of draag betere vertalingen bij!';
}
