// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Sodobni minutniki in minutkinje';

  @override
  String get signUpToHelp => 'Prijavite se za pomoč sosedom';

  @override
  String get enterPhoneNumber => 'Vnesite svojo telefonsko številko za začetek';

  @override
  String get phoneNumberLabel => 'Telefonska številka';

  @override
  String get phoneNumberHint => '(01) 234-567';

  @override
  String get sendVerificationCode => 'Pošlji verifikacijsko kodo';

  @override
  String get enterVerificationCode => 'Vnesite verifikacijsko kodo';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Poslali smo kodo na $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Verifikacijska koda';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Preveri in nadaljuj';

  @override
  String get changePhoneNumber => 'Spremeni telefonsko številko';

  @override
  String get pleaseEnterPhoneNumber =>
      'Prosimo, vnesite svojo telefonsko številko';

  @override
  String get pleaseEnterVerificationCode =>
      'Prosimo, vnesite verifikacijsko kodo';

  @override
  String get createProfile => 'Ustvari profil';

  @override
  String get tellUsAboutYourself => 'Povejte nam nekaj o sebi';

  @override
  String get profileSetupDescription =>
      'Te informacije nam pomagajo, da vas povežemo s sosedi, ki potrebujejo pomoč';

  @override
  String get addPhotoOptional => 'Dodaj fotografijo (neobvezno)';

  @override
  String get fullNameLabel => 'Polno ime *';

  @override
  String get fullNameHint => 'Janez Novak';

  @override
  String get homeAddressLabel => 'Domači naslov *';

  @override
  String get homeAddressHint => 'Glavna cesta 123, stanovanje 4B';

  @override
  String get homeAddressHelper => 'Uporablja se samo za določevanje bližine';

  @override
  String get ageOptionalLabel => 'Starost (neobvezno)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      'Osebe nad 70 let lahko nastavijo prilagojene ure obvestil';

  @override
  String get yourPrivacyMatters => 'Vaša zasebnost je pomembna';

  @override
  String get privacyNotice =>
      'Vaša lokacija se preverja samo med aktivnimi nujnimi primeri in se ne shranjuje dolgoročno.';

  @override
  String get continueButton => 'Nadaljuj';

  @override
  String get pleaseFillRequiredFields => 'Prosimo, izpolnite vsa obvezna polja';

  @override
  String get home => 'Domov';

  @override
  String get alerts => 'Opozorila';

  @override
  String get profile => 'Profil';

  @override
  String get availableToRespond => 'Na voljo za odziv';

  @override
  String get notAvailable => 'Ni na voljo';

  @override
  String get youllReceiveEmergencyAlerts =>
      'Prejemali boste nujna opozorila iz bližine';

  @override
  String get toggleOnWhenReady => 'Vključite, ko ste pripravljeni pomagati';

  @override
  String get youreNowAvailable => 'Sedaj ste na voljo za odziv';

  @override
  String get youWontReceiveAlerts => 'Ne boste prejemali opozoril';

  @override
  String get lifeThreatening247Info =>
      'Življenjsko nevarna opozorila vas bodo obvestila 24/7. Nenujná opozorila spoštujejo vaš urnik.';

  @override
  String get requestHelp => 'ZAHTEVAJ POMOČ';

  @override
  String get yourImpact => 'Vaš vpliv';

  @override
  String get responses => 'Odzivi';

  @override
  String get avgTime => 'Povp. čas';

  @override
  String get yourCapabilities => 'Vaše sposobnosti';

  @override
  String get edit => 'Uredi';

  @override
  String get communityNetwork => 'Skupnostna mreža';

  @override
  String get nearbyResponders => 'Bližnji odzivniki';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count na voljo';
  }

  @override
  String get coverageRadius => 'Radij pokritosti';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance km';
  }

  @override
  String get activeAlerts => 'Aktivna opozorila';

  @override
  String get none => 'Brez';

  @override
  String get yourLocation => 'Vaša lokacija';

  @override
  String get whatDoYouNeedHelpWith => 'Pri čem potrebujete pomoč?';

  @override
  String get additionalDetailsOptional => 'Dodatne podrobnosti (neobvezno)';

  @override
  String get describeSituation => 'Opišite situacijo...';

  @override
  String get alertTrustedRespondersFirst =>
      'Najprej obvesti moje zaupanja vredne odzivnike';

  @override
  String get trustedRespondersDescription =>
      'Vaši izbrani prijatelji/družina bodo obveščeni pred splošno skupnostjo';

  @override
  String sendingAlert(String emergencyType) {
    return 'Pošiljanje opozorila: $emergencyType';
  }

  @override
  String get sendAlertNow => 'POŠLJI OPOZORILO ZDAJ';

  @override
  String get pleaseSelectEmergencyType =>
      'Prosimo, izberite vrsto nujnega primera';

  @override
  String get categoryLifeThreatening => '🔴 Življenjsko nevarno';

  @override
  String get categorySecuritySafety => '🟠 Varnost/Zaščita';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Nujno časovno občutljivo';

  @override
  String get categoryNonLifeThreatening => '🟢 Ni življenjsko nevarno';

  @override
  String get emergencyCprCardiacName => 'Oživljanje / Srčni zastoj';

  @override
  String get emergencyCprCardiacDesc => 'Oseba se ne odziva in ne diha';

  @override
  String get emergencyAedName => 'Dostava AED';

  @override
  String get emergencyAedDesc => 'Takoj potrebujem AED';

  @override
  String get emergencyOverdoseName => 'Predoziranje / Nalokson';

  @override
  String get emergencyOverdoseDesc =>
      'Sum predoziranja z drogo, potrebujem nalokson';

  @override
  String get emergencyChokingName => 'Davljenje / Heimlichov prijem';

  @override
  String get emergencyChokingDesc => 'Oseba se davi in ne more dihati';

  @override
  String get emergencyFireName => 'Požar / Evakuacija';

  @override
  String get emergencyFireDesc =>
      'Požarna nevarnost, potrebujem pomoč pri evakuaciji';

  @override
  String get emergencyConsentName => 'Nujen primer soglasja v spalnici';

  @override
  String get emergencyConsentDesc =>
      'Uporabljena je bila varnostna beseda, potrebujem pričo';

  @override
  String get emergencyBystanderName => 'Priča aktivnega mimoidočega';

  @override
  String get emergencyBystanderDesc =>
      'Potrebujem prisotnost za umiritev konflikta';

  @override
  String get emergencyMissingPetName => 'Pogrešana hišna žival';

  @override
  String get emergencyMissingPetDesc =>
      'Hišna žival je izgubljena ali pobegnila, potrebujem iskalsko skupino';

  @override
  String get emergencyWellnessCheckName => 'Preverjanje počutja';

  @override
  String get emergencyWellnessCheckDesc =>
      'Preveri nekoga, ki morda potrebuje pomoč';

  @override
  String get emergencyQuitCompanionName => 'Spremljevalec pri prenehanju';

  @override
  String get emergencyQuitCompanionDesc =>
      'Borim se s hrepenenjem, potrebujem podporo';

  @override
  String get emergencyCompanionshipName => 'Družba';

  @override
  String get emergencyCompanionshipDesc => 'Počutim se osamljeno ali izolirano';

  @override
  String get emergency911CoordinationName => 'Koordinacija s 113';

  @override
  String get emergency911CoordinationDesc =>
      'Potrebujem pomoč pri klicanju in koordinaciji s 113';

  @override
  String get equipmentAed => 'AED';

  @override
  String get equipmentNaloxone => 'Nalokson/Narkan';

  @override
  String get myCapabilities => 'Moje sposobnosti';

  @override
  String capabilitiesSelected(int count) {
    return '$count izbranih';
  }

  @override
  String get alertSchedule => 'Urnik opozoril';

  @override
  String get setAvailabilityHours => 'Nastavite svoje ure dostopnosti';

  @override
  String get trustedResponders => 'Zaupanja vredni odzivniki';

  @override
  String get responseHistory => 'Zgodovina odzivov';

  @override
  String get privacyAndSafety => 'Zasebnost in varnost';

  @override
  String get helpAndSupport => 'Pomoč in podpora';

  @override
  String get aboutNayborSos => 'O Naybor SOS';

  @override
  String get termsAndPrivacyPolicy => 'Pogoji in pravilnik o zasebnosti';

  @override
  String get signOut => 'Odjava';

  @override
  String version(String version) {
    return 'Različica $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS povezuje sosede v nujnih primerih in ustvarja mrežo hitrih odzivnikov, ki lahko nudijo ključno pomoč preden prispejo poklicni reševalci.';

  @override
  String get aboutDialogContent2 =>
      'Vsakdo je lahko heroj. Ne potrebujete posebnega usposabljanja, da rešite življenje. Včasih je najpomembnejša intervencija preprosto to, da se pojavite.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs javnokoristna korporacija';

  @override
  String get close => 'Zapri';

  @override
  String get signOutQuestion => 'Odjava?';

  @override
  String get signOutConfirm => 'Ste prepričani, da se želite odjaviti?';

  @override
  String get cancel => 'Prekliči';

  @override
  String get signedOutSuccessfully => 'Uspešno odjavljeni';

  @override
  String get settings => 'Nastavitve';

  @override
  String get capabilityWellnessCheck => 'Preverjanje počutja';

  @override
  String get capabilityQuitCompanion => 'Spremljevalec pri prenehanju';

  @override
  String get capabilityActiveBystander => 'Aktivni mimoidoči';

  @override
  String get translationTier1Label => 'AI prevod z visoko zanesljivostjo';

  @override
  String get translationTier2Label => 'AI prevod z dobro zanesljivostjo';

  @override
  String get translationTier3Label => 'AI prevod s srednjo zanesljivostjo';

  @override
  String get translationTier4Label => 'AI prevod z nizko zanesljivostjo';

  @override
  String get translationTier1Notice =>
      'Ta prevod je bil ustvarjen z AI z visoko zanesljivostjo. Za produkcijsko uporabo se priporoča strokovni pregled.';

  @override
  String get translationTier2Notice =>
      'Ta prevod je bil ustvarjen z AI z dobro zanesljivostjo. Za varnostno kritično terminologijo soglasja in nujnih primerov se priporoča strokovni pregled.';

  @override
  String get translationTier3Notice =>
      '⚠️ Ta prevod zahteva človeški pregled za varnostno kritične nujne fraze pred produkcijsko uporabo.';

  @override
  String get translationTier4Notice =>
      '⚠️ To je samo osnutek prevoda. Pred produkcijsko uporabo je potreben strokovni prevod.';

  @override
  String get selectLanguage => 'Izberi jezik';

  @override
  String get searchLanguagesHint => 'Iskanje jezikov';

  @override
  String translationQualityLabel(String quality) {
    return 'Kakovost prevoda: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Pomagajte izboljšati prevode - prijavite težave ali prispevajte boljše prevode!';
}
