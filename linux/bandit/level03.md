# 📘 Bandit Level 3 → Level 4

## Goal
Find and read a hidden file.

<img width="500" height="200" alt="Bandit Solution 3" src="https://github.com/user-attachments/assets/c83ed10f-45d6-454f-a615-ea718b9690c7" />

## Solution
```bash
ls
cd inhere
ls -a
cat ./...Hiding-From-You
```

## Explanation
Hidden files start with . require -a to be listed.

## What I Learned
Linux hides files by convention, not security.
