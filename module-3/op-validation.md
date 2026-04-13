## Output Encoding

- Never display raw user input directly
- Always escape/encode data before rendering in UI
- Prevent XSS attacks by treating all output as untrusted
- Use built-in escaping features (like Jinja escape)
- Ensure proper character encoding (UTF-8)

## Comparison
- Output encoding was not explicitly handled in the basic output
- Even in improved output, it was not clearly enforced
- Shows that some security aspects still need manual review

## Example
- `Example:
{{ user_input | escape }}`

- Output encoding ensures user input is safely displayed without executing malicious scripts like XSS.