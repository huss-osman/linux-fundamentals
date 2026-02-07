# Comments

## Overview
Comments are ignored by Bash but are critical for explaining intent and reasoning.

---

## Key Concepts

- Comments explain *why*, not *what*
- Scripts are read more than written
- Clear comments prevent future mistakes

---

## Types of Comments

### 1. Single-line comments
Single-line comments use the `#` symbol.

```bash
# This is a comment
```

Used for:

- Explaining commands

- Adding notes

- Clarifying logic

---

### 2. Multi-line comments

Bash does not have a built-in multi-line comment, but a simple workaround is:

```bash
: '
This is a multiline comment
None of this will run
'
```

Used for:

- Commenting out blocks of code

- Writing longer explanations

---

## Key Takeaways

- Single-line comments use `#`

- Multi-line comments use the `: ' ... '` workaround

- Comments improve maintainability

- Essential for automation scripts

---

## Reflection

Writing comments forced clearer thinking about script behaviour.
