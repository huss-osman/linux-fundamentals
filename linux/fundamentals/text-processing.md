# Text Processing

## Overview
Text processing is a core Linux skill used to search, filter, transform, and analyse text-based data such as logs, configuration files, and command output.

In DevOps environments, text processing tools are used daily to debug systems, extract information from logs, and automate workflows using pipelines.

---

## Key Concepts

### Streams and Pipelines
Most Linux commands read input from **standard input (stdin)** and write output to **standard output (stdout)**.

Pipes (`|`) allow the output of one command to become the input of another, enabling powerful command chains without temporary files.

---

### Pattern Matching vs Transformation
- **Pattern matching** finds specific text (e.g. `grep`)
- **Transformation** modifies or extracts text (e.g. `awk`, `sed`)

Understanding which tool to use depends on the goal: search, extract, or modify.

---

## Commands Practised

### grep
Searches for matching text patterns within files.

```bash
grep "error" /var/log/syslog
grep -r "TODO" ~/projects/
```

Useful for quickly locating errors, keywords, or configuration values.

### Advanced grep
Combines searching with counting or filtering.

```bash
grep -i "failed" /var/log/auth.log | wc -l
```

This counts failed login attempts by piping grep output into wc.

### awk
Processes structured text by columns.

```bash
ps aux | awk '{print $1, $11}'
```

Prints the user and command columns from running processes.

```bash
cat /etc/passwd | awk -F: '{print $1, $6}'
```

Extracts usernames and home directories using : as a field separator.

### sed
Performs text transformations and edits.

```bash
sed 's/old/new/g' file.txt
```

Replaces all occurrences of old with new.

```bash
sed -n '10,20p' file.txt
```

Prints only lines 10–20 from a file.

---

### Piping Chains
Combines multiple commands into a single workflow.

```bash
cat /var/log/syslog | grep "error" | awk '{print $1, $2, $3}' | sort | uniq
```

This extracts timestamps from error logs, sorts them, and removes duplicates.

---

## Reflection
Learning text processing made it clear how powerful small Linux tools become when combined.
Instead of writing scripts immediately, many problems can be solved by chaining simple commands — a key skill for debugging, automation, and working efficiently in production environments.
