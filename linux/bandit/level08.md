# Bandit Level 8 → Level 9

## Goal
Find the unique line in a file.

## Solution
```bash
sort data.txt | uniq -u
```

## Explanation
uniq requires sorted input to work correctly.

## What I Learned
Pipeline order matters.
