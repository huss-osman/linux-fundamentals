# Variables

## Overview
Variables store values for reuse within a script.

---

## Key Concepts

- No spaces around `=`
- Variables are untyped
- Expansion uses `$`
- Variables can be inserted into strings (interpolation)

---

## Examples

```bash
greeting="Hello World!"
count=42
name="Osman"

echo $greeting
echo $count
echo "Hello, $name"
```

---

## Variable Interpolation
Interpolation means inserting a variable’s value into a string.

```bash
name="Osman"
echo "Hello, $name"
```

Output:

```bash
Hello, Osman
```

This only works inside double quotes.

```bash
name="Osman"

echo "Hello, $name"   # Works
echo 'Hello, $name'   # Does not expand
```

Output:

```bash
Hello, Osman
Hello, $name
```

---

## Key Takeaways

- Variables reduce duplication

- Use `$variable` to access values

- Double quotes allow interpolation

- Bash treats values as strings by default

## Reflection
Variables made scripts easier to extend without rewriting logic.
## 

