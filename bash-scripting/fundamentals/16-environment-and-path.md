# Environment Variables and PATH

## Overview
Environment variables influence **shell behaviour** and how programs run.
They are commonly used to store configuration values such as paths, user settings, and system preferences.

One of the most important environment variables is `PATH`, which controls **where the shell looks for executable commands**.

---

## Key Concepts

- Environment variables are **inherited by child processes**

- `PATH` controls **command lookup locations**

- `export` makes variables **available globally**

- Modifying `PATH` allows scripts to run **from anywhere**

---

## Example

```bash
# Temporary PATH change (current session only)
export PATH="$PATH:/scripts"
```

This adds `/scripts` to the list of directories where the shell searches for commands.

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

- `PATH` determines where commands are found

- Scripts must be **executable** to run

- `export` makes variables available globally

- Adding directories to PATH enables **system-wide command access**

- Incorrect PATH settings can cause **“command not found” errors**

---

## Reflection
Understanding environment variables and PATH explained why some commands work while others fail.
By managing PATH correctly, scripts become easier to run, share, and automate across systems.



