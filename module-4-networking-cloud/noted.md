# Module 4 - Networking & Cloud Security Notes

## 1. Introduction to Cybersecurity

Cybersecurity is basically about protecting systems, networks, and data from attacks.

Everything in IT connects:
- Hardware → OS → Network → Cloud → Security

Security is applied across all of these layers.

---

## 2. Networking Basics

Networking is how devices communicate with each other.

### Common Devices:
- Router → connects different networks
- Switch → connects devices in same network
- Firewall → filters traffic (allow/block)

---

## 3. Network Concepts

### OSI Model (just idea)
7 layers → from physical wires to applications  
Not needed to memorize fully, just know:
- lower layers → hardware/network
- higher layers → applications

### TCP/IP Model
Real-world model used in networking.

---

## 4. IP Addressing

- Every device has an IP (like an address)
- IPv4 → 192.168.x.x
- IPv6 → newer version

### Subnetting
Dividing networks into smaller parts (for control and security)

---

## 5. Protocols (important ones)

- HTTP / HTTPS → web traffic
- TCP → reliable communication
- UDP → fast but less reliable
- DNS → converts domain → IP

---

## 6. VPN

VPN = secure tunnel over internet

Used to:
- protect data on public WiFi
- hide IP
- secure communication

---

## 7. Cloud Security Basics

Cloud is widely used but also risky if misconfigured :contentReference[oaicite:0]{index=0}

---

## 8. Common Cloud Threats

- Phishing (very common)
- Stolen credentials
- Misconfigurations

---

## 9. Shared Responsibility Model

- Cloud provider (AWS, etc.) → secures infrastructure
- YOU → secure your apps, data, configs

---

## 10. CIA Triad

Basic security principles:

- Confidentiality → only authorized access
- Integrity → data should not be altered
- Availability → system should always be accessible

---

## 11. IAM (Identity & Access Management)

Controls:
- who can access
- what they can do

### Key parts:
- Users → people/app
- Roles → temporary permissions
- Policies → rules (JSON)
- Groups → collection of users

---

## 12. Authentication vs Authorization

- Authentication → who you are  
- Authorization → what you can do  

---

## 13. Least Privilege Principle

Give only required access.

Example:
User needs read → don’t give write access

---

## 14. Cloud Network Security

### Security Groups
- act like firewall
- stateful (auto allow return traffic)

### NACL
- subnet-level firewall
- stateless (manual rules needed)

---

## 15. WAF & DDoS

### WAF
- protects apps from attacks (XSS, SQL injection)

### DDoS
- overload system with traffic

Protection:
- AWS Shield

---

## 16. VPN vs Direct Connect

- VPN → internet-based secure connection  
- Direct Connect → private dedicated connection  

---

## 17. Linux Firewall

Linux uses:
- iptables / nftables

Example idea:
- allow HTTP/HTTPS
- block SSH from public

---

## 18. Data Security & Encryption

- Encrypt sensitive data
- Use secure key management (KMS)
- Avoid storing secrets in code

---

## 19. Backup & Recovery

- Always have backups
- Helps in recovery after attack/failure

---

## 20. DevSecOps

Security integrated into development pipeline

---

## 21. SAST & DAST

- SAST → checks code before running  
- DAST → tests running application  

---

## 22. OWASP, CVE, CVSS

- OWASP → common vulnerabilities list  
- CVE → known vulnerabilities database  
- CVSS → severity score  

---

## 23. Logging & Monitoring

- Track activity
- detect attacks early

---

## 24. IAM Best Practices

- Use MFA
- avoid root account
- rotate credentials
- remove unused access

---

## 25. Common Mistakes

- Hardcoded secrets
- Open permissions
- No encryption
- No monitoring

---

## Final Understanding

This module is mostly about:

- how systems connect (networking)
- how to secure them (cloud security)

