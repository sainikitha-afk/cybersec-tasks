# Examples of Secure Prompting

## Prompt: Basic Prompt

"Make a login system in Flask."

### Issues:
- There is no guarantee that any password will be hashed.
- No requirements for validating data entered by an end user.
- There are easy ways to create insecure code.

---

## Prompt: More Secure Version

"You are a senior security engineer; create a login system that uses Python Flask.

The system must:
- Hash all passwords using bcrypt.
- Use parameterized queries to protect against SQL injection.
- Sanitize and validate everything that is entered into the system from an end user.
- Do not use any credentials that are stored directly in the code.
- Do not use eval() anywhere in the code.
- Adhere to OWASP secure coding standards.

In addition, you must explain the purpose of each of the security measures that you have implemented."

---

## What did I notice?

With the second set of prompts:
- The code that was produced was safer.
- All information that was entered into the system will be validated and hashed.
- Commonly made mistakes were avoided.
- There was a justification for all measures that were taken.

It was surprising how small modifications to the prompts produced such a large change in the quality of the output generated through the use of these new security requirements.