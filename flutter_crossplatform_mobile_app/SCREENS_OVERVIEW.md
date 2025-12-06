# Naybor SOS - Screen Flow Overview

## 📱 Complete Screen Flow

### 🎯 Onboarding Flow (3 Screens)

```
Start → Phone Verification → Profile Setup → Capability Selection → Home
```

#### 1. Phone Verification Screen
- Enter phone number
- Receive & enter SMS code (mocked)
- Firebase Auth integration ready
- **Design:** White background, emergency red branding, clear CTAs

#### 2. Profile Setup Screen
- Name, home address, optional age
- Profile photo (optional, not implemented yet)
- Privacy notice about location
- **Design:** Clean form, blue accents, helpful tooltips

#### 3. Capability Selection Screen
- Choose from 12+ emergency types
- Grouped by category (Life-threatening, Security, Urgent, Non-urgent)
- Equipment requirements shown
- Honor system (no training required for MVP)
- **Design:** Color-coded cards, checkboxes, selection counter

---

### 🏠 Main App (Bottom Navigation - 3 Tabs)

#### Tab 1: Home Screen
**Features:**
- 🟢 Availability toggle (ON/OFF) with status indicator
- 🚨 Large "REQUEST HELP" button (emergency red)
- 📊 Quick stats (responses, avg time)
- 🛠️ Your capabilities list
- 📡 Community network status (nearby responders, coverage radius)

**Design:** Card-based layout, prominent toggle, clear visual hierarchy

#### Tab 2: Active Alerts Screen
**Features:**
- List of incoming emergency alerts (when available)
- Test/demo button to simulate incoming alert
- Empty state when no alerts
- **Design:** Clean list view, prominent test button for demo

#### Tab 3: Profile Screen
**Features:**
- User avatar, name, phone, address
- Stats cards (responses, avg time)
- Settings navigation:
  - My Capabilities
  - Alert Schedule ⭐
  - Trusted Responders
  - Response History
  - Privacy & Safety
  - Help & Support
- About & Sign Out
- **Design:** Clean profile layout, organized settings list

---

### 🚨 Alert Originator Flow (Requesting Help)

```
Home → Create Alert → Alert Status → (Resolved)
```

#### 4. Create Alert Screen
**Features:**
- Auto-detected location with confirmation
- Emergency type selection (color-coded by category)
- Optional description field (100 char limit)
- Toggle: "Alert trusted responders first"
- Large "SEND ALERT NOW" button

**Design:** Emergency red theme, clear categories, easy selection

#### 5. Alert Status Screen
**Features:**
- Emergency type display with icon
- Real-time status updates:
  - "Searching for responders..." (with progress bar)
  - "Sarah accepted - On the way"
  - "Sarah has arrived"
- Responder info card (name, photo, ETA)
- Location confirmation
- Call responder button
- Cancel alert button
- "While you wait" tips
- Mark as resolved button (when appropriate)

**Design:** Status-driven UI, real-time updates simulation, clear actions

---

### 👨‍⚕️ Responder Flow (Helping Others)

```
Incoming Alert → Accept/Decline → Navigation → On-Scene → Resolved
```

#### 6. Incoming Alert Screen (Full-Screen Takeover)
**Features:**
- 30-second countdown timer
- Emergency type with icon & description
- Location & distance
- Optional details from originator
- Equipment reminder (if required)
- Large ACCEPT / DECLINE buttons
- Auto-decline on timeout

**Design:**
- Life-threatening: Red background
- Other emergencies: Blue background
- Urgent, attention-grabbing layout
- Clear countdown timer

#### 7. Response Navigation Screen
**Features:**
- Current status display (On My Way / Arrived)
- Destination address & distance
- "Start Navigation" button (opens native maps)
- Equipment reminder card
- Emergency action buttons:
  - Call 911
  - Call Originator
- On-scene tips (appears when arrived)
- "I've Arrived" button
- "Mark Emergency Resolved" button

**Design:** Action-focused, clear navigation integration, helpful tips

---

### ⚙️ Settings & Configuration

#### 8. Alert Schedule Screen ⭐ (Key Feature)
**Features:**
- 🔴 Life-Threatening: Always notify 24/7 (required <80)
- 🟠 Security/Safety: 24/7 or schedule-based
- 🟡 Urgent Time-Sensitive: Configure hours
- 🟢 Non-Life-Threatening: Weekly schedule by day
  - Monday-Sunday time pickers
  - Individual day toggles
  - "All Day" option for weekends
- Age-based settings:
  - Optional age input
  - 70+: Gentle hours available
  - 80+: Can disable all inbound alerts

**Design:**
- Clear category separation with color coding
- Easy-to-use time selection
- Helpful explanations for each category
- Smart defaults (weeknights 6pm-11pm, weekends all day)

---

## 🎨 Design System

### Colors
- **Primary Red:** `#DC2626` - Emergency, urgent actions
- **Accent Blue:** `#2563EB` - Trust, reliability, secondary actions
- **Success Green:** `#16A34A` - Positive status, completion
- **Warning Amber:** `#F59E0B` - Equipment reminders, warnings
- **Background:** `#F9FAFB` - Soft gray

### Emergency Category Colors
- 🔴 **Life-Threatening:** `#DC2626` (Red)
- 🟠 **Security/Safety:** `#F97316` (Orange)
- 🟡 **Urgent Time-Sensitive:** `#FBBF24` (Amber)
- 🟢 **Non-Life-Threatening:** `#10B981` (Green)

### Typography
- **Display:** Bold, 32px - Major headings
- **Headline:** Semi-bold, 20-24px - Section headers
- **Title:** Medium, 16-18px - Card titles
- **Body:** Regular, 14-16px - Content
- **Caption:** Regular, 12px - Helper text

### Components
- **Cards:** White background, 2px elevation, 12px radius
- **Buttons:**
  - Primary: Red fill, white text, 12px radius
  - Secondary: Blue fill, white text, 12px radius
  - Outlined: Gray border, dark text, 12px radius
- **Input Fields:** White fill, gray border, 12px radius
- **Switches:** Red when on, gray when off

---

## 📊 Screen Count

- **Onboarding:** 3 screens
- **Main Navigation:** 3 tabs
- **Alert Creation:** 2 screens
- **Alert Response:** 2 screens
- **Settings:** 1+ screens

**Total:** 11+ distinct screens across 16 Dart files

---

## 🔄 Navigation Flow Summary

```
┌─────────────────────┐
│ Phone Verification  │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│  Profile Setup      │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ Capability Select   │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────────────────────────────┐
│           Main App (Bottom Nav)             │
├─────────────┬─────────────┬─────────────────┤
│    Home     │   Alerts    │    Profile      │
└──────┬──────┴──────┬──────┴────────┬─────────┘
       │             │               │
       ▼             ▼               ▼
┌─────────────┐ ┌────────────┐ ┌───────────────┐
│Create Alert │ │  Incoming  │ │Alert Schedule │
└──────┬──────┘ │   Alert    │ └───────────────┘
       │        └──────┬─────┘
       ▼               ▼
┌─────────────┐ ┌────────────┐
│Alert Status │ │ Navigation │
└─────────────┘ └────────────┘
```

---

## ✅ MVP Roadmap Alignment

This prototype covers **100% of Phase 0 MVP UI screens** from the roadmap:

- ✅ Registration & phone verification
- ✅ Basic profile creation
- ✅ Capability selection (12+ types)
- ✅ Availability toggle
- ✅ **Alert scheduling (FULL implementation with age policies)**
- ✅ Simple alert creation
- ✅ Alert status tracking
- ✅ Accept/decline flow with 30s timer
- ✅ Basic navigation UI
- ✅ On-scene support tips
- ✅ Profile management
- ✅ Color-coded emergency categories

---

## 🚀 Ready for Backend Integration

All screens are designed with backend integration in mind:
- Model classes ready for Firebase/API
- Clear data flow patterns
- Service layer folder structure in place
- Easy to add state management (Provider, Riverpod, Bloc)

**Next Step:** Wire up Firebase Auth, Firestore, and FCM!
