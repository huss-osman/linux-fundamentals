# 📘 Bandit Level 6 → Level 7

## Goal
Find a file somewhere on the system that is:

• Owned by user bandit7

• Owned by group bandit6

• Exactly 33 bytes in size

## Solution

<img width="601" height="222" alt="Bandit Solution 6" src="https://github.com/user-attachments/assets/727a209e-42b0-49c2-ba5f-8642b72099f2" />

```bash
find / -user bandit7 -group bandit6 -size 33c
cat /var/lib/dpkg/info/bandit7.password
```

## Explanation
The search starts at the root directory (/) to scan the entire system.

The find command filters files by:

• Ownership (-user, -group)

• Exact size (-size 33c)

Permission denied messages are expected and do not affect the result.

## What I Learned
File ownership is a powerful search filter, and permission errors are normal when scanning system directories.
