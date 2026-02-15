# Exit Codes

## Overview
Exit codes indicate whether a command or script **succeeded or failed** and are the foundation of error handling in Bash.

Effective error handling is about **foreseeing where things can go wrong** and **taking appropriate action**, rather than letting scripts crash or continue in an invalid state.

By checking exit codes and validating conditions early, scripts become safer, more predictable, and easier to debug.

---

## Key Concepts

- An exit code of `0` means **success**

- Any **non-zero** exit code indicates **failure**

- Exit codes are returned automatically by commands

- Scripts **can define their own exit codes** using `exit`

### Exit codes control execution flow in:

- conditionals

- functions

- pipelines

- automation and CI/CD

---

## Example

### Failing Explicitly with an Exit Code

```bash
echo "Something went wrong"
exit 1
```

This tells the shell (and any calling process) that the script failed.

---

### Example: Preventing Division by Zero

```bash
num1=10
num2=0

if [ $num2 -eq 0 ]
then
  echo "Error: Division by zero is not allowed"
  exit 1
fi

result=$((num1 / num2))
echo "The result is: $result"
```

Here:

- The script **detects an invalid condition**

- Prints a clear error message

- Exits safely with a **non-zero exit code**

- Prevents undefined or misleading output

---

## Checking Exit Codes
The special variable `$?` stores the exit code of the **last command executed**.


```bash
some_command
echo "Exit code: $?"
```

This is commonly used after:

- function calls

- validation checks

- critical commands

---

## Key Takeaways

- Exit codes indicate success (`0`) or failure (non-zero)

- Scripts should validate inputs before risky operations

- Explicit `exit` statements improve safety and clarity

- Exit codes are essential for automation and CI/CD

- Silent failures are dangerous and hard to debug

---

## Reflection
Understanding exit codes clarified how commands and scripts communicate success and failure.
By handling errors explicitly, scripts became more reliable, safer to run, and easier to reason about—especially in automation and production environments.
