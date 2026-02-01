<img width="1000" height="500" alt="imageedit_2_6245302199" src="https://github.com/user-attachments/assets/4085aa7d-12a2-485b-ac9f-04c04507280e" />

# Bash Scripting

## What is Bash?

**Bash (Bourne Again Shell)** is a command-line shell and scripting language used to interact with Linux systems and automate tasks.

In DevOps, Bash is commonly used to:
- Automate repetitive system tasks
- Glue tools together in CI/CD pipelines
- Manage files, processes, and services
- Perform quick system checks and fixes

Bash scripts execute Linux commands using the same logic you use in the terminal — but in a reusable, automated form.

---

## The Shebang Line

Every Bash script should start with a **shebang**:

```bash
#!/bin/bash
```

This tells the system which interpreter should execute the script.

If a script doesn’t run as expected, always verify the shebang line is present and correct.

---

## Basic Data Types

Bash primarily works with three types of data:

## Strings

Text values enclosed in quotes:

```bash
message="Hello World"
```

---

## Numbers

Numeric values without quotes:

```bash
count=10
```

"`10`" is a string
`10` is a number

---

## Booleans

Booleans are evaluated implicitly through command success or failure:

• 0 → success (true)

• non-zero → failure (false)

---

## Variables

Variables store values so they can be reused throughout a script.

```bash
#!/bin/bash

name="John Doe"
age=30

echo $name
echo $age
```

Rules:

• No spaces around =

• Access variables using $variable_name

---

## Script Parameters
Parameters allow scripts to accept input from the command line.

Parameter	Meaning:

`$0` - Script name
`$1` - First argument
`$2` - Second argument
`$#` - Number of arguments
`$@` - All arguments

Example:

```bash
#!/bin/bash

echo "Name: $1"
echo "Age: $2"
```

Run:

```bash
./example.sh John 30
```

Output:

```bash
Name: John
Age: 30
```

---

## Arithmetic in Bash
Bash performs arithmetic using (( )):

```bash
result=$((5 + 3))
echo $result
```

Arithmetic expressions must be wrapped in double parentheses.

---

## Folder Purpose

**bashbattlearena/**  
Hands-on Bash scripting challenges organised by difficulty levels  
(Level 1 – Beginner fundamentals → Advanced scripting)

➡️ [Open Bash Battle Arena](./bashbattlearena)

---

## Why Bash Matters in DevOps
Bash scripting enables you to:

• Automate system administration tasks

• Reduce manual errors

• Understand what automation tools are doing under the hood

• Build reliable pipelines and troubleshooting workflows

• A strong Bash foundation supports Docker, Kubernetes, Terraform, and cloud automation.
