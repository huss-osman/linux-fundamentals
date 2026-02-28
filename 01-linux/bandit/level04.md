# Bandit Level 4 → Level 5

## Goal
Find and read the only human-readable file inside the inhere directory.

---

## Solution

<img width="553" height="522" alt="Bandit Solution 4" src="https://github.com/user-attachments/assets/acfd311c-941b-47fd-a516-353d49578f98" />

```bash
cd inhere
file ./*
cat ./-file07
```

---

## Explanation
The directory contains multiple files with similar names, but most of them are binary data.

• file ./* inspects each file and identifies its actual content type, not just the filename.

• Only one file is reported as ASCII text, meaning it is human-readable.

• That file is -file07.

Because the filename starts with a dash (-), it must be accessed using a relative path (./) so the shell does not treat it as an option.

---

## What I Learned
• File names cannot be trusted to indicate file contents.

• The file command is essential for identifying unknown data.

• Files starting with - must be referenced carefully using ./.
