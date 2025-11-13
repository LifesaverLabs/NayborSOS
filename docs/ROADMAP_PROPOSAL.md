# Neighbor 911 Development Roadmap

**Version:** 1.0
**Last Updated:** 2025-11-11
**Status:** Proposal
**Organization:** Lifesaver Labs Public Benefit Corporation

---

## Executive Summary

This roadmap proposes a phased approach to building Neighbor 911, starting with an ultra-minimal MVP that proves the core concept, then expanding based on real-world validation and community commitment.

**Core Philosophy:** Ship fast, learn fast, iterate based on what actually works in the field.

---

## Phase 0: Minimal Viable Product (8-12 Weeks)

### Goal
Prove that neighbors will respond to emergencies and that the system works in real conditions.

### What's IN the MVP

#### ✅ Core Registration (Week 1-2)
- Phone number verification (Firebase Auth)
- Basic profile: name, photo, home address
- Age field (for 70+ gentle hours, 80+ opt-out)
- Select 1-3 emergency types you're willing to respond to
- Simple "I'm Available Now" toggle
- **NO training videos yet** (honor system for capabilities)
- **NO equipment verification** (trust-based)
- **NO background checks** (community trust)

#### ✅ Alert Scheduling (Week 1-2)
- **Life-threatening alerts (🔴):** Always notify 24/7 (cannot disable)
- **Non-life-threatening alerts (🟢):** Set schedule by day/time
  - Default: Weeknights 6pm-11pm, Weekends all day
  - User can customize hours per day of week
- Age-based policies:
  - Under 70: Full alerts
  - 70-79: "Gentle hours" option (soft vibration outside waking hours)
  - 80+: Can disable all inbound alerts (but can still send alerts)
- Temporary suspension toggle (hospitalized, immobilized, in custody)

#### ✅ Simple Alert Creation (Week 3)
- Large buttons for 4-5 emergency types only:
  - Wellness Check
  - CPR / Cardiac Arrest
  - Quit Companion (Nicotine/Tobacco)
  - Active Bystander Witness
  - Overdose / Naloxone
- Auto-detect location (GPS)
- Optional text description (max 100 chars)
- Send button
- **NO Safeword integration yet**
- **NO trusted responder list yet**

#### ✅ Basic Intelligent Dispatch (Week 3-4)
- Query available responders within 0.5 mile radius
- Filter by:
  - Selected capabilities
  - "Available Now" toggle
  - Within alert schedule (for non-life-threatening)
  - Age preferences (gentle hours, opt-out)
  - Not in temporary suspension
- Send to closest 5 qualified responders simultaneously
- 30-second accept/decline timer
- **NO wave-based dispatch yet** (all sent at once)
- **NO trusted responders first** (Phase 2)
- **NO transportation method selection** (Phase 2)

#### ✅ Accept/Decline Flow (Week 4)
- Push notification with emergency details
- Alert bypasses Do Not Disturb (for life-threatening)
- Full-screen alert with countdown timer
- Accept button → Start response
- Decline button → Alert redistributed
- Timeout (30 sec) → Auto-decline, send to next tier
- **NO re-alerting declined responders** (Phase 2)

#### ✅ Basic Navigation (Week 5)
- Equipment reminder after accepting (text list)
- "Start Navigation" button → Opens Google/Apple Maps
- Deep link to native maps with destination
- **NO custom in-app navigation** (use native maps)
- **NO Bluetooth homing yet** (Phase 2 - this is hard)

#### ✅ On-Scene Support (Week 5)
- Simple text-based tips (3-5 bullet points per emergency type)
- "Call 911" button (deep link to phone dialer)
- Status buttons:
  - "I'm On My Way" (auto-sent on accept)
  - "I've Arrived"
  - "Emergency Resolved"
- **NO detailed protocol documents** (just tips)
- **NO expandable instructions** (keep it simple)

#### ✅ Alert Originator Experience (Week 3-5)
- See alert status after sending:
  - "Alert sent to X nearby responders"
  - "Waiting for response..."
  - "Sarah accepted - On the way"
  - "Sarah arrived"
  - "Emergency resolved"
- Real-time updates as status changes
- Cancel button (with confirmation)
- Call responder button (deep link to phone)
- **NO in-app messaging** (use phone)
- **NO responder ETA calculation** (Phase 2)

#### ✅ Minimal Privacy & Security (Week 6)
- No long-term location storage
- Location queried only during active alerts
- GPS data deleted after emergency resolved
- Basic encryption (Firebase handles most of this)
- Simple report/block functionality
- **NO background checks** (Phase 2+)

#### ✅ Admin Panel (Week 6-7)
- View active alerts
- View resolved alerts
- Basic user management (ban/suspend)
- View aggregate stats (# alerts, # responses, avg time)
- **NO government dashboard** (Phase 2+)
- **NO reward fund management** (Phase 3+)

#### ✅ Testing & Bug Fixes (Week 7-8)
- Internal team testing (10-20 people)
- Simulated emergencies
- Fix critical bugs only
- Polish core flows

#### ✅ Soft Launch Preparation (Week 8)
- App store submission (TestFlight / Internal Testing)
- Minimal liability waiver
- Privacy policy (template-based)
- Terms of service
- Invite 50-100 beta testers (1-2 apartment buildings)

### What's OUT of MVP (Deferred to Phase 2+)

#### ❌ Training & Certification
- Video training content → Phase 2
- Comprehension quizzes → Phase 2
- Equipment verification (photos) → Phase 2
- Recertification → Phase 2
- We start with **honor system**: "I can do wellness checks" checkbox

#### ❌ Advanced Dispatch Features
- Wave-based dispatch (trusted responders first) → Phase 2
- Transportation method selection (driving/walking/biking) → Phase 2
- Dynamic re-escalation based on ETA → Phase 2
- Re-alerting declined responders → Phase 2
- Multi-responder coordination → Phase 2

#### ❌ Bluetooth Homing
- This is technically complex → Phase 2
- GPS navigation to building is sufficient for MVP
- Originator can call/text responder to guide them

#### ❌ Responder Rewards System
- No financial incentives in MVP → Phase 3
- Start with pure volunteer model
- Prove the concept first, then test community willingness to pay

#### ❌ Safeword Integration
- Cross-app integration is complex → Phase 2
- Users can manually create "Bedroom Consent Emergency" alerts

#### ❌ Civic Engagement / Voting Features
- Voting reminders → Phase 4
- Suffrage alerts → Phase 4
- Protest ballots → Phase 4
- This is not urgent (election is Nov 2026)

#### ❌ 911 Dispatch Integration
- API integration with CAD systems → Phase 3+
- SMS/email notifications to dispatch → Phase 2
- For MVP: Responder manually calls 911

#### ❌ Advanced Features
- Background checks → Phase 2
- In-app messaging → Phase 2
- Response history/analytics → Phase 2
- Responder leaderboards → Phase 3
- Equipment network maps → Phase 3
- AR/VR training → Phase 4+
- Wearable integration → Phase 4+
- Multi-language support → Phase 2 (English only for MVP)

### MVP Success Criteria

**We know MVP succeeded if:**
- ✅ 50+ neighbors signed up
- ✅ 3+ real alerts sent
- ✅ 2+ successful responses (responder arrived and helped)
- ✅ Average response time < 5 minutes
- ✅ 80%+ user satisfaction ("would use again")
- ✅ Zero critical safety incidents
- ✅ System is stable (no crashes during emergencies)

**If MVP fails:**
- Pivot based on failure mode
- If no one signs up → Marketing/awareness problem
- If no one accepts alerts → Incentive problem (test rewards in Phase 3)
- If response times too slow → Proximity problem (need denser network)
- If safety incidents → Protocol problem (add more training in Phase 2)

---

## Phase 1: Enhanced Core Features (Weeks 9-16)

### Goal
Add features that improve reliability, safety, and user experience based on MVP learnings.

### Priority Features

#### ✅ Training & Certification System
- Record 5-10 training videos (phone camera quality)
- Embed in-app (YouTube unlisted)
- Simple quizzes (5 questions, 80% to pass)
- Certificate badges in profile
- **Tier 1 only** (wellness check, quit companion, bystander)
- Advanced tiers (CPR, AED) in Phase 2

#### ✅ Bluetooth Homing (If technically feasible)
- Distance + direction arrow
- Activates within 50 meters
- "You've Arrived" trigger at <10 feet
- Fallback: If Bluetooth fails, show "Call originator for directions"

#### ✅ Wave-Based Dispatch with Trusted Responders
- Add "Trusted Responder List" to profile (select 3-5 friends/family)
- Add "Alert my trusted responders first" toggle to alert creation
- Wave 1: Trusted responders (15-second window)
- Wave 2: General community (15+ seconds)
- Auto-cancel once target # of responders accept

#### ✅ Transportation Method Selection
- On alert acceptance, ask: "How will you get there?"
- Options: Driving, Running, Walking, Biking
- Calculate and display ETA to originator
- Prioritize faster responders for life-threatening emergencies

#### ✅ Equipment Verification (Simple)
- Photo upload of AED (optional)
- Attestation: "I own naloxone and know expiration date"
- Admin can flag suspicious equipment claims
- **NO in-person verification** (too expensive)

#### ✅ Expanded Emergency Types
- Add 3-5 more emergency types:
  - Fire / Evacuation
  - Missing Pet
  - Lost Child
  - Drowning
  - Medical Emergency (General)
- Total: 10-12 emergency types

#### ✅ Improved On-Scene Support
- Expandable protocol documents (detailed instructions)
- Photos/diagrams for CPR, AED placement, naloxone
- "View Full Protocol" button
- Keep glanceable tips on main screen

#### ✅ SMS Fallback Notifications
- If push notification fails to deliver, send SMS
- Requires Twilio integration
- Backup for critical alerts

#### ✅ Basic Response History
- Responders can see past responses
- Date, emergency type, outcome
- Basic stats (# responses, avg time)
- **NO leaderboards yet** (Phase 3)

### Phase 1 Timeline
- Week 9-10: Training videos + quizzes
- Week 11-12: Wave-based dispatch + trusted responders
- Week 13-14: Bluetooth homing (if possible) + transportation method
- Week 15-16: Equipment verification + expanded emergency types

### Phase 1 Success Criteria
- 200+ neighbors signed up (4x growth)
- 20+ real alerts handled
- <3 minute average response time
- 90%+ acceptance rate (someone accepts within 30 sec)
- Training completion rate >80%

---

## Phase 2: Safeword Integration & Advanced Safety (Weeks 17-24)

### Goal
Integrate with Safeword app and add features for sensitive emergencies.

### Priority Features

#### ✅ Safeword App Integration
- Unified authentication (single sign-on)
- Safeword can trigger Neighbor 911 alerts
- "Bedroom Consent Emergency" alert type
- Shared user profiles
- Cross-app alert history

#### ✅ Background Checks (For Sensitive Alerts)
- Require background check for:
  - Bedroom Consent Emergency
  - Domestic Abuse Intervention
  - Sexual Assault Intervention
- Partner with background check service (Checkr, etc.)
- Cost: $30-50 per check
- Renewal: Every 2 years
- **Responders can opt out** of sensitive alerts if they don't want background check

#### ✅ Advanced Training (Tier 2-3)
- CPR training videos (partner with Red Cross content)
- AED training + quiz
- Naloxone administration detailed training
- Domestic violence intervention training
- Active bystander de-escalation training
- Recertification every 6-12 months

#### ✅ In-App Messaging
- Quick messages between responder and originator
- Pre-written templates: "On my way", "What's your apartment number?"
- Free-form text
- End-to-end encrypted
- Auto-delete after 24 hours (privacy)

#### ✅ Multi-Responder Coordination
- See other responders en route
- Show their names, ETAs, capabilities
- Group chat (optional)
- Role assignment: "You do CPR, I'll get AED"

#### ✅ Re-Alert Declined Responders
- If all responders decline/timeout, re-alert with urgent message
- "NO OTHER RESPONDERS AVAILABLE - Please reconsider"
- Limited to 1 re-alert per responder per emergency

### Phase 2 Timeline
- Week 17-18: Safeword integration planning + API design
- Week 19-20: Background check system + Tier 2-3 training
- Week 21-22: In-app messaging + multi-responder coordination
- Week 23-24: Testing, bug fixes, polish

### Phase 2 Success Criteria
- 500+ neighbors signed up
- 50+ alerts/month
- Successful Safeword → Neighbor 911 alert flow working
- Background checks processed within 48 hours
- Zero privacy/security incidents

---

## Phase 3: Responder Rewards & Community Funding (Weeks 25-32)

### Goal
Test whether communities are willing to pay for faster emergency response.

### Priority Features

#### ✅ Reward System Infrastructure
- Two-tier rewards: $18 standard, $36 life-threatening
- Verification system:
  - Dual confirmation (originator + responder)
  - GPS/timestamp validation
  - Fraud detection algorithms
  - Manual audit for flagged claims
- Payment processing:
  - Venmo/PayPal integration
  - Direct deposit (ACH)
  - Tax reporting (1099 forms)
- Responder dashboard:
  - View reward history
  - Track annual earnings
  - Payment method setup

#### ✅ Community Funding Dashboard
- Municipality admin panel
- Set monthly contribution amount
- View fund balance
- Monthly impact reports (lives saved, ROI, cost per emergency)
- Public transparency page (aggregate stats)

#### ✅ Pilot with Boca Raton
- Approach Boca Raton city council with proposal
- Negotiate $50K/year pilot (1-year commitment)
- Launch reward system for Boca Raton residents only
- Measure impact:
  - Does response rate increase?
  - Does signup rate increase?
  - What's the cost per emergency?
  - Community satisfaction?

#### ✅ Fraud Prevention & Monitoring
- Automated fraud detection
- Random audit sample (5-10% of rewards)
- Community reporting system
- Ban/suspend fraudulent users
- Clawback mechanisms

### Phase 3 Timeline
- Week 25-26: Build reward system infrastructure
- Week 27-28: Payment processing + fraud detection
- Week 29: Pilot proposal to Boca Raton
- Week 30-32: Launch pilot (if approved) or pivot to alternative funding

### Phase 3 Success Criteria
- Boca Raton approves pilot (or alternative municipality)
- 100+ rewards distributed
- <2% fraud rate
- Response rate increases 20%+ in pilot area
- Municipality commits to Year 2 funding

### Alternative if Rewards Fail
- Continue with pure volunteer model
- Explore alternative incentives:
  - Tax deductions
  - Insurance discounts
  - Community recognition (non-monetary)
  - Gamification/badges
- Focus on intrinsic motivation (civic duty, religious calling)

---

## Phase 4: Government Integration & Scale (6-12 Months)

### Goal
Achieve official integration with emergency services and scale to multiple cities.

### Priority Features

#### ✅ 911 Dispatch Integration
- SMS/email notifications to dispatch (simple)
- API integration with CAD systems (complex)
- Real-time responder status to dispatch
- EMS coordination (avoid duplication)

#### ✅ Public AED/Naloxone Maps
- Crowdsourced equipment locations
- Public AED registry integration
- Responders can grab public equipment en route
- Equipment maintenance tracking

#### ✅ Government Dashboard
- Real-time alert monitoring
- Regional coverage maps
- Responder certification verification
- Outcome tracking (lives saved, response times)
- Exportable reports for city councils

#### ✅ Multi-City Expansion
- Scale to 5-10 cities in South Florida
- Standardized onboarding process for municipalities
- "Best practices" playbook
- Competitive pressure between cities

#### ✅ Grant Funding Support
- Apply for federal grants:
  - SAMHSA (opioid response)
  - DHS (emergency preparedness)
  - NIH (research grants for outcomes)
- State/county grants
- Foundation grants (Robert Wood Johnson, etc.)

### Phase 4 Timeline
- Months 9-10: 911 integration design + partnerships
- Months 11-12: Public equipment maps + government dashboard
- Months 13-15: Multi-city expansion (pilot 3-5 cities)
- Months 16-18: Grant applications + fundraising

### Phase 4 Success Criteria
- 3+ cities with active programs
- 2,000+ responders across all cities
- Official 911 dispatch partnership in at least 1 city
- 100+ verified lives saved
- $500K+ in grant funding secured

---

## Phase 5: Civic Engagement & Voting (12-18 Months)

### Goal
Achieve 95%+ voting rate among eligible users by November 2026 election.

### Priority Features

#### ✅ Voter Registration & Reminders
- Collect voter registration status
- Progressive reminders (30, 14, 7, 3 days before election)
- Polling place lookup and navigation
- "I Voted" confirmation button
- Neighborhood voting leaderboards

#### ✅ Suffrage Alerts
- Community-wide civic emergency alerts
- Trigger when voting/registration rates low
- "Your neighborhood needs you to register!"
- Group coordination (go vote together)

#### ✅ Protest Ballots for Disenfranchised
- Youth 13-17 can fill out "protest ballots"
- Felons can fill out protest ballots
- Print and deliver to polling places
- Make disenfranchisement visible
- Advocate for mandatory voting laws

#### ✅ Ballot Information & Education
- Lookup ballot for your address
- Candidate/proposition summaries (non-partisan)
- Voting rights education
- Registration assistance

### Phase 5 Timeline
- Month 12-13: Voter registration collection + reminders
- Month 14-15: Suffrage alerts + group coordination
- Month 16-17: Protest ballots + ballot information
- Month 18: November 2026 election push

### Phase 5 Success Criteria
- 90%+ of eligible users registered to vote
- 95%+ of registered users vote in November 2026
- 100K+ youth protest ballots generated
- Media coverage of protest ballot movement
- At least 3 states consider mandatory voting legislation

---

## Phase 6: Advanced Features & National Scale (18-36 Months)

### Goal
Become the national standard for community emergency response.

### Future Features (Exploratory)

#### Commercial Driver Network
- Partner with Uber, Lyft, Amazon, USPS, UPS, FedEx, DoorDash
- "Lifesaver Go Bags" with naloxone
- Dynamic bonus structure ($50-180 per save)
- Fraud prevention (EMS verification, autonomous help documentation)
- See PRD section 15.3 for full details

#### Law Enforcement Integration
- **Police Chase Alerts (FREE):** Alert drivers to pull over during pursuits
- **APB Alerts (PAID):** All-points bulletins with community tip bounties
- Fee structure: $100-500 per APB (prevents spam)
- Community tip rewards: $100-250 (incentivizes useful tips)
- See PRD section 15.1 for full details

#### Brain-Damaging Sport Dissuasion
- Alert type for tackling football / soccer heading among youth
- Community response to educate about CTE risks
- Advocate for flag football alternatives
- Support youth/parents who want safer sports
- 3-5 responders for persuasion group
- See USER_STORIES.md section 8.17 for full details

#### AI-Powered Dispatch
- Machine learning for optimal responder selection
- Predict response likelihood based on history
- Smart re-routing based on traffic
- Voice AI for alert creation (hands-free)

#### Wearable Integration
- Apple Watch alerts
- Fitbit integration
- Emergency button on smartwatch

#### International Expansion
- Adapt to different emergency service systems
- Multi-language support (10+ languages)
- Cultural customization per region

#### Research & Outcomes Tracking
- Partner with universities for research studies
- Publish outcomes data (lives saved, response times)
- Peer-reviewed papers
- Build evidence base for policy changes

---

## Resource Requirements

### MVP (Phase 0) - 8-12 Weeks

**Team (Minimum):**
- 1 Full-stack engineer (Flutter + Firebase)
- 1 Product manager / designer (part-time)
- 1 Medical/safety advisor (volunteer)
- 1 Legal advisor (contract basis)

**Costs:**
- Firebase: $0-50/month (free tier sufficient)
- App store fees: $100/year (Apple) + $25 one-time (Google)
- Domain/email: $20/year
- Legal review: $2,000-5,000 (liability waiver, privacy policy)
- **Total MVP cost: ~$2,500-5,500**

### Phase 1 - Weeks 9-16

**Team:**
- Same as MVP + 1 additional engineer (faster development)

**Costs:**
- Firebase: $100-500/month (more users, more data)
- Video hosting: YouTube (free) or Vimeo ($100/year)
- Twilio (SMS fallback): $200-500/month
- **Total Phase 1 cost: ~$5,000-10,000**

### Phase 2 - Weeks 17-24

**Team:**
- 2 engineers, 1 PM, 1 safety advisor

**Costs:**
- Background checks: $30-50 per check (user-paid or subsidized)
- Messaging infrastructure: Firebase (covered above)
- **Total Phase 2 cost: ~$5,000-15,000**

### Phase 3 - Weeks 25-32

**Team:**
- 2 engineers, 1 PM, 1 business development (fundraising)

**Costs:**
- Payment processing: Stripe/PayPal (2.9% + $0.30 per transaction)
- Pilot funding: $50K (from municipality - not our cost)
- **Total Phase 3 cost: ~$10,000-20,000**

### Phase 4+ - 6-18 Months

**Team:**
- 3-5 engineers, 1 PM, 1 designer, 1 partnerships lead, 1 grant writer

**Costs:**
- Infrastructure: $1,000-5,000/month
- Partnerships: $10,000-50,000 (legal, integration costs)
- Marketing: $20,000-100,000
- **Total Phase 4+ cost: ~$100,000-500,000**

**Funding Sources:**
- Grants (SAMHSA, DHS, foundations)
- Municipality contracts
- Private donations
- Corporate partnerships

---

## Risk Mitigation

### Technical Risks

**Risk:** Bluetooth homing doesn't work reliably
**Mitigation:** Fall back to GPS + phone call for final directions. Make Bluetooth optional "nice to have."

**Risk:** Firebase costs explode as we scale
**Mitigation:** Migrate to self-hosted backend (AWS/GCP) in Phase 4. Budget $5K-10K for migration.

**Risk:** App store rejection
**Mitigation:** Follow guidelines strictly, emphasize "supplement not replace 911," get legal review before submission.

### Legal Risks

**Risk:** Responder causes harm, we get sued
**Mitigation:** Strong liability waivers, Good Samaritan law protections, insurance (Phase 2+), clear "not medical advice" disclaimers.

**Risk:** Privacy violation (location tracking)
**Mitigation:** No long-term storage, clear privacy policy, GDPR/CCPA compliance, regular audits.

### Product Risks

**Risk:** No one signs up
**Mitigation:** Start in dense areas (apartments), leverage existing networks (churches, community groups), PR push.

**Risk:** No one accepts alerts
**Mitigation:** Test reward system (Phase 3), improve onboarding, reduce friction, add social pressure ("your neighbors are responding, why aren't you?").

**Risk:** Safety incident (responder hurts victim)
**Mitigation:** Better training (Phase 1), background checks (Phase 2), clear protocols, "do no harm" principle, immediate suspension for violations.

**Risk:** Fraud (fake emergencies for rewards)
**Mitigation:** Multi-layer verification, GPS validation, dual confirmation, pattern detection, audits, harsh penalties.

### Business Risks

**Risk:** No municipality will fund rewards
**Mitigation:** Pivot to pure volunteer model, explore alternative incentives, focus on intrinsic motivation.

**Risk:** Can't secure grant funding
**Mitigation:** Diversify funding sources (corporate, individual donors, partnerships), consider PBC → nonprofit arm, lean operations.

**Risk:** Can't compete with established players (PulsePoint, etc.)
**Mitigation:** Differentiate with broader use cases (not just cardiac arrest), better UX, community-first approach, open source model.

---

## Decision Points

### After MVP (Week 8-12)

**Question:** Do we have product-market fit?

**If YES (50+ users, 3+ successful responses):**
→ Proceed to Phase 1

**If NO (< 20 users or 0 successful responses):**
→ Pivot options:
1. Focus on single use case (e.g., only cardiac arrest + AED)
2. Change target audience (e.g., only seniors, only addiction recovery)
3. Different geography (e.g., rural instead of urban)
4. Shut down and learn from failure

### After Phase 1 (Week 16-20)

**Question:** Are we growing and retaining users?

**If YES (200+ users, 20+ alerts/month, <10% churn):**
→ Proceed to Phase 2 (Safeword integration)

**If NO:**
→ Diagnose problem:
- Churn issue? → Improve experience, reduce friction
- Growth issue? → Marketing, partnerships, PR
- Engagement issue? → Gamification, reminders, social features

### After Phase 3 Pilot (Week 32-36)

**Question:** Will municipalities pay for rewards?

**If YES (Boca Raton commits Year 2 funding):**
→ Scale to 5-10 cities (Phase 4)

**If NO:**
→ Pivot to pure volunteer model OR explore alternative incentives

### After Phase 4 (Month 18)

**Question:** Can we sustain operations without constant fundraising?

**If YES (recurring revenue from municipalities + grants):**
→ Expand nationally, hire full team

**If NO:**
→ Restructure as leaner operation, focus on proven high-ROI features, seek acquisition or partnership with larger org

---

## Open Questions

1. **Should we require training videos before responders can go live?**
   - MVP: No (honor system)
   - Phase 1: Recommended but optional
   - Phase 2+: Required for Tier 2-3 capabilities

2. **Should we prioritize Bluetooth homing or transportation method selection?**
   - Both Phase 1, but if resource-constrained: Transportation method is easier and more impactful

3. **Should rewards be same amount regardless of time of day?**
   - Start with flat rate
   - Consider "surge pricing" for late night (11pm-6am) in Phase 3.5

4. **Should we allow responders under 18?**
   - Yes, with parental consent
   - Tier 1 only (wellness check, quit companion, bystander)
   - No sensitive alerts (consent emergencies, DV, SA)

5. **Should we launch nationwide or focus on single city?**
   - Focus on single city (Boca Raton or Miami) for MVP
   - Expand to South Florida (5-10 cities) in Phase 4
   - Go nationwide in Phase 5-6 only after proving model

6. **Should we build native iOS + Android or Flutter cross-platform?**
   - **Flutter** (already decided, but reaffirming)
   - Faster MVP development
   - Single codebase = easier maintenance
   - Good enough performance for MVP

7. **Should we integrate with existing apps (PulsePoint, Citizen) or standalone?**
   - Start standalone
   - Consider partnerships in Phase 4+
   - Risk: Losing control of product vision

---

## Success Metrics by Phase

### MVP (Phase 0)
- ✅ 50+ signups
- ✅ 3+ real alerts
- ✅ 2+ successful responses
- ✅ < 5 min avg response time
- ✅ Zero critical incidents

### Phase 1
- ✅ 200+ signups (4x growth)
- ✅ 20+ alerts/month
- ✅ < 3 min avg response time
- ✅ 90%+ alert acceptance rate
- ✅ 80%+ training completion

### Phase 2
- ✅ 500+ signups
- ✅ 50+ alerts/month
- ✅ Safeword integration working
- ✅ Zero privacy incidents

### Phase 3
- ✅ 1 municipality funds rewards
- ✅ 100+ rewards distributed
- ✅ < 2% fraud rate
- ✅ 20%+ response rate increase

### Phase 4
- ✅ 3+ cities active
- ✅ 2,000+ responders
- ✅ 911 dispatch partnership
- ✅ 100+ lives saved
- ✅ $500K+ grants secured

### Phase 5
- ✅ 90%+ voter registration
- ✅ 95%+ voting rate (Nov 2026)
- ✅ 100K+ protest ballots
- ✅ Media coverage

### Phase 6
- ✅ 10+ cities active
- ✅ 10,000+ responders
- ✅ Commercial driver network pilot
- ✅ National recognition

---

## Revision History

| Version | Date       | Author        | Changes                          |
|---------|------------|---------------|----------------------------------|
| 1.0     | 2025-11-11 | Initial       | Comprehensive roadmap proposal   |

---

## Next Steps

1. **Review this roadmap** with stakeholders and contributors
2. **Commit to MVP scope** - ruthlessly cut anything not in Phase 0
3. **Recruit MVP team** - 1 engineer + 1 PM minimum
4. **Set timeline** - Week 1 starts when?
5. **Define success criteria** - What does "MVP success" look like exactly?
6. **Build MVP** - Ship in 8-12 weeks
7. **Measure and learn** - Did it work? Why or why not?
8. **Decide Phase 1** - Based on MVP results

---

**Remember:** The goal is not to build the perfect product. The goal is to **learn whether neighbors will actually help each other in emergencies when given a simple tool.**

If MVP fails, we learn fast and pivot or stop. If MVP succeeds, we have evidence to raise funding, recruit volunteers, and scale.

**Ship fast. Learn fast. Save lives.**
