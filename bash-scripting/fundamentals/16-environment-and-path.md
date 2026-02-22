# Environment Variables and PATH

## Overview
Environment variables influence **shell behaviour** and how programs run.
They store configuration values such as paths, user settings, and system preferences that scripts and processes can access.

One of the most important environment variables is `PATH`, which controls **where the shell looks for executable commands**.

Understanding environment variables is essential for writing portable, predictable, and system-aware scripts.

---

## Key Concepts

- Environment variables are **inherited by child processes**

- They store **configuration, system, and runtime information**

- `PATH` controls **command lookup locations**

- `export` makes variables **available globally**

- Environment variables are accessed using `$VARIABLE_NAME`

- Environment variables can be **assigned to local variables** for improved readability

- Modifying `PATH` allows scripts to run **from anywhere**

---

## Example

```bash
# Temporary PATH change (current session only)
export PATH="$PATH:/scripts"
```

This adds `/scripts` to the list of directories where the shell searches for commands.

---

## Reading Environment Variables

Environment variables can be accessed directly inside scripts.

```bash
echo "Home Directory: $HOME"
echo "Current User: $USER"
echo "OS Type: $OSTYPE"
```

### They can also be assigned to local variables for easier reuse:

```bash
my_home="$HOME"
my_user="$USER"
```

### This allows scripts to:

- Store important configuration data

- Reference system settings

- Adapt behaviour based on environment

---

---

## Standard Environment Variables

Standard environment variables provide **valuable insights into various aspects of the system, user, and runtime environment**.

They help create **more robust and adaptable scripts**.

Commonly used standard environment variables include:

- `$PATH` → System executable paths  
- `$LANG` → Default language settings  
- `$HOME` → User home directory  
- `$USER` or `$LOGNAME` → Current user  
- `$SHELL` → Current shell  
- `$PWD` → Current working directory  

You can access them by prefixing the variable name with `$`:

```bash
echo "$PATH"
echo "$LANG"
```

### They can also be assigned to local variables for clarity:

```bash
current_user="$USER"
default_language="$LANG"
```

### Assigning environment variables to local variables:

- Improves readability

- Makes scripts easier to maintain

- Reduces repetition

- Makes logic clearer

### Standard environment variables provide:

- essential runtime context
-  allows scripts to behave intelligently depending on the system they run on

---

## Changing PATH Permanently
You can add your own script directory to the system PATH so commands can run from anywhere.

### Step 1: Create a scripts directory

```bash
mkdir ~/my_scripts
```

---

### Step 2: Create a script

```bash
vi ~/my_scripts/hello_world.sh
```

### Add the interpreter and a simple command

```bash
#!/bin/bash
echo "Hello World!"
```

### Save and exit:

```ruby
:wq!
```

---

### Step 3: Make the script executable

```bash
chmod +x ~/my_scripts/hello_world.sh
```

Now the script is executable.

---

### Step 4: Add the directory to PATH permanently

### Append the directory to your shell configuration

```bash
echo 'export PATH=$PATH:~/my_scripts' >> ~/.zshrc
```

---

### Step 5: Reload the configuration

```bash
source ~/.zshrc
```

Now `~/my_scripts` is part of your PATH, and the script can run system-wide:

```bash
hello_world.sh
```

### Output:

```bash
Hello World!
```

---

## Key Takeaways

- Environment variables store system, user, and configuration data
  
- They provide runtime context that makes scripts adaptable
  
- `PATH` determines where commands are found
  
- Standard variables like `$PATH` and `$LANG` are commonly used
  
- Variables are accessed using the `$` prefix
  
- Assigning them to local variables improves clarity
  
- Incorrect PATH settings can cause “command not found” errors

---

## Reflection
Understanding environment variables and PATH clarified how the shell locates commands and shares configuration across processes.

Learning to read, export, and modify environment variables — especially `PATH` — made scripts more portable, adaptable, and reliable.

Recognising the value of standard environment variables helped bridge the gap between writing simple scripts and writing scripts that are aware of the system they run on.
