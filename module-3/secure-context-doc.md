# Secure Coding Context (Flask)

This is the context I used to guide the LLM toward generating safer code.

---

## Input Validation (updated)

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