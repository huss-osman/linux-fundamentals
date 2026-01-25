# Bandit Level 6 → Level 7

## Goal
Find a file owned by bandit7 and grouped by bandit6.

## Solution
```bash
find / -user bandit7 -group bandit6 -size 33c 
cat /var/lib/dpkg/info/bandit7.password
```

## Explanation
The `find` command searches the entire filesystem for files owned by `bandit7`,
grouped by `bandit6`, and exactly 33 bytes in size.

The password file is returned directly by this search.  
Permission-denied messages may appear when searching `/`, but they do not affect
the result.

Error redirection (`2>/dev/null`) is optional and only used to suppress
permission warnings for cleaner output.

## What I Learned
Ownership, groups, and stderr redirection.
