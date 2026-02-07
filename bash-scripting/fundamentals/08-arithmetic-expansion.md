# Arithmetic Expansion

## Overview
Bash supports basic arithmetic using **arithmetic expansion**.  
This allows scripts to perform calculations using integer values.

---

## Key Concepts

- Bash performs **integer math only** (no decimals by default)
- Arithmetic requires special syntax
- Calculations are separate from normal string operations

---

## Syntax

```bash
result=$((5 + 3))
```

---

## Understanding `$(( ))`

Arithmetic expansion uses:

```bash
$(( expression ))
```

### What each part means

- `$`
Tells Bash to **expand** or evaluate the expression.

- `(( ))`
Indicates that the content inside is **arithmetic**, not a string.

So this:

```bash
result=$((num1 + num2))
```

Means:

“Take the values of num1 and num2, add them, and store the result.”

---

## Examples

### Basic addition

```bash
num1=5
num2=10

result=$((num1 + num2))

echo "The sum is $result"
```

---

### Rectangle example

```bash
length=5
width=10

area=$((length * width))
perimeter=$((2 * (length + width)))

echo "Rectangle area: $area"
echo "Rectangle perimeter: $perimeter"
```

---

## Key Takeaways

- Arithmetic requires `$(( ))`

- `$` triggers expansion (evaluation)

- `(( ))` tells Bash to treat the content as math

- Suitable for simple integer calculations

---

## Reflection
Arithmetic expansion clarified why normal math syntax fails in Bash and how Bash distinguishes between strings and numeric expressions.
