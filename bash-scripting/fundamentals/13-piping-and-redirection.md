# Piping and Redirection

## Overview
Pipes and redirection control how data flows between commands in Linux.
They allow commands to be chained together, enabling powerful data processing and automation.

---

## Key Concepts

- `stdout` (standard output) can be sent to another command

- `stdin` (standard input) receives data from a pipe

- `stderr` (standard error) is handled separately

- Commands can be combined into pipelines

---

## Basic Examples

```bash
ls | grep txt
command > output.txt
```

- `|` sends output from one command into another

- `>` redirects output to a file

---

## Redirection Types

| Symbol | Purpose                               |
| ------ | ------------------------------------- |
| `>`    | Redirect stdout to a file (overwrite) |
| `>>`   | Redirect stdout to a file (append)    |
| `2>`   | Redirect stderr                       |
| `<`    | Use file as input                     |

### Example

```bash
ls > files.txt
```

Stores the output of `ls` inside `files.txt`.

---

## Piping Inside Functions
Pipes can also be used inside functions to perform advanced data operations and extract specific information.

### Example: Counting Files in a Directory

```bash
get_file_count() {
  local directory="$1"
  local file_count

  file_count=$(ls "$directory" | wc -l)

  echo "Number of files in $directory: $file_count"
}

get_file_count "./"
```

### Output

```bash
Number of files in ./: 29
```

This function:

- Lists files using `ls`

- Pipes the output into `wc -l`

- Stores the result in a variable

---

### Example: Searching Logs with a Pipeline

```bash
search_logs() {
  local search_term="$1"
  grep "$search_term" logs.txt | awk '{ print $2 }'
}

search_logs "ERROR"
```

### Output

```bash
12:05:12
12:12:36
```

This pipeline:

**1**. `grep` finds matching log lines

**2**. `awk` extracts the timestamp field

**3**. The result is printed or can be stored

---

## Why This Matters

- Piping within functions allows you to:

- Perform advanced data processing

- Extract specific information from command output

- Store processed results in variables

- Build reusable data-processing logic

You can combine pipes with:

- Other commands

- Functions

- Variables

- Conditionals

- Loops

This enables complex data manipulation pipelines in simple scripts.

---

## Key Takeaways

- Pipes connect command output to another command

- Redirection controls where output goes

- Functions can use pipelines internally

- Pipelines enable advanced data processing

- Linux tools are designed to be composable

---

## Reflection
Pipes transformed Linux from a set of individual commands into a flexible toolkit.
By chaining commands together, complex data processing becomes possible with very small scripts.
