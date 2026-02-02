# Working with Files

## Overview
Bash frequently interacts with files during automation.

---

## Key Concepts

- Files are first-class objects

- Existence checks matter

- Never assume state

---

## Example

```bash
if [ -f data.txt ]; then
  echo "Found"
fi
```

---

## Key Takeaways

- Always check before acting

- Defensive scripting prevents data loss

- File safety is critical

---

## Reflection
File checks reinforced cautious automation practices.
