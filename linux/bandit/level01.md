# Bandit Level 1 → Level 2

## Goal
Read the password stored in a file named `-`.

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
