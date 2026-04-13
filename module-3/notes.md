# Module 3 - Context Loading

## What I understood

LLMs don’t always generate secure code by default. Most of the time, they give code that works but is not safe enough for real-world use.

They tend to follow common patterns from the internet, which are often incomplete or insecure.

---

## Why context matters

When I gave a basic prompt, the output was functional but missed important security aspects.

When I added proper context and constraints, the output improved significantly and included better practices.

---

## What context includes

- Security requirements (validation, hashing, etc.)
- Constraints (what not to do)
- Standards like OWASP
- Expected behavior of the system

---

## Key takeaway

Prompt alone is not enough.

Providing structured context helps the model generate more secure and production-ready code.