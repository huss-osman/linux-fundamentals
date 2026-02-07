# Comments

## Overview
Comments are ignored by Bash during execution, but they are critical for explaining intent, assumptions, and reasoning inside scripts.

Good comments make scripts easier to understand, maintain, and troubleshoot.

---

## Key Concepts

- Comments explain *why*, not just *what*
- Scripts are read more often than they are written
- Clear comments help prevent future mistakes

---

## Types of Comments in Bash

Bash mainly uses **single-line comments**.  
There is also a commonly used **multi-line comment technique**.

---

### 1. Single-Line Comments
Single-line comments begin with the `#` symbol.

Anything after `#` on that line is ignored by Bash.

```bash
# This is a single-line comment
echo "Hello"  # This comment is ignored
```

Use cases:

- Explaining what a command does

- Describing variables or logic

- Leaving notes for future edits

---

### 2. Multi-Line Comments (Workaround Method)

Bash does not have a true multi-line comment syntax.
However, a common workaround is to use a here-document with a no-op command like :.

```bash
: <<'COMMENT'
This is a multi-line comment.
None of these lines will execute.
Used for temporarily disabling blocks of code.
COMMENT
```

Use cases:

- Commenting out blocks of code

- Writing longer explanations

- Temporarily disabling script sections

---

## Key Differences

| Type                    | Syntax              | Native Support  | Typical Use                           |
| ----------------------- | ------------------- | --------------- | ------------------------------------- |
| Single-line             | `# comment`         | Yes             | Most comments in scripts              |
| Multi-line (workaround) | `: <<'TAG' ... TAG` | No (workaround) | Large blocks of text or disabled code |

---

## Key Takeaways

- Bash officially supports single-line comments

- Multi-line comments use a common workaround

- Comments improve maintainability and readability

- Essential for automation scripts and collaboration

---

## Reflection

Writing comments forced clearer thinking about script behaviour. Explaining the reasoning behind commands made scripts easier to understand and debug later.
