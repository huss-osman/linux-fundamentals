# Variables

## Overview
Variables store values for reuse within a script. They allow data such as text, numbers, command output, and user input to be saved and referenced later in execution. By assigning values to variables, scripts become more flexible, readable, and easier to maintain, since information can be updated in one place without modifying multiple lines of code. Variables are fundamental to controlling logic, managing state, and building dynamic Bash scripts.

---

## Key Concepts

- No spaces around `=`
- Variables are untyped
- Expansion uses `$`
- Variables can be inserted into strings (interpolation)

---

### Examples

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

### Output:

```bash
Hello, Osman
```

This only works inside double quotes.

```bash
name="Osman"

echo "Hello, $name"   # Works
echo 'Hello, $name'   # Does not expand
```

### Output:

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

---

## Reflection
Variables made scripts easier to extend without rewriting logic.
