# Environment Variables and PATH

## Overview
Environment variables influence shell behaviour and program execution.

---

## Key Concepts

- Inherited by child processes
  
- PATH controls command lookup
  
- Exporting makes variables global

---

## Example

```bash
export PATH="$PATH:/scripts"
```

---

## Key Takeaways

- PATH affects script execution

- Environment leaks cause bugs

- Explicit configuration is safer

---

## Reflection
Understanding PATH explained many “command not found” issues.
