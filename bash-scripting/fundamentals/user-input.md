# User Input

## Overview
Scripts can accept interactive input using `read`.

---

## Key Concepts

- Input comes from stdin
  
- Validation is required
  
- Interactive scripts block execution

---

## Example

```bash
read -p "Enter name: " name
```

## Key Takeaways

- Interactive scripts need care

- Validation prevents bad data

- CI scripts should avoid prompts

## Reflection
User input highlighted the difference between automation and interaction.
