// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Naybor SOS';

  @override
  String get tagline => 'Nykyajan minutemiehet ja -naiset';

  @override
  String get signUpToHelp => 'Rekisteröidy auttamaan naapureitasi';

  @override
  String get enterPhoneNumber => 'Syötä puhelinnumerosi aloittaaksesi';

  @override
  String get phoneNumberLabel => 'Puhelinnumero';

  @override
  String get phoneNumberHint => '040 123 4567';

  @override
  String get sendVerificationCode => 'Lähetä vahvistuskoodi';

  @override
  String get enterVerificationCode => 'Syötä vahvistuskoodi';

  @override
  String verificationCodeSent(String phoneNumber) {
    return 'Lähetimme koodin numeroon $phoneNumber';
  }

  @override
  String get verificationCodeLabel => 'Vahvistuskoodi';

  @override
  String get verificationCodeHint => '123456';

  @override
  String get verifyAndContinue => 'Vahvista ja jatka';

  @override
  String get changePhoneNumber => 'Vaihda puhelinnumero';

  @override
  String get pleaseEnterPhoneNumber => 'Ole hyvä ja syötä puhelinnumerosi';

  @override
  String get pleaseEnterVerificationCode => 'Ole hyvä ja syötä vahvistuskoodi';

  @override
  String get createProfile => 'Luo profiili';

  @override
  String get tellUsAboutYourself => 'Kerro meille itsestäsi';

  @override
  String get profileSetupDescription =>
      'Nämä tiedot auttavat meitä yhdistämään sinut naapureihin, jotka tarvitsevat apua';

  @override
  String get addPhotoOptional => 'Lisää kuva (valinnainen)';

  @override
  String get fullNameLabel => 'Koko nimi *';

  @override
  String get fullNameHint => 'Matti Virtanen';

  @override
  String get homeAddressLabel => 'Kotiosoite *';

  @override
  String get homeAddressHint => 'Esimerkkikatu 123, Asunto 4B';

  @override
  String get homeAddressHelper => 'Käytetään vain läheisyyden määrittämiseen';

  @override
  String get ageOptionalLabel => 'Ikä (valinnainen)';

  @override
  String get ageHint => '25';

  @override
  String get ageHelper =>
      '70+ -vuotiaat voivat asettaa rauhallisen hälytysajan';

  @override
  String get yourPrivacyMatters => 'Yksityisyytesi on tärkeää';

  @override
  String get privacyNotice =>
      'Sijaintiasi kysellään vain aktiivisten hätätilanteiden aikana, eikä sitä tallenneta pitkäaikaisesti.';

  @override
  String get continueButton => 'Jatka';

  @override
  String get pleaseFillRequiredFields =>
      'Ole hyvä ja täytä kaikki pakolliset kentät';

  @override
  String get home => 'Koti';

  @override
  String get alerts => 'Hälytykset';

  @override
  String get profile => 'Profiili';

  @override
  String get availableToRespond => 'Valmiina vastaamaan';

  @override
  String get notAvailable => 'Ei saatavilla';

  @override
  String get youllReceiveEmergencyAlerts => 'Saat hätähälytyksiä lähialueelta';

  @override
  String get toggleOnWhenReady => 'Kytke päälle kun olet valmis auttamaan';

  @override
  String get youreNowAvailable => 'Olet nyt valmis vastaamaan';

  @override
  String get youWontReceiveAlerts => 'Et saa hälytyksiä';

  @override
  String get lifeThreatening247Info =>
      'Hengenvaaralliset hälytykset tulevat ympäri vuorokauden. Kiireettömät hälytykset kunnioittavat aikatauluasi.';

  @override
  String get requestHelp => 'PYYDÄ APUA';

  @override
  String get yourImpact => 'Sinun vaikutuksesi';

  @override
  String get responses => 'Vasteet';

  @override
  String get avgTime => 'Keskim. aika';

  @override
  String get yourCapabilities => 'Sinun kykyjä';

  @override
  String get edit => 'Muokkaa';

  @override
  String get communityNetwork => 'Yhteisöverkosto';

  @override
  String get nearbyResponders => 'Lähialueen auttajat';

  @override
  String nearbyRespondersAvailable(int count) {
    return '$count saatavilla';
  }

  @override
  String get coverageRadius => 'Toiminta-alue';

  @override
  String coverageRadiusValue(String distance) {
    return '$distance km';
  }

  @override
  String get activeAlerts => 'Aktiiviset hälytykset';

  @override
  String get none => 'Ei mitään';

  @override
  String get yourLocation => 'Sinun sijaintisi';

  @override
  String get whatDoYouNeedHelpWith => 'Mihin tarvitset apua?';

  @override
  String get additionalDetailsOptional => 'Lisätiedot (valinnainen)';

  @override
  String get describeSituation => 'Kuvaile tilannetta...';

  @override
  String get alertTrustedRespondersFirst => 'Hälytä ensin luotetut auttajani';

  @override
  String get trustedRespondersDescription =>
      'Valitsemasi ystävät/perhe saa ilmoituksen ennen yleistä yhteisöä';

  @override
  String sendingAlert(String emergencyType) {
    return 'Lähetetään hälytysta: $emergencyType';
  }

  @override
  String get sendAlertNow => 'LÄHETÄ HÄLYTYS NYT';

  @override
  String get pleaseSelectEmergencyType =>
      'Ole hyvä ja valitse hätätilanteen tyyppi';

  @override
  String get categoryLifeThreatening => '🔴 Hengenvaara';

  @override
  String get categorySecuritySafety => '🟠 Turvallisuus';

  @override
  String get categoryUrgentTimeSensitive => '🟡 Kiireellinen aikaherkkä';

  @override
  String get categoryNonLifeThreatening => '🟢 Ei hengenvaarallinen';

  @override
  String get emergencyCprCardiacName => 'Elvytys / Sydänpysähdys';

  @override
  String get emergencyCprCardiacDesc => 'Henkilö on tajuton eikä hengitä';

  @override
  String get emergencyAedName => 'Defibrillaattorin toimitus';

  @override
  String get emergencyAedDesc => 'Tarvitsen defibrillaattorin välittömästi';

  @override
  String get emergencyOverdoseName => 'Yliannostus / Naloksoni';

  @override
  String get emergencyOverdoseDesc =>
      'Epäilty huumeiden yliannostus, tarvitsen naloksonia';

  @override
  String get emergencyChokingName => 'Tukehtuminen / Heimlich';

  @override
  String get emergencyChokingDesc => 'Henkilö tukehtuu eikä pysty hengittämään';

  @override
  String get emergencyFireName => 'Tulipalo / Evakuointi';

  @override
  String get emergencyFireDesc => 'Tulipalohätä, tarvitsen evakuointiapua';

  @override
  String get emergencyConsentName => 'Makuuhuoneen suostumushätätilanne';

  @override
  String get emergencyConsentDesc => 'Turvasana sanottu, tarvitsen todistajan';

  @override
  String get emergencyBystanderName => 'Aktiivinen sivustaseuraajatodistaja';

  @override
  String get emergencyBystanderDesc =>
      'Tarvitsen läsnäoloa tilanteen rauhoittamiseksi';

  @override
  String get emergencyMissingPetName => 'Kadonnut lemmikki';

  @override
  String get emergencyMissingPetDesc =>
      'Lemmikki on kadonnut tai karannut, tarvitsen etsintäryhmän';

  @override
  String get emergencyWellnessCheckName => 'Voinnin tarkistus';

  @override
  String get emergencyWellnessCheckDesc =>
      'Tarkista henkilö, joka saattaa tarvita apua';

  @override
  String get emergencyQuitCompanionName => 'Lopettamiskumppani';

  @override
  String get emergencyQuitCompanionDesc =>
      'Taistelen himoa vastaan, tarvitsen tukea';

  @override
  String get emergencyCompanionshipName => 'Seurustelu';

  @override
  String get emergencyCompanionshipDesc =>
      'Tunnen oloni yksinäiseksi tai eristyneeksi';

  @override
  String get emergency911CoordinationName => 'Hätäkeskuksen koordinointi';

  @override
  String get emergency911CoordinationDesc =>
      'Tarvitsen apua hätäkeskukseen soittamisessa ja koordinoinnissa';

  @override
  String get equipmentAed => 'Defibrillaattori';

  @override
  String get equipmentNaloxone => 'Naloksoni/Narcan';

  @override
  String get myCapabilities => 'Minun kykyjä';

  @override
  String capabilitiesSelected(int count) {
    return '$count valittu';
  }

  @override
  String get alertSchedule => 'Hälytysaikataulu';

  @override
  String get setAvailabilityHours => 'Aseta saatavuusaikasi';

  @override
  String get trustedResponders => 'Luotetut auttajat';

  @override
  String get responseHistory => 'Vastaushistoria';

  @override
  String get privacyAndSafety => 'Yksityisyys ja turvallisuus';

  @override
  String get helpAndSupport => 'Apu ja tuki';

  @override
  String get aboutNayborSos => 'Tietoja Naybor SOS:sta';

  @override
  String get termsAndPrivacyPolicy => 'Käyttöehdot ja tietosuojakäytäntö';

  @override
  String get signOut => 'Kirjaudu ulos';

  @override
  String version(String version) {
    return 'Versio $version';
  }

  @override
  String get aboutDialogContent =>
      'Naybor SOS yhdistää naapurit hätätilanteissa luoden nopeiden auttajien verkoston, joka voi tarjota kriittistä apua ennen kuin ammattimaiset ensiapuhenkilöt saapuvat.';

  @override
  String get aboutDialogContent2 =>
      'Jokainen voi olla sankari. Et tarvitse erityiskoulutusta pelastaaksesi hengen. Joskus tehokkain toimenpide on yksinkertaisesti saapuminen paikalle.';

  @override
  String get lifesaverLabs => 'Lifesaver Labs Public Benefit Corporation';

  @override
  String get close => 'Sulje';

  @override
  String get signOutQuestion => 'Kirjaudu ulos?';

  @override
  String get signOutConfirm => 'Oletko varma, että haluat kirjautua ulos?';

  @override
  String get cancel => 'Peruuta';

  @override
  String get signedOutSuccessfully => 'Uloskirjautuminen onnistui';

  @override
  String get settings => 'Asetukset';

  @override
  String get capabilityWellnessCheck => 'Voinnin tarkistus';

  @override
  String get capabilityQuitCompanion => 'Lopettamiskumppani';

  @override
  String get capabilityActiveBystander => 'Aktiivinen sivustaseuraaja';

  @override
  String get translationTier1Label => 'Korkean luotettavuuden tekoälykäännös';

  @override
  String get translationTier2Label => 'Hyvän luotettavuuden tekoälykäännös';

  @override
  String get translationTier3Label =>
      'Keskitason luotettavuuden tekoälykäännös';

  @override
  String get translationTier4Label => 'Matalan luotettavuuden tekoälykäännös';

  @override
  String get translationTier1Notice =>
      'Tämä käännös on tekoälyn tekemä korkealla luotettavuudella. Ammatillinen tarkistus suositellaan tuotantokäyttöön.';

  @override
  String get translationTier2Notice =>
      'Tämä käännös on tekoälyn tekemä hyvällä luotettavuudella. Ammatillinen tarkistus suositellaan turvallisuuskriittiseen suostumus- ja hätätilanteen terminologiaan.';

  @override
  String get translationTier3Notice =>
      '⚠️ Tämä käännös vaatii ihmisen tarkistuksen turvallisuuskriittisiin hätälauseisiin ennen tuotantokäyttöä.';

  @override
  String get translationTier4Notice =>
      '⚠️ Tämä on vain luonnoskäännös. Ammatillinen käännös vaaditaan ennen tuotantokäyttöä.';

  @override
  String get selectLanguage => 'Valitse kieli';

  @override
  String get searchLanguagesHint => 'Etsi kieliä';

  @override
  String translationQualityLabel(String quality) {
    return 'Käännöslaatu: $quality';
  }

  @override
  String get helpImproveTranslations =>
      'Auta parantamaan käännöksiä - ilmoita ongelmista tai anna parempia käännöksiä!';
}
