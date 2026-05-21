# Bandit Level 6 → Level 7

## Goal

Find a file somewhere on the system that is:

- Owned by user `bandit7`  
- Owned by group `bandit6`  
- Exactly 33 bytes in size  

> [!NOTE]
> Searching from the root directory (`/`) allows `find` to scan the entire filesystem instead of just the current directory.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit Solution 6" src="https://github.com/user-attachments/assets/e9a46862-c81d-4081-ba41-388548a28268" />
</p>

```bash
find / -user bandit7 -group bandit6 -size 33c
cat /var/lib/dpkg/info/bandit7.password
```

> [!IMPORTANT]
> The `find` command can filter files using ownership, permissions, size, type, and many other attributes simultaneously.  
> This makes it extremely useful for system administration and troubleshooting.

---

## Explanation

The search starts at the root directory (`/`) to scan the entire system.

The `find` command filters files by:

- Ownership (`-user`, `-group`)  
- Exact size (`-size 33c`)  

Permission denied messages are expected and do not affect the result.

> [!TIP]
> To hide permission denied errors, you can redirect stderr:
>
> ```bash
> find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
> ```

---

## What I Learned

- File ownership is a powerful search filter  
- Permission denied messages are normal when scanning system directories  
- `find` can combine multiple search conditions efficiently  
- Redirecting stderr helps clean command output
