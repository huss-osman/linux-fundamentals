# Working with Files

## Overview
Bash frequently interacts with files during automation.

Reading files allows us to access and extract valuable information from logs, configuration files, and datasets.

Writing files within functions allows us to create, modify, and store information in various formats. Together, reading and writing form the foundation of file-based automation.

---

## Key Concepts

- Files are first-class objects

- Existence checks matter

- Never assume state

- Reading enables data extraction

- Writing enables data persistence

---

## Reading Files

### Example: Reading a File Line by Line

```bash
read_file() {
  local file_path="$1"

  while IFS= read -r line; do
    echo "$line"
  done < "$file_path"
}

read_file "./log.txt"
```

### Explanation

- `read`
The `read` command reads input line by line. Inside a loop, it processes one line at a time from a file.

- `IFS=`
Setting `IFS` (Internal Field Separator) to empty prevents trimming leading or trailing whitespace.

- `-r`
The `-r` option prevents backslashes (`\`) from being interpreted as escape characters.
Without `-r`, sequences like `\n` or `\t` could be modified.
With `-r`, each line is read exactly as it appears in the file — which is essential when processing logs or raw data.

- `done < "$file_path"`
Redirects the file into the loop so `read` can process it line by line.

---

## Writing Files
Writing files within functions allows us to create, modify, and store information programmatically.

### Example: Overwriting a File

```bash
write_to_file() {
  local file_path="$1"
  local data="$2"

  echo "$data" > "$file_path"
}

write_to_file "read.txt" "Hello World"
```

### Explanation

- `>` (single greater-than operator)
This is the **overwrite operator**.

- Creates the file if it does not exist
  
- Replaces the file’s contents if it already exists

> [!IMPORTANT]
> **Be careful: it will erase previous contents.**

---

### Example: Appending to a File

```bash
write_to_file() {
  local file_path="$1"
  local data="$2"

  echo "$data" >> "$file_path"
}

write_to_file "read.txt" "Hello"
```

### Explanation

- `>>` (double greater-than operator)
This is the **append operator**.

- Creates the file if it does not exist

- Adds data to the end of the file if it already exists

- Preserves previous contents

This is safer when logging or accumulating output.

---

## Key Takeaways

- Always check before acting

- Defensive scripting prevents data loss

- Use `>` carefully — it overwrites existing data

- Use `>>` to append without destroying previous contents

- Use `read -r` to preserve raw file input

- File safety is critical

---

## Reflection
Working with file input and output reinforced cautious automation practices. Understanding redirection operators and safe reading techniques is essential for writing reliable Bash scripts.
