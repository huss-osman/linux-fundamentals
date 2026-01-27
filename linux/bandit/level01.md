# 📘 Bandit Level 1 → Level 2

## Goal
Read the password stored in a file named `-`.

<img width="402" height="188" alt="Bandit Solution 1" src="https://github.com/user-attachments/assets/a3a3e49f-8dc6-4ed5-be0f-0f527457cea7" />

## Solution
```bash
ls
cat ./-
```

## Explanation
Files starting with - are treated as command-line options.
Using ./ forces the shell to treat it as a filename.

## What I Learned
How the shell parses arguments and why relative paths matter.
