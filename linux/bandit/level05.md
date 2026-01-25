# Bandit Level 5 → Level 6

## Goal
Find a file that is:
- Human-readable
- 1033 bytes
- Not executable

## Solution
```bash
find . -type f -size 1033c ! -executable
cat ./maybehere07/.file2
```

## Explanation
find filters files using size, permissions, and type.

## What I Learned
How to search precisely using multiple conditions.
