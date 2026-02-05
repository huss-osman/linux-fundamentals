# Shell Options (set) Explained

## Overview
These options control **how Bash behaves while running a script**.
They’re mainly used to make scripts **safer, easier to debug, and more predictable**.

---

## Key Concepts

- Fail fast
  
- Catch undefined variables
  
- Debug execution

---

## Options

```bash
set -e
set -u
set -x
set -eux
```

---

## `set -e` → Exit on Error

## What it does
Stops the script immediately if any command fails (returns a non-zero exit status).

## Why it matters
Without `-e`, scripts can:

- Continue running after a failure

- Cause unexpected or dangerous behaviour

# Example

```bash
set -e

mkdir test
cd test
rm important_file   # If this fails, script stops here
echo "This will NOT run"
```

- Prevents silent failures
- Common in automation and CI/CD scripts

---

## set -u → Error on Undefined Variables

## What it does
Causes the script to fail if you use a variable that hasn’t been defined.

## Why it matters

Typos or missing values can cause:

- Unexpected empty values

- Dangerous commands running incorrectly

# Example

```bash
set -u

echo "$username"
```

If username is not defined → script exits.

- Protects against typos
- Makes scripts more predictable

---

## set -x → Debug Mode (Execution Trace)

## What it does
Prints each command before it executes.

## Why it matters

Lets you see:

- Command execution order

- Variable expansion

- Script flow step-by-step

# Example

```bash
set -x

name="Osman"
echo "Hello $name"
```

Output shows:

```bash
+ name=Osman
+ echo Hello Osman
```

- Extremely useful for debugging
- Helps understand script behaviour

---

## set -eux → Strict Mode (Combined)

## What it does

Combines:

- `-e` → exit on error

- `-u` → undefined variable protection

- `-x` → debug output

## Why it matters
Creates a strict, safe execution environment.

This is often called:

**Bash strict mode**

# Example

```bash
set -eux
```

- Stops scripts when something breaks
- Shows what is happening internally
- Prevents hidden bugs

---

## Extra Note → set -euo pipefail

## What it does 
`pipefail` : Makes pipelines fail if any command in the pipe fails.

---

## Key Takeaways

## When To Use Each

## Option and Purpose

- `-e` →	Fail fast on errors
- `-u` → Catch undefined variables
- `-x` → Debug script execution
- -`eux` → Safe + debug combined

---

## Reflection
There are different use cases for different (set) options. Knowing when to use each is essential when dealing with production systems.
