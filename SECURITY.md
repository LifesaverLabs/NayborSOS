# Security Policy

## Reporting Security Vulnerabilities

**Please do not report security vulnerabilities through public GitHub issues.**

Naybor SOS is life-saving emergency response technology. Security vulnerabilities could directly impact user safety. We take all security reports seriously and will respond promptly.

### How to Report

If you discover a security vulnerability, please email:

**security@lifesaverlabs.org** (or team@lifesaverlabs.org if dedicated security email is not yet available)

**Include in your report:**
1. **Description** - Clear explanation of the vulnerability
2. **Impact** - Potential consequences if exploited
3. **Reproduction steps** - How to reproduce the issue
4. **Affected versions** - Which versions are vulnerable
5. **Suggested fix** - If you have ideas for remediation (optional)

### What to Expect

1. **Acknowledgment** - We'll confirm receipt within 48 hours
2. **Investigation** - We'll investigate and assess severity
3. **Updates** - We'll keep you informed of our progress
4. **Resolution** - We'll work to patch the vulnerability quickly
5. **Credit** - We'll credit you in our security advisories (unless you prefer anonymity)

### Response Timeline

- **Critical vulnerabilities** - Patched within 24-48 hours
- **High severity** - Patched within 1 week
- **Medium severity** - Patched within 2 weeks
- **Low severity** - Patched in next regular release

## Security Priorities

Given that Naybor SOS handles emergency situations, we prioritize:

1. **User Privacy** - Location data, health information, and personal details must be protected
2. **System Reliability** - The alert system must work when needed most
3. **Data Integrity** - Emergency alerts must be authentic and unmodified
4. **Authentication** - Only authorized users can dispatch or respond to alerts
5. **Availability** - The system must resist denial-of-service attacks

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| main branch   | ✅ Yes (development) |
| Production releases | ✅ Yes |
| Older versions | ❌ No |

**Note:** We are currently in early development. Once we have production releases, we will maintain security support for the current major version.

## Security Best Practices for Contributors

If you're contributing code, please:

- **Never commit secrets** - API keys, passwords, or credentials
- **Use environment variables** - For configuration and sensitive data
- **Validate all inputs** - Prevent injection attacks
- **Encrypt sensitive data** - Both in transit and at rest
- **Follow principle of least privilege** - Minimize access rights
- **Review dependencies** - Check for known vulnerabilities
- **Enable Firebase security rules** - Protect Firestore and Cloud Functions
- **Use HTTPS everywhere** - No unencrypted connections

## Known Security Considerations

This is an emergency response system, which creates unique security challenges:

### Privacy vs. Emergency Response
- We collect location data during emergencies
- We minimize data collection to only what's necessary
- We delete location data after emergencies end
- See our Privacy Policy (coming soon)

### False Alerts
- We implement rate limiting to prevent alert spam
- We verify user identity before dispatching alerts
- We allow alert cancellation by the requester

### Responder Safety
- We verify responder identities before showing alerts
- We provide safety guidelines for responders
- We allow responders to decline alerts

### Good Samaritan Protections
- We operate within legal frameworks protecting emergency aid
- See [Intellectual Property.md](docs/Intellectual%20Property.md) for legal considerations

## Third-Party Dependencies

We regularly audit our dependencies for security vulnerabilities:
- **Flutter/Dart** - Official SDK maintained by Google
- **Firebase** - Google Cloud Platform security
- **npm packages** - Scanned with `npm audit`
- **GitHub Dependabot** - Automated vulnerability alerts

## Questions?

If you have security questions that are not vulnerabilities, you can:
- Ask in our [Discord server](https://discord.gg/sNdCsNmK) #security channel
- Email team@lifesaverlabs.org
- Open a public GitHub issue

---

**Thank you for helping keep Naybor SOS and our users safe.**

*Last Updated: 2025-11-16*
