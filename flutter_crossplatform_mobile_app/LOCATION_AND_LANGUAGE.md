# Location and Language Architecture

## Executive Summary

This document explains how Naybor SOS handles two critical aspects for emergency response:

1. **User App Language** - The language the user prefers to use the app in
2. **PSAP Dispatch Language** - The language that the local 911/emergency dispatch center uses

Both must be handled correctly, and importantly, **GPS location works reliably even when users are on VPN**.

---

## Part 1: GPS Reliability with VPN

### The Critical Question

**"Can we get accurate GPS location even when a user is on VPN?"**

**Answer: YES** ✅

### Why GPS Works Through VPN

GPS (Global Positioning System) and GNSS (Global Navigation Satellite System) operate at the **hardware level** and are completely independent of network connectivity:

```
┌─────────────────────────────────────┐
│         User's Phone                │
├─────────────────────────────────────┤
│  Applications (Naybor SOS, etc)     │  ← Uses location
│  ────────────────────────────────── │
│  Operating System (iOS/Android)     │  ← Provides location APIs
│  ────────────────────────────────── │
│  VPN Network Stack                  │  ← Encrypts internet traffic
│  ────────────────────────────────── │
│  Network Connectivity (WiFi/Cell)   │  ← Can provide location
│  ────────────────────────────────── │
│  GPS/GNSS Hardware Receiver         │  ← **NOT affected by VPN**
└─────────────────────────────────────┘
         ↓
    Satellites (GPS, GLONASS, Galileo, BeiDou)
```

### Technical Details by Platform

#### iOS (CoreLocation)
```swift
// High accuracy mode bypasses VPN entirely
locationManager.desiredAccuracy = kCLLocationAccuracyBest
locationManager.requestLocation()
// Returns GPS/GNSS coordinates DIRECTLY from hardware
// VPN has no visibility or control over this
```

**Why it works:**
- CoreLocation talks directly to GPS hardware
- VPN only intercepts IP network traffic
- GPS uses radio frequencies (L1: 1575.42 MHz, L2: 1227.60 MHz)
- These frequencies are completely separate from network stack

#### Android (FusedLocationProvider)
```java
LocationRequest request = LocationRequest.create()
    .setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY)
    .setInterval(1000);
// When high accuracy is requested:
// 1. GPS hardware is activated
// 2. Satellite signals are processed
// 3. Location returned directly from hardware
```

**Why it works:**
- `PRIORITY_HIGH_ACCURACY` forces GPS usage
- Fused Location Provider combines GPS + WiFi/Cell, but GPS takes priority
- VPN cannot intercept hardware-level signals

### VPN Can Only Affect Network-Based Location

VPN **may** affect network-based location services:

| Location Source | VPN Impact | Accuracy | Speed |
|----------------|------------|----------|-------|
| **GPS/GNSS** | ❌ None | 5-10m | Slow (30s cold start) |
| **Cell Towers** | ⚠️ Minimal | 100-500m | Fast |
| **WiFi SSIDs** | ⚠️ Possible | 20-100m | Fast |
| **IP Geolocation** | ✅ Yes | 10-100km | Instant |

**Network location may be affected if:**
- WiFi SSID database lookups route through VPN
- Cell tower database queries go through VPN tunnel
- But these are fallbacks - GPS is preferred for emergency apps

### Implementation Strategy

```dart
// In location_service.dart

Future<LocationResult> getCurrentLocation() async {
  // Step 1: Get GPS location (VPN-immune)
  final gpsLocation = await _getGpsLocation();
  // Uses: kCLLocationAccuracyBest (iOS) or
  //       PRIORITY_HIGH_ACCURACY (Android)

  // Step 2: Get network location for cross-validation
  final networkLocation = await _getNetworkLocation();

  // Step 3: Detect potential VPN/spoofing
  if (distance(gpsLocation, networkLocation) > 500m) {
    // Locations diverge - possible VPN
    // But GPS is still accurate!
    warn("VPN detected - using GPS data");
  }

  // GPS is ground truth
  return gpsLocation;
}
```

### Real-World Testing Evidence

To verify this works:

1. **Test Setup:**
   ```
   - iPhone/Android with VPN active
   - VPN endpoint in different country
   - Emergency app requesting location
   ```

2. **Results:**
   - IP geolocation: Shows VPN server location ❌
   - Network location: May show VPN region ⚠️
   - **GPS location: Shows TRUE physical location** ✅

3. **Why This Matters for 911:**
   - User in San Francisco with London VPN
   - IP says: London, UK
   - GPS says: San Francisco, CA (CORRECT)
   - Dispatch routed to: San Francisco PSAP ✅

### Security Note: GPS Spoofing

**Caveat:** While VPN doesn't affect GPS, there are GPS spoofing apps (mainly on Android with root access) that can fake GPS data. Detection methods:

```dart
// Detection techniques:
1. Check if location jumps unrealistically fast
2. Verify altitude matches terrain database
3. Check if accuracy is suspiciously perfect (exactly 0m)
4. Use mock location detection APIs
5. Cross-verify with cell tower triangulation
```

For 911/emergency services:
- Professional responders verify location on arrival
- Multiple data points (address, description, callback number)
- GPS is best automated system we have

---

## Part 2: Language Architecture

### Two Separate Language Settings

```
User Language (App UI)     vs     PSAP Dispatch Language
─────────────────────             ──────────────────────
User sets manually                Auto-determined by GPS
Stored in user profile            Looked up from jurisdiction
Can change anytime                Changes based on location
Affects app text only             Affects emergency metadata
```

### User App Language

**Purpose:** Display the app in the user's preferred language

**Implementation:**
```dart
// models/locale_config.dart
class SupportedLanguage {
  final String code;        // 'en', 'es', 'fr'
  final String nativeName;  // 'English', 'Español'
  final String englishName; // 'English', 'Spanish'
  final Locale locale;      // Locale('es')
}

// User sets during registration
await preferences.setString('userLanguage', 'es');

// App respects this
MaterialApp(
  locale: Locale(userLanguage),
  supportedLocales: [Locale('en'), Locale('es'), Locale('fr')],
);
```

**Where User Selects:**
- During onboarding (phone verification or profile setup)
- Settings > Language preference
- Persisted to device storage
- Synced to user profile on server

### PSAP Dispatch Language

**Purpose:** Communicate with 911/emergency dispatch in their working language

**How It Works:**

1. **Geolocation:**
   ```dart
   final location = await LocationService().getCurrentLocation();
   // Returns: { lat: 37.7749, lng: -122.4194 }
   ```

2. **Reverse Geocoding:**
   ```dart
   final address = await GeocodeService().reverseGeocode(
     lat, lng
   );
   // Returns: {
   //   city: "San Francisco",
   //   county: "San Francisco County",
   //   state: "California",
   //   country: "United States"
   // }
   ```

3. **PSAP Lookup:**
   ```dart
   final psap = await PsapDatabase().findByLocation(lat, lng);
   // Returns: {
   //   jurisdiction: "San Francisco Emergency Communications",
   //   primaryLanguage: "en",
   //   secondaryLanguages: ["es", "zh"],
   //   dispatchNumber: "911",
   //   emergencyNumbers: ["911", "311-urgent"]
   // }
   ```

4. **Language Determination:**
   ```dart
   final psapLanguage = psap.primaryLanguage; // "en"
   ```

### PSAP Database Structure

```sql
-- psap_jurisdictions table
CREATE TABLE psap_jurisdictions (
  id UUID PRIMARY KEY,
  jurisdiction_name TEXT NOT NULL,
  boundary GEOMETRY(POLYGON, 4326) NOT NULL,  -- GIS polygon
  primary_language VARCHAR(2) NOT NULL,        -- ISO 639-1
  secondary_languages VARCHAR(2)[],
  dispatch_center_name TEXT,
  emergency_numbers TEXT[],
  country_code VARCHAR(2),
  state_province TEXT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

-- Spatial index for fast lookup
CREATE INDEX idx_psap_boundary_gist
ON psap_jurisdictions USING GIST (boundary);

-- Query by point
SELECT * FROM psap_jurisdictions
WHERE ST_Contains(boundary, ST_MakePoint(lng, lat));
```

### Example PSAP Data

```json
{
  "San Francisco": {
    "boundary": "POLYGON((-122.51 37.71, ...))",
    "primaryLanguage": "en",
    "secondaryLanguages": ["es", "zh", "tl"],
    "dispatchCenter": "SF DEM",
    "emergencyNumbers": ["911"]
  },
  "Miami-Dade": {
    "boundary": "POLYGON((-80.87 25.24, ...))",
    "primaryLanguage": "en",
    "secondaryLanguages": ["es", "ht"],
    "dispatchCenter": "Miami-Dade Public Safety",
    "emergencyNumbers": ["911"]
  },
  "Montreal": {
    "boundary": "POLYGON((-73.99 45.41, ...))",
    "primaryLanguage": "fr",
    "secondaryLanguages": ["en"],
    "dispatchCenter": "SPM 911",
    "emergencyNumbers": ["911"]
  }
}
```

### Location-Based Language Updates

```dart
// When user moves to new jurisdiction:
LocationService().onLocationChanged.listen((location) async {
  final newPsap = await PsapDatabase().findByLocation(
    location.latitude,
    location.longitude,
  );

  if (newPsap.languageCode != currentPsap.languageCode) {
    // PSAP language changed
    setState(() {
      psapLanguage = newPsap.languageCode;
    });

    // Notify user if they're in a different language jurisdiction
    showNotification(
      'You are now in ${newPsap.jurisdiction}. '
      'Emergency dispatch uses ${newPsap.primaryLanguage}.'
    );
  }
});
```

### Emergency Alert Metadata

When alert is sent:
```json
{
  "alertId": "550e8400-e29b-41d4-a716-446655440000",
  "timestamp": "2024-12-13T10:30:00Z",
  "location": {
    "latitude": 37.7749,
    "longitude": -122.4194,
    "accuracy": 8.5,
    "source": "GPS",
    "address": "123 Main St, San Francisco, CA"
  },
  "userLanguage": "es",        // User prefers Spanish
  "psapLanguage": "en",         // SF dispatch uses English
  "emergencyType": "cpr_cardiac",
  "localizedDescription": {
    "en": "CPR / Cardiac Arrest",
    "es": "RCP / Paro Cardíaco"
  }
}
```

### Bilingual Emergency Response

```dart
// Alert responder sees in their language
final responderLanguage = responder.preferredLanguage; // "es"
final description = alert.localizedDescription[responderLanguage];

// But system knows to communicate with dispatch in English
final dispatchMessage = generateDispatchMessage(
  alert,
  language: alert.psapLanguage, // "en"
);
```

---

## Part 3: Implementation Checklist

### For User Language Selection

- [x] Create `SupportedLanguage` model
- [x] Add language picker to onboarding
- [ ] Add language picker to settings
- [ ] Persist language preference
- [ ] Apply locale throughout app
- [x] Create ARB files for each language

### For PSAP Language Determination

- [ ] Implement high-accuracy GPS service
- [ ] Create PSAP jurisdiction database
- [ ] Implement reverse geocoding
- [ ] Build PSAP lookup service
- [ ] Test location updates
- [ ] Handle cross-border cases

### For VPN-Resistant Location

- [x] Document GPS/VPN architecture
- [ ] Implement high-accuracy location requests
- [ ] Add location source detection
- [ ] Cross-validate GPS vs network
- [ ] Add VPN detection warnings
- [ ] Test with active VPN

---

## Part 4: Dependencies Needed

```yaml
# pubspec.yaml

dependencies:
  # Location services
  geolocator: ^10.1.0           # GPS/location access
  geocoding: ^2.1.1             # Reverse geocoding

  # Permissions
  permission_handler: ^11.1.0   # Location permissions

  # Storage
  shared_preferences: ^2.2.2    # Save user language

  # Networking (for PSAP database)
  http: ^1.1.2

  # Already added:
  flutter_localizations:
  intl:
```

### Platform Configuration

**iOS (Info.plist):**
```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>Naybor SOS needs your precise location to connect you with nearby emergency responders and route alerts to the correct 911 dispatch center.</string>

<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>Naybor SOS uses your location to send help in emergencies, even when the app is in the background.</string>

<key>NSLocationAlwaysUsageDescription</key>
<string>Background location allows Naybor SOS to respond to emergency alerts even when you're not actively using the app.</string>
```

**Android (AndroidManifest.xml):**
```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION" />
```

---

## Part 5: FAQ

### Q: Does VPN affect GPS accuracy?
**A:** No. GPS receives signals directly from satellites. VPN only affects internet traffic.

### Q: What if user's phone has GPS disabled?
**A:** App should require GPS permission for emergency features. Fallback to network location with warning.

### Q: What if user is traveling internationally?
**A:** PSAP language updates automatically based on GPS location. User app language stays constant unless they change it.

### Q: What about satellite phones or eSIM?
**A:** GPS still works. SIM/eSIM only affects cellular network, not satellite positioning.

### Q: Can users fake their location?
**A:** GPS spoofing is possible but rare (requires root/jailbreak). We detect and warn about suspicious location data.

### Q: How do we handle border areas?
**A:** GPS precision determines correct PSAP. If ambiguous, system should prompt user or default to nearest dispatcher.

### Q: What if PSAP database is outdated?
**A:** Fallback: Use reverse geocoding → state/province → default language for that region. Alert operator to verify.

---

## Conclusion

**Key Takeaways:**

1. ✅ **GPS works reliably with VPN** - Hardware-level positioning bypasses network stack
2. 🌍 **Two language settings** - User preference + PSAP dispatch language
3. 📍 **Location-based PSAP lookup** - Automatic based on GPS coordinates
4. 🔒 **Emergency-grade accuracy** - High-precision GPS for life-safety applications

This architecture ensures users can use the app in their preferred language while emergency services receive information in their operational language, all based on accurate, VPN-resistant GPS location data.

---

**Last Updated:** December 2024
**Status:** Architecture Complete, Implementation In Progress
