import 'package:flutter/material.dart';

/// Represents a supported language in the app
class SupportedLanguage {
  final String code;
  final String nativeName;
  final String englishName;
  final Locale locale;

  const SupportedLanguage({
    required this.code,
    required this.nativeName,
    required this.englishName,
    required this.locale,
  });

  static const List<SupportedLanguage> all = [
    SupportedLanguage(
      code: 'en',
      nativeName: 'English',
      englishName: 'English',
      locale: Locale('en'),
    ),
    SupportedLanguage(
      code: 'es',
      nativeName: 'Español',
      englishName: 'Spanish',
      locale: Locale('es'),
    ),
    // Add more languages as ARB files are created:
    // SupportedLanguage(
    //   code: 'fr',
    //   nativeName: 'Français',
    //   englishName: 'French',
    //   locale: Locale('fr'),
    // ),
  ];

  static SupportedLanguage fromCode(String code) {
    return all.firstWhere(
      (lang) => lang.code == code,
      orElse: () => all.first, // Default to English
    );
  }
}

/// Configuration for PSAP (Public Safety Answering Point) dispatch language
class PsapLanguageConfig {
  final String languageCode;
  final String countryCode;
  final String region; // State/Province
  final String jurisdiction; // City/County
  final DateTime lastUpdated;
  final LocationSource locationSource;

  const PsapLanguageConfig({
    required this.languageCode,
    required this.countryCode,
    required this.region,
    required this.jurisdiction,
    required this.lastUpdated,
    required this.locationSource,
  });

  Map<String, dynamic> toJson() => {
        'languageCode': languageCode,
        'countryCode': countryCode,
        'region': region,
        'jurisdiction': jurisdiction,
        'lastUpdated': lastUpdated.toIso8601String(),
        'locationSource': locationSource.toString(),
      };

  factory PsapLanguageConfig.fromJson(Map<String, dynamic> json) {
    return PsapLanguageConfig(
      languageCode: json['languageCode'] as String,
      countryCode: json['countryCode'] as String,
      region: json['region'] as String,
      jurisdiction: json['jurisdiction'] as String,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      locationSource: LocationSource.values.firstWhere(
        (e) => e.toString() == json['locationSource'],
        orElse: () => LocationSource.unknown,
      ),
    );
  }
}

/// Indicates the source/reliability of location data
enum LocationSource {
  /// High accuracy: Native GPS/GNSS from device hardware
  nativeGps,

  /// Medium accuracy: Network-based location (cell towers, WiFi)
  networkLocation,

  /// Low accuracy: IP-based geolocation (may be affected by VPN)
  ipGeolocation,

  /// Manual: User-provided address
  userProvided,

  /// Unknown or unverified source
  unknown,
}

extension LocationSourceExtension on LocationSource {
  String get displayName {
    switch (this) {
      case LocationSource.nativeGps:
        return 'GPS/GNSS';
      case LocationSource.networkLocation:
        return 'Network Location';
      case LocationSource.ipGeolocation:
        return 'IP Geolocation';
      case LocationSource.userProvided:
        return 'User Provided';
      case LocationSource.unknown:
        return 'Unknown';
    }
  }

  bool get isReliable {
    return this == LocationSource.nativeGps ||
        this == LocationSource.networkLocation;
  }

  int get reliabilityScore {
    switch (this) {
      case LocationSource.nativeGps:
        return 100;
      case LocationSource.networkLocation:
        return 75;
      case LocationSource.ipGeolocation:
        return 30;
      case LocationSource.userProvided:
        return 50;
      case LocationSource.unknown:
        return 0;
    }
  }
}
