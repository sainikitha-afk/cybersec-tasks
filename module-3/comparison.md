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