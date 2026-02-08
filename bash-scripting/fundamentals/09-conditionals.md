# Conditionals

## Overview
Conditionals allow Bash scripts to make decisions by evaluating conditions and executing different code paths based on the result.
They are fundamental for automation, validation, and safe scripting.

---

## Key Concepts

- Conditionals are based on **exit status** (success = `0`, failure ≠ `0`)

- Conditions are tested using **test expressions** inside `[ ]`

- **Spacing matters** — brackets must be separated by spaces

- Conditions can be **numeric**, **string-based**, or **file-based**

---

## Basic Syntax

```bash
if [ condition ]
then
  # commands
fi
```

- if checks the condition

- then runs the code if true

- fi ends the conditional block

---

## Numeric Comparisons
Used when comparing numbers:

| Operator | Meaning               |
| -------- | --------------------- |
| `-eq`    | equal                 |
| `-ne`    | not equal             |
| `-lt`    | less than             |
| `-gt`    | greater than          |
| `-le`    | less than or equal    |
| `-ge`    | greater than or equal |

### Example

```bash
age=25

if [ $age -gt 18 ]
then
  echo "You are an adult!"
fi
```

---

## String Comparisons
Used when comparing text values:

| Operator | Meaning   |
| -------- | --------- |
| `==`     | equal     |
| `!=`     | not equal |

### Example

```bash
name="Osman"

if [ "$name" == "Osman" ]
then
  echo "Hello, Osman"
fi
```

Always **quote variables** in string comparisons to avoid unexpected errors.

---

## Logical Operators
Used to combine multiple conditions:

| Operator | Meaning |
|----------|---------|
| `&&`     | AND     |
| `\|\|`   | OR      |

### Example

```bash
grade=95

if [ $grade -ge 90 ] && [ $grade -le 100 ]
then
  echo "Excellent!"
fi
```

---

> [!IMPORTANT]
> **Spacing rules inside `[ ]` tests are important.**
> You must include spaces:
> - after `[`
> - before `]`
> - between operands and operators
>
> ❌ Incorrect:
> ```bash
> if[$age-gt18]
> ```
>
> ✅ Correct:
> ```bash
> if [ $age -gt 18 ]
> ```

## Key Takeaways

- Conditionals rely on exit codes

- Numeric and string comparisons use different operators

- Spacing inside [ ] is mandatory

- Logical operators (&&, ||) allow complex conditions

- Defensive checks prevent runtime errors

---

## Reflection
Conditionals made scripts more intelligent and robust by allowing logic, validation, and safer automation instead of blindly executing commands.
