# Contributing to Neighbor 911™

**Thank you for helping build life-saving technology!** We're excited to have you as part of the Neighbor 911 calmunity.

---

## 🚨 Join the Calmunity First

Before contributing, please join our community spaces:
- **💬 [Discord Server](https://discord.gg/sNdCsNmK)** - Real-time coordination and collaboration
- **🗣️ [Reddit r/neighbor911](https://www.reddit.com/r/neighbor911/)** - Community discussions and updates

---

## How to Contribute

### 1. Find Something to Work On

- **Browse [open issues](https://github.com/LifesaverLabs/Neighbor911/issues)** - Look for issues tagged `good-first-issue` or `help-wanted`
- **Check [VOLUNTEER_JOBS.md](VOLUNTEER_JOBS.md)** - See what roles and skills we need
- **Ask in Discord** - The #introductions and #general channels are great places to find tasks
- **Propose new ideas** - Submit an issue or discuss in Discord before building

### 2. Set Up Your Development Environment

```bash
# Fork and clone the repository
git clone https://github.com/YOUR_USERNAME/Neighbor911.git
cd Neighbor911

# Install Flutter dependencies
flutter pub get

# Run the app
flutter run
```

See [ARCHITECTURE.md](ARCHITECTURE.md) for detailed technical setup.

### 3. Make Your Changes

- **Create a branch** - Use descriptive names: `feature/voice-ai-alerts` or `fix/geolocation-crash`
- **Follow code style** - Use Flutter/Dart conventions, run `flutter analyze`
- **Write tests** - Add unit/integration tests for new features
- **Document your work** - Update relevant docs and add code comments
- **Keep PRs focused** - One feature or fix per pull request

### 4. Submit a Pull Request

- **Write a clear title** - Describe what your PR does
- **Fill out the PR template** - Explain the problem and your solution
- **Reference issues** - Link to relevant issues (e.g., "Fixes #123")
- **Request review** - Tag relevant maintainers or ask in Discord
- **Be responsive** - Address feedback and questions promptly

---

## Code of Conduct

### Our Pledge

We are committed to providing a welcoming, inclusive, and harassment-free experience for everyone, regardless of:
- Age, body size, disability, ethnicity, gender identity and expression
- Level of experience, education, socio-economic status
- Nationality, personal appearance, race, religion
- Sexual identity and orientation

### Expected Behavior

- **Be respectful** - Treat everyone with kindness and empathy
- **Be constructive** - Offer helpful feedback and accept it gracefully
- **Be collaborative** - We're building this together
- **Be patient** - Everyone is volunteering their time
- **Focus on saving lives** - Keep our mission at the center

### Unacceptable Behavior

- Harassment, intimidation, or discrimination of any kind
- Trolling, insulting comments, or personal attacks
- Publishing others' private information without permission
- Any conduct that could reasonably be considered inappropriate

### Enforcement

Violations of the code of conduct may be reported to team@lifesaverlabs.org. All complaints will be reviewed and investigated promptly and fairly.

---

## Intellectual Property & License

### Contributions

**By contributing code, designs, documentation, or other creative works to Neighbor 911, you agree that:**

1. **Your contributions become the property of Lifesaver Labs Public Benefit Corporation**
   - This allows us to maintain the project long-term
   - Ensures we can defend the codebase if needed
   - Enables us to pursue grants and partnerships
   - Protects the project's sustainability

2. **All code is released under the MIT License**
   - Your contributions will be open-source and freely available
   - Anyone can use, modify, and distribute the code
   - See [LICENSE](../LICENSE) for full terms

3. **You have the right to contribute**
   - You own the work you're contributing OR
   - You have permission from the copyright holder to contribute it
   - Your contribution does not violate anyone else's intellectual property

4. **You grant Lifesaver Labs PBC irrevocable rights to:**
   - Use, modify, distribute, and sublicense your contributions
   - Incorporate your work into Neighbor 911 and derivative works
   - Relicense the code if needed for the project's benefit
   - Use your contributions for any lawful purpose aligned with our mission

### Why This Matters

Clear intellectual property assignment allows us to:
- **Protect the project** - Defend against legal challenges or misuse
- **Secure funding** - Many grants require clear IP ownership
- **Build partnerships** - Work with hospitals, 911 centers, and municipalities
- **Maintain MIT license** - Keep the code open-source while protecting the brand
- **Support contributors** - Eventually pay core contributors as funding grows

### Trademark & Branding

- **"Neighbor 911™"** is a trademark of Lifesaver Labs PBC
- Code is MIT-licensed; the trademark is protected separately
- You can use the code, but using the "Neighbor 911" name requires permission
- See [INTELLECTUAL_PROPERTY.md](INTELLECTUAL_PROPERTY.md) for details

### Design Contributions

By contributing designs, graphics, UI/UX work, or visual assets:
- You grant Lifesaver Labs PBC full rights to use and modify your work
- Your designs will be incorporated into the MIT-licensed codebase
- We may use designs in marketing, documentation, and the app itself

### Documentation Contributions

By contributing documentation, guides, or written content:
- You grant Lifesaver Labs PBC rights to edit, publish, and distribute your work
- Documentation is released under the same MIT License as the code
- We may adapt your writing for different contexts (web, app, print, etc.)

---

## Contributor License Agreement (CLA)

**By submitting a pull request or contribution, you automatically agree to these terms.** We do not require a separate signed CLA document, but your first contribution constitutes acceptance of this agreement.

If you have concerns about IP assignment or need a custom agreement (e.g., employer IP policies), please contact team@lifesaverlabs.org before contributing.

---

## Development Guidelines

### Prioritize Lives Saved

Every decision should ask: **"Does this help save lives?"**
- Performance matters - seconds count in emergencies
- Accessibility matters - everyone deserves emergency help
- Privacy matters - protect user data religiously
- Reliability matters - the app must work when needed most

### Code Quality Standards

- **Test your code** - Write unit tests and integration tests
- **Handle errors gracefully** - Never let the app crash during an emergency
- **Optimize performance** - Fast load times, minimal battery drain
- **Document complex logic** - Help future contributors understand your work
- **Run linters** - Use `flutter analyze` and fix warnings

### Privacy & Security

- **Minimize data collection** - Only collect what's absolutely necessary
- **No long-term location storage** - Delete location data after emergencies end
- **Encrypt sensitive data** - Use Firebase security rules and encryption
- **Test security** - Think like an attacker, close vulnerabilities

### Accessibility

Design and build for everyone:
- **Screen reader support** - Label all UI elements properly
- **High contrast modes** - Support visual accessibility settings
- **Large touch targets** - Accommodate motor impairments
- **Clear language** - Support ages 13-100+, multiple languages

---

## Git Workflow

### Branch Naming

- `feature/description` - New features (e.g., `feature/voice-alerts`)
- `fix/description` - Bug fixes (e.g., `fix/crash-on-startup`)
- `docs/description` - Documentation updates (e.g., `docs/contributing-guide`)
- `refactor/description` - Code refactoring (e.g., `refactor/alert-system`)

### Commit Messages

Write clear, descriptive commit messages:

```
Good: "Add voice AI emergency alert feature"
Good: "Fix geolocation crash on Android 12+"
Good: "Update CONTRIBUTING.md with IP policy"

Bad: "Update stuff"
Bad: "Fix bug"
Bad: "WIP"
```

### Pull Request Process

1. **Ensure tests pass** - Run `flutter test` before submitting
2. **Update documentation** - Add/update docs if you changed behavior
3. **Keep PRs small** - Easier to review, faster to merge
4. **Respond to feedback** - Address reviewer comments promptly
5. **Be patient** - All reviewers are volunteers

---

## Communication Channels

### Discord (Real-time)
- **#introductions** - Introduce yourself
- **#general** - General discussion
- **#development** - Technical questions and coordination
- **#design** - UI/UX discussion
- **#partnerships** - Connecting with organizations

### Reddit (Asynchronous)
- **Community updates** - Major announcements
- **Resource sharing** - Emergency preparedness content
- **Q&A** - Longer-form discussions

### GitHub (Code-focused)
- **Issues** - Bug reports and feature requests
- **Pull Requests** - Code contributions
- **Discussions** - Long-form technical discussions

### Email
- **team@lifesaverlabs.org** - General inquiries
- **nobody@lifesaverlabs.org** - Funding discussions

---

## Recognition

We deeply appreciate every contribution:
- **Contributors listed** - We'll add you to our CONTRIBUTORS.md file
- **Credit in releases** - Acknowledgment in release notes
- **Community shoutouts** - Recognition in Discord and social media
- **Future opportunities** - Core contributors may receive paid roles as funding grows

---

## Questions?

Not sure where to start? Need help with something?

- **Ask in Discord** - [https://discord.gg/sNdCsNmK](https://discord.gg/sNdCsNmK)
- **Email us** - team@lifesaverlabs.org
- **Browse docs** - Check [ARCHITECTURE.md](ARCHITECTURE.md), [PRD.md](PRD.md), and [VOLUNTEER_JOBS.md](VOLUNTEER_JOBS.md)

---

## Thank You

**Every contribution saves lives.** Whether you're writing code, designing interfaces, translating content, or spreading the word—you're making a real difference.

Together, we're building a world where help is always just seconds away.

**Welcome to the calmunity. Let's save lives together.**

---

*Last Updated: 2025-11-16*
