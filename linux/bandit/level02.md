# 📘  Bandit Level 2 → Level 3

## Goal
Read a file with spaces in its filename.

## Solution

<img width="500" height="200" alt="Bandit Solution 2" src="https://github.com/user-attachments/assets/bd79461f-1685-49e2-be97-07e383fe5935" />

```bash
ls
cat ./"--spaces in this filename--"
```

## Explanation
Quotes prevent the shell from splitting the filename into multiple arguments.

## What I Learned
Proper quoting is essential when dealing with spaces.
