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


## Data Protection

- Encrypt sensitive data at rest and in transit (use HTTPS/TLS)
- Never store passwords or secrets in plain text
- Do not send sensitive data in URLs
- Restrict access to sensitive data (least privilege)
- Store secrets in secure configs, not in code
- Disable unnecessary access to databases and services
- Remove sensitive information from logs and responses
- Ensure data is deleted when no longer needed

### Connect to my experiment

- WITHOUT context:
    - secret key hardcoded 
    - no mention of HTTPS 
    - no protection of data

- WITH context:
    - secrets moved to environment variables 
    - better handling of sensitive data

## System and Dependency Management

- Keep dependencies and frameworks updated
- Remove unused code and endpoints
- Lock dependency versions
- Avoid exposing system details in headers
- Use least privilege for services
- Regularly scan for vulnerabilities

### Connect to my experiment

- WITHOUT context:
    - no mention of dependency security
    - default setup used

- WITH context:
    - not explicitly handled
    - still requires manual security practices


## File Handling

- Validate file uploads (type, size, content)
- Do not trust file extensions
- Restrict allowed file types
- Store files outside application directories
- Prevent execution of uploaded files
- Avoid exposing file paths

### Connect to my experiment

- WITHOUT context:
    - no file handling implemented

- WITH context:
    - not covered
    - remains a missing area


## Memory Management

- Avoid processing unbounded input
- Limit input sizes
- Properly release resources after use
- Avoid unsafe functions
- Clear sensitive data from memory when possible

### Connect to my experiment

- WITHOUT context:
    - no memory handling considerations

- WITH context:
    - not addressed
    - not relevant for this simple app


## Software Supply Chain Security

- Use trusted dependencies only
- Lock dependency versions
- Avoid using random external sources
- Verify integrity of packages
- Scan dependencies for vulnerabilities
- Keep build pipelines secure

### Connect to my experiment

- WITHOUT context:
    - dependencies installed without verification

- WITH context:
    - no major change
    - still requires external tooling and setup