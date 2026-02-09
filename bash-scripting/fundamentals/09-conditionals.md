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
  
- `then`, `elif`, and `else` control execution flow
  
- Conditionals can be **nested** to represent dependent logic

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

## Using `else`
`else` runs when the `if` condition is **false**.

```bash
age=15

if [ $age -gt 18 ]
then
  echo "You are an adult!"
else
  echo "You are not an adult!"
fi
```

Placement rules:

- `else` comes **after the** `then` **block**

- `else` does **not** have a condition

- `fi` still closes the entire block

---

## Using `elif` (Else If)
`elif` allows you to test **another condition** if the first one fails.

```bash
score=85

if [ $score -ge 90 ]
then
  echo "Excellent!"
elif [ $score -ge 80 ]
then
  echo "Good!"
else
  echo "Better luck next time!"
fi
```

Important rules for `elif`:

- `elif` **always includes a condition**

- `then` is **required after every** `elif`

- You can have **multiple** `elif` **blocks**

- `else` is optional

---

## Nested `if` Statements
Nested conditionals are used when **one condition depends on another**.
This is common in validation and eligibility checks.

```bash
age=18
grade=85

if [ $age -gt 18 ]
then
  echo "You are eligible based on age."

  if [ $grade -ge 80 ]
  then
    echo "You are eligible based on grade."
    echo "Congrats! You are eligible for the scholarship!"
  else
    echo "Sorry, your grade is not high enough."
  fi

else
  echo "Sorry, you are not eligible!"
fi
```

Key points about nesting:

- Inner `if` runs **only if the outer condition is true**

- Each `if` **must have its own** `fi`

- Indentation is not required, but **strongly recommended** for readability

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

## Key Takeaways

- Conditionals rely on exit codes

- Numeric and string comparisons use different operators

- Spacing inside `[ ]` is mandatory

- `then` is required for every `if` and `elif`

- Nested conditionals allow dependent logic

- Logical operators (`&&`, `||`) enable complex conditions

- Defensive checks prevent runtime errors

---

## Reflection
Conditionals made scripts more intelligent and robust by enabling branching logic, validation, and safe automation instead of blindly executing commands.
