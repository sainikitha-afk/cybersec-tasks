# Comparison - With vs Without Context

## Without Context
- Basic functionality
- Partial security (hashing present)
- Missing validation and protections
- Hardcoded values
- No clear security reasoning

---

## With Context
- Strong security practices implemented
- Input validation added
- Secrets handled properly
- Better session handling
- Clear explanations provided

---

## Final Thought

This experiment showed that the quality and security of LLM-generated code depends heavily on the context provided.

Without context → works but risky  
With context → much safer and closer to real-world standards

## Updates - Input Validation - Task 1
- Input validation was missing in the basic prompt output
- After adding context, validation checks were included
- This shows how context directly improves security
- Example:
  username must match: ^[a-zA-Z0-9_]{3,20}$

## Task 3 Update - Authentication and Password Management 
- Authentication improved with hashing, but advanced protections like MFA and account lock were missing

## Task 4 Update - Session Management 
- Basic output used session handling but lacked secure cookie settings
- Secure prompt added proper session configurations (HttpOnly, Secure)
- Session handling became more aligned with real-world security practices

## Task 5 Update - Access Control 
- Access control was not properly implemented in either output
- Both versions focused on authentication but not authorization
- Shows that LLMs may miss deeper security concepts without explicit guidance

## Task 6 Update - Cryptographic Practices 
- Basic output used hardcoded secrets, which is insecure
- Secure prompt moved secrets to environment variables
- Shows improvement in handling sensitive data

## Task 7 Update - Error Handling and Logging
- Basic output had simple error messages but no structured logging
- Secure output used safer, generic error responses
- Logging was still not explicitly implemented

## Task 8 Update - Data Protection
- Basic output exposed sensitive data through hardcoded secrets
- Secure output improved handling by using environment variables
- Data protection practices were partially improved with context

## Task 9 Update - System and Dependency Management
- Not addressed in either output
- Highlights limitation of prompt-based security

## Task 10 Update - File Handling
- No file handling present in both outputs
- Not relevant to current implementation

## Task 11 Update - Memory Management
- Not applicable to this level of application
- No changes observed

## Task 12 Update - Software Supply Chain Security
- Dependencies used without verification
- No improvement between outputs