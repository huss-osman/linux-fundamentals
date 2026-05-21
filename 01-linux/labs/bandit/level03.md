# Bandit Level 3 → Level 4

## Goal

Find and read a hidden file.

> [!NOTE]
> In Linux, files beginning with `.` are considered hidden by convention.  
> They are commonly used for configuration files and are not shown in normal directory listings.

---

## Solution

<p align="center">
<img width="1000" height="450" alt="Bandit Solution 3" src="https://github.com/user-attachments/assets/75bd52a2-a012-428d-925d-de6de37de78c" />
</p>

```bash
ls
cd inhere
ls -a
cat ./...Hiding-From-You
```

> [!IMPORTANT]
> The `-a` flag is required with `ls` to display hidden files and directories.  
> Without it, files beginning with `.` will not appear in the output.

---

## Explanation

Hidden files start with `.` and require `-a` to be listed.

> [!TIP]
> You can combine `ls -a` with other flags like `-l` for more detailed output:
>
> ```bash
> ls -la
> ```

---

## What I Learned

- How hidden files work in Linux  
- Why files starting with `.` are hidden by default  
- How to use `ls -a` to reveal hidden files  
- Linux hides files by convention, not security
