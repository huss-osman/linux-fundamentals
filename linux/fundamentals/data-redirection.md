# Data Redirection and Pipes

## Overview

**Linux** allows command output and input to be redirected between files and programs, enabling flexible control over how **data flows** through the system. Instead of simply printing results to the screen, commands can send output to files, receive input from files, or pass data directly into other commands.

This capability makes it possible to build powerful **command-line workflows** using **redirection** and **pipelines**, forming the foundation for automation, log processing, and efficient text manipulation.

---

## Key Concepts

### Standard Streams
- **stdin (0)** – input
- **stdout (1)** – output
- **stderr (2)** – error output

---

## Common Operators

- `>` – redirect output to a file (overwrite)
- `>>` – append output to a file
- `2>` – redirect errors
- `|` – pipe output to another command

---

## Examples

- `ls > files.txt`
- `echo "Hello" >> notes.txt`
- `command 2> error.log`
- `cat file.txt | grep word`

---

## Reflection
Using **redirection** and **pipes** made it easier to chain commands together and process output efficiently. Understanding how data flows between commands improved my ability to build structured, reusable command-line workflows instead of running isolated commands.
