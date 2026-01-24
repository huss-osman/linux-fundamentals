# Data Redirection and Pipes

## Overview
Linux allows command output and input to be redirected between files and programs.  
This makes it possible to build powerful command-line workflows.

## Key Concepts

### Standard Streams
- **stdin (0)** – input
- **stdout (1)** – output
- **stderr (2)** – error output

## Common Operators

- `>` – redirect output to a file (overwrite)
- `>>` – append output to a file
- `2>` – redirect errors
- `|` – pipe output to another command

## Examples

- `ls > files.txt`
- `echo "Hello" >> notes.txt`
- `command 2> error.log`
- `cat file.txt | grep word`

## Reflection
Using redirection and pipes made it easier to chain commands together and process output efficiently.
