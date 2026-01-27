# 📘 Bandit Level 5 → Level 6

## Goal
Find the password stored in a file that meets all of the following conditions:

• Human-readable

• Exactly 1033 bytes in size

• Not executable

• Located somewhere under the inhere directory

## Solution

<img width="801" height="338" alt="Bandit solution 5" src="https://github.com/user-attachments/assets/2f389ad0-61d0-4cc1-bdd9-19ad7f296fd0" />

```bash
ls
cd inhere
ls
find . -type f -size 1033c ! -executable
cat ./maybehere07/.file2
```

## Explanation
The inhere directory contains many subdirectories and files, making manual inspection inefficient.

The find command is used to filter files based on multiple conditions at once:

• -type f → only regular files

• -size 1033c → files exactly 1033 bytes in size

• ! -executable → exclude executable files

This narrows the search to a single file:
./maybehere07/.file2

Once identified, the file is read using cat to reveal the password.

## What I Learned

• find is one of the most powerful Linux tools for precise file searching.

• Multiple conditions can be combined to quickly locate specific files.

• Searching by attributes is far more reliable than guessing filenames.
