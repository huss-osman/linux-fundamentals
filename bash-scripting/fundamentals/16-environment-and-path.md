# Environment Variables and PATH

## Overview
Environment variables influence **shell behaviour** and how programs run.
They are commonly used to store configuration values such as paths, user settings, and system preferences.

One of the most important environment variables is `PATH`, which controls **where the shell looks for executable commands**.

---

## Key Concepts

- Environment variables are **inherited by child processes**

- `PATH` controls **command lookup locations**

- `export` makes variables **available globally**

- Modifying `PATH` allows scripts to run **from anywhere**

---

## Example

```bash
# Temporary PATH change (current session only)
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
