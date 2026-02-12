# Functions

## Overview
Functions allow you to group reusable logic inside a script.
They help organise code, reduce repetition, and make scripts easier to maintain.

---

## Key Concepts

- Functions group related commands

- They can accept parameters

- They support local variables

- They improve readability and structure

---

## Basic Function Syntax

```bash
function_name() {
  # code block
}
```

### Example

```bash
hello_world() {
  echo "Hello World!"
}

hello_world
```

### Output

```bash
Hello World!
```

---

## Functions with Parameters
Functions can receive arguments just like scripts.

```bash
greet_person() {
  local name="$1"
  echo "Hello, $name!"
}

greet_person "Osman"
```

### Output

```bash
Hello, Osman!
```

- `$1` is the first argument passed to the function

- `local` keeps the variable scoped inside the function

---

## Positional and Special Parameters
Functions use the same parameter system as scripts.

| Parameter | Meaning             |
| --------- | ------------------- |
| `$0`      | Script name         |
| `$1`      | First argument      |
| `$2`      | Second argument     |
| `$#`      | Number of arguments |
| `$@`      | All arguments       |

### Example

```bash
print_args() {
  echo "Number of arguments: $#"
  echo "Script name: $0"
  echo "First argument: $1"
  echo "Second argument: $2"
  echo "All arguments: $@"
}

print_args "Alice" "Bob"
```

### Output

```bash
Number of arguments: 2
Script name: ./functions.sh
First argument: Alice
Second argument: Bob
All arguments: Alice Bob
```

---

## Key Takeaways

- Functions group reusable logic

- Parameters allow dynamic input

- `local` variables prevent conflicts

- Functions improve script structure and readability

---

## Reflection
Functions made scripts easier to organise and extend.
Instead of repeating commands, I could structure logic into reusable blocks, which is essential for larger automation scripts.
