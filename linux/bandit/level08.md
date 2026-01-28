# Bandit Level 8 → Level 9

## Goal
Find the only line in data.txt that occurs once.

## Solution

<img width="517" height="180" alt="Bandit Solution 8" src="https://github.com/user-attachments/assets/9439df41-5fb1-44f3-a90e-37e6232bcb59" />

```bash
ls
sort data.txt | uniq -u
```

## Explanation
The uniq command detects duplicate lines, but it only works correctly on sorted input.

• sort arranges identical lines next to each other

• uniq -u prints only lines that appear exactly once

By combining them with a pipe, we ensure uniq can correctly identify the unique line.

## What I Learned
The order of commands in a pipeline matters — each tool expects input in a specific format.
