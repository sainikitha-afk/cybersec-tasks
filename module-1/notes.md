# Module 1 Notes - Overview of Security Concepts and Applications for Large Language Models

## How Do Large Language Models Create Code
The way LLM creates code is through identifying patterns in what's been learned from the training data set.
LLMs have no comprehension of what logic or security really is.
They will give you a completed piece of code with high confidence that may or may not actually be correct and may or may not be secure.

## The Major Risk
The most important point to keep in mind is do not trust LLM output blindly.

## Some of the Most Common Vulnerabilities Found when using LLMs include:
- Injection Flaws (SQL Injection, Command Injection)
- Hardcoded Secrets (i.e., API Keys, Passwords)
- Input Validation
- Insecure Defaults
- Using Outdated Libraries

## Key Takeaway
Make sure you always review, validate, and test any LLM-generated code before utilizing it.