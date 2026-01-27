# 📘 Bandit Level 9 → Level 10

## Goal
Extract the password from a file that contains mostly binary data.

## Solution
```bash
ls
strings data.txt | grep "==="
```

## Explanation
The file data.txt is not plain text — most of its contents are non-printable binary data.

• strings scans the file and extracts human-readable character sequences

• grep "===" filters the output to find the line containing the password pattern

This avoids opening or interpreting the binary file directly and focuses only on readable content.

## What I Learned
Even binary files can leak useful information — tools like strings help extract it safely and efficiently.
