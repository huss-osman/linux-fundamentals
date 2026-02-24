# Running Scripts

## Overview
Bash scripts can be executed in multiple ways depending on file permissions and environment configuration. A script can be run directly if it has execute permissions and a valid shebang line, or it can be executed by explicitly invoking the Bash interpreter (for example, `bash script.sh`). The method used can affect how the script behaves, especially in relation to environment variables, the current shell session, and execution context. Understanding these differences ensures predictable and consistent script behavior across systems.

---

## Key Concepts

- Scripts must be executable
  
- PATH controls discoverability
  
- Execution context matters

---

## Commands

```bash
chmod +x script.sh
./script.sh
bash script.sh
```

---

## Key Takeaways

- Executable permission is required

- PATH allows scripts to behave like commands

- Relative vs absolute execution matters

---

## Reflection
Learning PATH-based execution made scripts feel like real system tools.
