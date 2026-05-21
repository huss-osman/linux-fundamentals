# Bandit Level 7 → Level 8

## Goal

Find the password stored in `data.txt` next to the word `"millionth"`.

> [!NOTE]
> Large text files can contain thousands of lines, making manual searching inefficient.  
> Commands like `grep` allow fast pattern-based searching directly from the terminal.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit Solution 7" src="https://github.com/user-attachments/assets/90d903a9-9c38-452a-983d-14b48a6f449d" />
</p>

```bash
ls
grep "millionth" data.txt
```

> [!IMPORTANT]
> `grep` searches file contents for matching text patterns and prints matching lines.  
> This is one of the most commonly used Linux commands for log analysis, troubleshooting, and data searching.

---

## Explanation

The `grep` command searches through a file and prints any line that matches a given pattern.

Since the password appears on the same line as the word `"millionth"`, searching for that keyword directly reveals the password.

> [!TIP]
> You can make `grep` output easier to read by highlighting matches:
>
> ```bash
> grep --color "millionth" data.txt
> ```

---

## What I Learned

- `grep` is used to search file contents for patterns  
- Pattern searching is faster than manually scanning files  
- `grep` is extremely useful for log analysis and troubleshooting  
- Keywords can quickly locate important information inside large files
