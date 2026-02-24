# Working with Files

## Overview
Bash frequently interacts with files during automation.

Reading files allows us to extract structured information from logs, configuration files, and datasets.

Writing files allows us to create, modify, and store data programmatically.

File checksums allow us to verify file integrity and authenticity by generating a unique cryptographic fingerprint for each file.

---

## Key Concepts

- Files are first-class objects
  
- Existence checks matter
   
- Never assume state
  
- Reading enables structured data extraction
   
- Writing enables data persistence
   
- Redirection operators control file output behavior
  
- Checksums verify file integrity and authenticity  

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

### Command Purpose

| Command | Purpose                               |
| ------ | ------------------------------------- |
| `read` | The `read` command reads input line by line. Inside a loop, it processes one line at a time from a file.|
| `IFS=` | Setting `IFS` (Internal Field Separator) to empty prevents trimming leading or trailing whitespace.     |
| `-r`   | The `-r` option prevents backslashes (`\`) from being interpreted as escape characters. Without `-r`, sequences like `\n` or `\t` could be modified. With `-r`, each line is read exactly as it appears in the file — which is essential when processing logs or raw data. |
| `done < "$file_path"`         | Redirects the file into the loop so `read` can process it line by line. |

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

> [!IMPORTANT]
> **This is safer when logging or accumulating output.**

---

# File Checksums

File checksums are cryptographic hashes that provide a unique fingerprint for a file.

Every file produces a checksum value. If even one character inside the file changes, the checksum will also change.

This allows us to:

- Verify file integrity  
- Confirm file authenticity  
- Detect tampering or corruption  

We can generate file checksums using algorithms such as MD5 and SHA-256.

> [!IMPORTANT]
> You must have `md5sum` and `sha256sum` installed on your system before using them in Bash functions.
> These utilities are commonly available on Linux systems and can be installed via your system package manager if missing.

---

### Generating an MD5 Checksum

```bash
calculate_md5sum() {
  local file_path="$1"
  md5sum "$file_path"
}

calculate_md5sum "read.txt"
```

---

### Generating a SHA-256 Checksum

```bash
calculate_sha256sum() {
  local file_path="$1"
  sha256sum "$file_path"
}

calculate_sha256sum "read.txt"
```

---

### Comparing Checksum Values

```bash
compare_checksums() {
  local checksum1="$1"
  local checksum2="$2"

  if [[ "$checksum1" == "$checksum2" ]]; then
    echo "Checksums match. File is intact."
  else
    echo "Checksums do not match. File integrity compromised."
  fi
}

compare_checksums "123" "123"
```

---

### Command Reference Table

## Command Reference

| Command | Purpose |
|----------|----------|
| `read` | Reads input line by line from standard input or a file. |
| `IFS=` | Prevents trimming of leading/trailing whitespace during reading. |
| `-r` | Prevents backslashes (`\`) from being interpreted as escape characters. Ensures raw input is preserved. |
| `done < "$file_path"` | Redirects file input into a loop for line-by-line processing. |
| `>` | Overwrites a file. Creates it if it does not exist. |
| `>>` | Appends to a file without removing existing contents. |
| `md5sum` | Generates an MD5 cryptographic hash of a file. |
| `sha256sum` | Generates a SHA-256 cryptographic hash of a file. |

---

## Key Takeaways

- Always check before acting
  
- Defensive scripting prevents data loss
  
- Use `>` carefully — it overwrites existing data
  
- Use `>>` to safely append data
  
- Use `read -r` to preserve raw file input
  
- Checksums provide cryptographic verification of file integrity
  
- Matching checksum values confirm authenticity
   
- File safety is critical in automation  

---

## Reflection
Working with file input and output strengthened safe automation practices.  
Understanding redirection, structured reading, and checksum verification highlights the importance of both data handling and data integrity in Bash scripting.
