# Shell Options (`set`) Explained

## Overview
The `set` command controls **how Bash behaves while running a script**.
It is mainly used to make scripts **safer, easier to debug, and more predictable**.

### These options help:

- Stop scripts when errors occur

- Detect uninitialized variables

- Trace command execution for debugging

- Prevent hidden failures in pipelines

---

## Key Concepts

- Fail fast on errors

- Catch undefined variables

- Debug execution flow

- Combine options for safer scripts

---

## Common Options

```bash
set -e
set -u
set -x
set -eux
```

---

## `set -e` → Exit on Error

### What it does
Stops the script immediately if any command returns a **non-zero exit code**.

### Why it matters

- Without `-e`, scripts can:

- Continue running after a failure

- Produce incorrect results

- Cause dangerous behaviour

### Example

```bash
set -e

echo "Before the script"
nonexistentcommand
echo "After the script"
```

### Output:

```bash
Before the script
./script.sh: line X: nonexistentcommand: command not found
```

- The script **stops immediately** and never prints the final line.

### Important note
Not all non-zero exit codes are critical errors.

### Sometimes you may:

- Expect a non-zero exit code

- Want to handle it manually

In those cases, **don’t use** `set -e`.
Handle the error with conditionals instead.

---

## `set -u` → Error on Undefined Variables

### What it does
Stops the script if it tries to use a **variable that has not been defined**.

### Why it matters

### Prevents:

- Typos in variable names

- Missing input values

- Dangerous commands with empty variables

### Example

```bash
set -u

echo "The value of variable X is: $X"
```

### Output:

```bash
./script.sh: line X: X: unbound variable
```

- This prevents scripts from running with **missing or incorrect data**.

- Using `set -u` is a **great practice**, especially in scripts that depend on required variables.

---

## `set -x` → Debug Mode (Execution Trace)

### What it does
Prints each command **before it is executed**.

### Why it matters

### Helps you see:

- Execution order

- Variable expansion

- Script flow step-by-step

### Example

```bash
set -x

echo "This is a test."
X=10
echo "The value of X is: $X"
```

### Output:

```bash
+ echo 'This is a test.'
This is a test.
+ X=10
+ echo 'The value of X is: 10'
The value of X is: 10
```

- Each command is printed with a `+` before execution.

---

## `set +x` → Disable Debug Mode
You can stop debug tracing after a certain point.

### Example

```bash
set -x
echo "Debugging this part"

set +x
echo "No longer in debug mode"
```

- After `set +x`, commands **no longer appear with** `+`.

### This is useful when:

- You only want to debug a section

- You want to hide sensitive commands

---

## `set -eux` → Strict Mode (Combined)

### What it does

### Combines:

- `-e` → exit on error

- `-u` → fail on uninitialized variables

- `-x` → debug output

### Example

```bash
set -eux

echo "This is a test."
X=10
echo "The value of X is: $X"
nonexistentcommand
```

### Behaviour:

- Commands are printed before execution

- Script stops on error

- Script stops if variables are uninitialized

### If `X` is removed:

```bash
./script.sh: line X: X: unbound variable
```

- The script stops immediately.

### Why this is useful

### `set -eux`:

- Makes scripts easier to debug

- Prevents hidden errors

- Stops execution when something breaks

This creates a **strict and safe execution environment**.

However, it should be used **thoughtfully**, depending on the script’s requirements.

---

## Equivalent `set -o` Options
Bash also provides long-form versions of these options.

### `set -o nounset` (same as `set -u`)

```bash
set -o nounset
echo "$X"
```

### Output:

```bash
X: unbound variable
```

---

### `set -o errexit` (same as `set -e`)

```bash
set -o errexit

echo "This is a test"
nonexistentcommand
echo "This will not run"
```

- The script stops at the failing command.

---

### `set -o pipefail`
Makes a pipeline fail if **any command** in the pipeline fails.

### Example

```bash
set -o pipefail

cat nonexistentfile | grep "something"
```

### Output:

```bash
cat: nonexistentfile: No such file or directory
```

- The pipeline fails immediately instead of continuing.

- This is extremely useful when chaining commands together.

---

## Key Takeaways

- `set -e` → Fail fast on errors

- `set -u` → Catch undefined variables

- `set -x` → Debug execution

- `set -eux` → Strict, safe, and debuggable scripts

- `set +x` → Stop debug tracing

- `set -o nounset` = `-u`

- `set -o errexit` = `-e`

- `set -o pipefail` → Fail pipelines correctly

These options are tools at your disposal.
Use them thoughtfully based on the needs of your script.

They help you write **safer, more reliable, and easier-to-debug scripts**.

---

## Reflection
The `set` options showed how much control you have over script behavior. By combining safety and debugging flags, such as `set -e`, `set -u`, or `set -x`, scripts become more predictable, easier to troubleshoot, and far less likely to fail silently in production environments.
