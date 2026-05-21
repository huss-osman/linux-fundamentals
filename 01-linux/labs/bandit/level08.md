# Bandit Level 8 → Level 9

## Goal

Find the only line in `data.txt` that occurs once.

> [!NOTE]
> Some Linux commands are designed to work together in pipelines.  
> Combining small utilities like `sort` and `uniq` is a core part of efficient shell usage.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit Solution 8" src="https://github.com/user-attachments/assets/9439df41-5fb1-44f3-a90e-37e6232bcb59" />
</p>

```bash
ls
sort data.txt | uniq -u
```

> [!IMPORTANT]
> The `uniq` command only detects duplicate lines that are adjacent.  
> This is why the input must first be sorted before using `uniq`.

---

## Explanation

The `uniq` command detects duplicate lines, but it only works correctly on sorted input.

- `sort` arranges identical lines next to each other  
- `uniq -u` prints only lines that appear exactly once  

By combining them with a pipe (`|`), we ensure `uniq` can correctly identify the unique line.

> [!TIP]
> You can also count duplicate occurrences using:
>
> ```bash
> sort data.txt | uniq -c
> ```

---

## What I Learned

- `uniq` works best with sorted input  
- Pipes (`|`) allow commands to work together efficiently  
- Command order matters in Linux pipelines  
- Small Linux utilities can be combined to solve complex tasks
