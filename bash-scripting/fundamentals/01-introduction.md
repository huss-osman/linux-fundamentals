# Introduction to Bash

## Overview
Bash (Bourne Again Shell) is the default command-line shell on most Linux systems.  
It allows users to interact with the operating system, run commands, and automate tasks through scripts.

A **Bash script** is simply a file containing a sequence of commands that are executed automatically.

In DevOps environments, Bash is widely used for:

- Automation
- System configuration
- CI/CD pipelines
- Troubleshooting and maintenance tasks

---

## Why Learn Bash?

Bash scripting is an essential skill for working with Linux systems.

It allows you to:

- **Automate repetitive tasks** and save time
- **Manage systems efficiently** through scripts
- **Reduce manual errors** by standardising processes
- **Understand how automation tools work under the hood**

---

## Getting Started

### The Shebang
Most Bash scripts begin with a **shebang**:

```bash
#!/bin/bash
```

This tells the system to use the Bash interpreter to run the script.

---

## Running a Script

### 1. Make the script executable:

```bash
chmod +x script.sh
```

### 2. Run the script:

```bash
./script.sh
```

---

## Core Bash Concepts

### Variables
Variables store values that can be reused.

```bash
name="Ahmed"
echo "Hello, $name"
```

### Comments
Comments are used to explain what your script does.

```bash
# This line prints a greeting
echo "Hello"
```

### Conditionals
Conditionals allow scripts to make decisions.

```bash
if [ "$name" = "Alice" ]; then
  echo "Hi Alice!"
fi
```

### Loops
Loops repeat actions multiple times.

```bash
for i in 1 2 3; do
  echo "Number $i"
done
```

### Functions
Functions group commands so they can be reused.

```bash
greet() {
  echo "Hello, $1!"
}

greet "Alice"
```

### User Input
Scripts can accept input from users.

```bash
read -p "Enter your name: " name
echo "Hello, $name!"
```

### Example Script

```bash
#!/bin/bash

name="Osman"
echo "Hello, $name"
```

---

## Best Practices

- Start with small, simple scripts

- Use clear and meaningful variable names

- Test scripts frequently

- Add comments to explain logic

---

## Key Takeaways

- Bash is fundamental to Linux automation

- Scripts execute commands exactly as they would in the terminal

- Understanding Bash improves system-level thinking and troubleshooting skills

--- 

## Reflection

Learning Bash scripting helped me understand how automation works at the system level.
It made repetitive tasks easier to handle and provided insight into how CI/CD pipelines and infrastructure scripts operate behind the scenes.
