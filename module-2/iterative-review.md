# Iterative feedback and revision

## What I did

I performed a two-part validation on my code, rather than just accepting the first output.

---

## Part 1: Write the Code

Prompt:
"Create a simple login application with Flask."

---

## Part 2: Have the same code reviewed

Prompt:
"Please review the code above as a security engineer and point out any vulnerabilities and how to fix them."

---

## Result

The transformer returned:

- no password hashing
- no input validation
- suggested a better way

---

## Chain-of-thought prompting

By using:

"Write down every step as if you are an attacker"; 

this created more detailed responses and more realistic.

---

## Few-shot prompting

I also used the following examples:

Examples:
Insecure
- a password stored in plaintext
- no form validation

Secure
- a hashed password
- input validation

This prompted the transformer to follow a more secure structure for the rest of the example.

---

## Last word

A model is not always accurate on the first try.

Using:

- prompts
- a review step
- examples

has improved the security and usefulness of the model's output.