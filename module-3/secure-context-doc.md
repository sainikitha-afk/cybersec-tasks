# Secure Coding Context (Flask)

This is the context I used to guide the LLM toward generating safer code.

---

## 1. Input Validation (updated)

- Never trust user input directly
- Validate everything on the server side
- Check format (email, username, etc.)
- Check length and allowed characters
- Reject anything unexpected
- Prefer allow-list (what is allowed) instead of block-list

---

## Authentication
- Never store passwords in plain text
- Use bcrypt for hashing
- Enforce minimum password strength

---

## Session Management
- Use secure cookies (HttpOnly, Secure)
- Prevent session fixation
- Clear sessions on logout

---

## Access Control
- Ensure only authorized users access protected routes
- Follow least privilege principle

---

## Data Protection
- Do not hardcode secrets
- Use environment variables
- Use HTTPS for communication

---

## Error Handling
- Avoid exposing internal errors
- Use generic error messages

---

## General Rules
- Avoid eval()
- Use parameterized queries
- Follow OWASP secure coding practices

## 3. Authentication and Password Management

- Never store passwords in plain text
- Always hash passwords using bcrypt or argon2
- Enforce minimum password strength (length, complexity)
- Use HTTPS for transmitting credentials
- Do not hardcode secrets or credentials
- Use secure authentication frameworks instead of custom logic
- Implement account lock after multiple failed login attempts
- Use token-based password reset with expiry
- Avoid revealing whether username or password is incorrect
- Use MFA for sensitive accounts when possible

### Approved Patterns
- bcrypt / argon2 for hashing
- OAuth2 / OIDC for authentication
- Short-lived reset tokens

### Example
bcrypt.generate_password_hash(password)

## 4. Session Management

- Use server-side sessions only
- Never expose session IDs in URLs or logs
- Use secure cookies (HttpOnly, Secure, SameSite)
- Always use HTTPS
- Regenerate session ID after login
- Expire sessions after inactivity
- Clear session completely on logout
- Prevent multiple concurrent sessions if needed

### Example
Set-Cookie: session_id=xyz; Secure; HttpOnly; SameSite=Strict

### From my  outputs:

- WITHOUT context:
    - basic session handling (flask-login)
    - no cookie security settings 

- WITH context:
    - secure cookie configs added 
    - session regeneration mentioned 
    - better logout handling 


## Access Control

- Check authorization on every request
- Ensure users can only access their own data
- Restrict access to sensitive routes (admin, etc.)
- Follow least privilege principle
- Do not rely on frontend checks for security
- Deny access by default if unsure
- Separate normal user and admin functionality
- Log and monitor access to sensitive actions

### Connect to my experiment

- WITHOUT context:
    - only login system
    - no role checks 
    - no restrictions beyond login 

- WITH context:
    - still mostly login-based
    - no advanced access control 

- Key insight:
    - Access control was NOT really handled in either

## Cryptographic Practices

- Use trusted libraries for encryption (don’t build your own)
- Protect secrets like API keys and tokens
- Never store secrets in plain text
- Use secure random generators for tokens and IDs
- Manage keys securely (do not hardcode them)
- Validate data integrity using hashes or signatures
- Do not blindly trust internal services

### Approved Tools
- AWS KMS
- Azure Key Vault
- HashiCorp Vault

### Connect to my experiment

- WITHOUT context:
    - secret key was hardcoded
    - no key management

- WITH context:
    - used environment variables
    - better secret handling


## Error Handling and Logging

- Do not expose internal errors to users
- Use generic error messages (e.g., "Something went wrong")
- Log detailed errors internally for debugging
- Do not log sensitive data (passwords, tokens, etc.)
- Log important events like login attempts and failures
- Ensure logs are accessible only to authorized users
- Handle errors properly instead of crashing the app

### Connect to my experiment

- WITHOUT context:
    - basic flash messages like “Login failed”
    - no structured logging

- WITH context:
    - used generic responses like: "Invalid credentials"
    - some awareness of security messaging

