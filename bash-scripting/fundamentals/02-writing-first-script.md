# Writing Your First Script

## Overview
A Bash script is a plain text file containing a sequence of commands that are executed in order by the shell. Instead of typing commands manually each time, scripts allow tasks to be automated consistently and repeatably. They are commonly used for system administration, file management, deployment processes, and workflow automation. By organizing commands into a script, complex or repetitive operations can be executed efficiently with a single command. 

Before a script can be run directly, it must have execute permissions, which can be added using `chmod +x script.sh`. Once executable, the script can be run with `./script.sh`.

---

## Key Concepts

- Scripts execute top to bottom
  
- Commands behave the same as in the terminal
  
- Scripts must be executable to run directly

---

## Example

```bash
#!/bin/bash
echo "Hello World"
```

---

## Key Takeaways

- Bash scripts are plain text

- Execution order matters

- Scripts reduce manual repetition

---

## Reflection
Writing a first script made Bash feel practical rather than abstract.
