# Bandit Level 2 → Level 3

## Goal
Read a file with spaces in its filename.

---

## Solution

<img width="660" height="189" alt="Bandit Solution 2" src="https://github.com/user-attachments/assets/127b29d1-97c2-429b-8202-0dcfb80757b8" />

```bash
ls
cat ./"--spaces in this filename--"
```

---

## Explanation
Quotes prevent the shell from splitting the filename into multiple arguments.

---

## What I Learned
Proper quoting is essential when dealing with spaces.
