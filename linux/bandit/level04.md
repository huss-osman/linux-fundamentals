# Bandit Level 4 → Level 5

## Goal
Find the only human-readable file in a directory.

## Solution
```bash
file inhere/*
cat inhere/-file07
```

## Explanation
The file command identifies file types by content.

## What I Learned
Never trust file names — inspect content instead.
