# Functions

## Overview
Functions allow you to group reusable logic inside a Bash script.
They help organise code, reduce repetition, and make scripts easier to read, test, and maintain.

Functions are essential once scripts grow beyond a few lines and are heavily used in automation and validation workflows.

---

## Key Concepts

- Functions group related commands into reusable blocks

- They can accept **positional parameters** (`$1`, `$2`, …)

- Functions support **local variables** using `local`

- Functions return **exit codes** to signal success or failure

- Clear function boundaries improve script structure and safety

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

## Handling Bad Data

- In real scripts, functions should not blindly accept input
  
- They should **validate, sanitize**, and **return clear exit codes**
  
- This prevents unexpected behaviour and makes scripts safer and easier to debug

---

## Using Exit Codes for Validation
Functions can return **exit codes** to signal success or failure:

- `0` → success

- non-zero → error

Example: validating user age.

```bash
validate_age() {
  local age=$1

  if [[ ! $age =~ ^[0-9]+$ ]]; then
    echo "Invalid age. Please provide a numeric value."
    return 1
  fi

  if (( age < 18 )); then
    echo "Sorry, you must be at least 18 years old."
    return 1
  fi

  echo "Congratulations! You are eligible."
  return 0
}

echo "Please enter your age:"
read user_age

validate_age "$user_age"
exit_code=$?

if (( exit_code != 0 )); then
  echo "Input validation failed."
else
  echo "Validation passed!"
fi
```

### Example Output
Invalid input:

```bash
Please enter your age:
17
Sorry, you must be at least 18 years old.
Input validation failed.
```

### Valid input:

```bash
Please enter your age:
19
Congratulations! You are eligible.
Validation passed!
```

---

## Sanitisation with Parameter Expansion
Bash supports **pattern substitution** to clean input.

### Example: remove all non-alphanumeric characters.

```bash
sanitize_string() {
  local input=$1
  local sanitized_input=${input//[^a-zA-Z0-9]/}
  echo "$sanitized_input"
}

echo "Please enter a username:"
read input_username

sanitized_username=$(sanitize_string "$input_username")

echo "Sanitized username: $sanitized_username"
```

### Example Output

```bash
Please enter a username:
3o21r/-
Sanitized username: 3o21r
```

---

## Key Takeaways

- Functions group reusable logic

- Parameters allow dynamic input

- `local` variables prevent scope conflicts

- Exit codes communicate success or failure

- Validation prevents bad data from breaking scripts

- Sanitisation cleans and normalises user input

- Functions improve structure, safety, and readability

---

## Reflection
Functions made scripts easier to organise and extend.
Instead of repeating commands, I could structure logic into reusable, testable blocks.

Learning to validate input, use exit codes, and sanitise data showed how real-world automation scripts must be defensive and predictable especially in production environments.
