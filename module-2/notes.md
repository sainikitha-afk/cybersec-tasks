# Module 2 Notes - Secure Prompting Techniques

## My Understanding

It is important to remember that LLMs don't generate code that is secure by default. If your prompt is vague, you will normally receive a response that is generic and mostly insecure. This, of course, indicates that the quality of your prompt will directly influence the safety of the code. 

When creating prompts for LLMs, I will not only request functionality but I will also clarify what constitutes secure expectations of the model. 

--- 

## Secure Prompt Pattern

To accomplish the above, I have attempted to establish my structured methodology to follow when creating prompts: 

1. State clearly the technology stack you are using.  
   Identify the programming language, framework and version (e.g., Python Flask, Node Express). 

2. Include security requirements.  
   Clearly identify what security requirements the model should consider.  
   (input validation, hashing, parameterized queries)

3. Include constraints.  
   State what should NOT be used.  
   (no eval(), no hardcoded credentials, no disabling TLS) 

4. Role-based prompting.  
   By prompting the model as a "security engineer," it helps produce better results. 

5. Referencing Standards.  
   By referencing OWASP, it directs the model towards better practices.

6. Ask for Explanation.  
   This requires the LLM to explain why it made certain recommendations versus just providing code. 

--- 

## Main Point

When I simply provide the model with a prompt "build login system," the model will produce insecure output.

When I provide proper guidance to the model, I produce much more production-like and safe results.