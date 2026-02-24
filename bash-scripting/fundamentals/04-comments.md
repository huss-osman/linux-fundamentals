# Comments

## Overview
**Comments** are ignored by **Bash** during execution, but they are essential for explaining the intent and reasoning behind code. They help document assumptions, clarify complex logic, and make scripts easier to understand and maintain over time.

Well-written comments improve collaboration and reduce confusion, especially as scripts grow in size and complexity. In **Bash**, comments begin with the `#` symbol and continue to the end of the line.

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
