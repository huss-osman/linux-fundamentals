# Bandit Level 1 → Level 2

## Goal
Read the password stored in a file named `-`.

---

## Solution

<p align="center">
<img width="1000" height="500" alt="Bandit Solution 1" src="https://github.com/user-attachments/assets/62b584ba-2a3f-4bb4-a04e-23c03094b13a" />
</p>

```bash
ls
cat ./-
```

---

## Explanation
Files starting with - are treated as command-line options.
Using ./ forces the shell to treat it as a filename.

---

## What I Learned
How the shell parses arguments and why relative paths matter.
