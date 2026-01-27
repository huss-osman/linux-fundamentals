# 📘 Bandit Level 7 → Level 8

## Goal
Find the password stored in data.txt next to the word "millionth".

## Solution

<img width="597" height="179" alt="Bandit Solution 7" src="https://github.com/user-attachments/assets/c11e543e-0ed5-4b53-b198-a7a608c88f04" />

```bash
ls
grep "millionth" data.txt
```

## Explanation
The grep command searches through a file and prints any line that matches a given pattern.

Since the password appears on the same line as the word "millionth", searching for that keyword directly reveals the password.

## What I Learned
Searching file contents with grep is faster and more effective than manually scanning large files.
