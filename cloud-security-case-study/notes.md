# Cloud Security - Notes

## Common Cloud Security Issues

- Public storage exposure
- Overly permissive IAM roles
- Open network access (0.0.0.0/0)
- Hardcoded secrets
- Lack of MFA
- Poor encryption practices

---

## Key Concepts

### IAM (Identity & Access Management)
Controls who can access what.

### Least Privilege
Only give minimum required permissions.

### MFA (Multi-Factor Authentication)
Adds extra layer of security beyond password.

---

## Encryption

- At Rest → stored data
- In Transit → data being sent

AWS provides default encryption for many services.

---

## Risk Management

Identify → Analyze → Mitigate risks

Common risks:
- misconfiguration
- insecure APIs
- identity misuse
- data breaches

---

## Compliance

Following standards like:
- GDPR
- HIPAA
- ISO 27001

---

## Logging & Monitoring

- CloudWatch → logs
- CloudTrail → API tracking

Used to detect suspicious activity

---

## Security Tools

- GuardDuty → threat detection
- Security Hub → overview
- Macie → sensitive data detection
- Inspector → vulnerability scanning