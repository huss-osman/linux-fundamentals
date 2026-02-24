# Variables

## Overview
**Variables** store values for reuse within a script. They allow data such as text, numbers, command output, and user input to be saved and referenced later in execution. For example, a variable can store text like `greeting="Hello World"`, a number such as `count=10`, or even the result of a command like `current_user=$(whoami)`. These values can then be accessed using `$greeting`, `$count`, or `$current_user`.

By assigning values to variables instead of hardcoding them throughout a script, the code becomes more flexible, readable, and easier to maintain, since updates only need to be made in one place. Variables are fundamental to controlling logic and managing state, such as using `age=18` in a conditional statement like `if [ "$age" -ge 18 ]; then ...`, allowing scripts to behave dynamically based on stored data.

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
