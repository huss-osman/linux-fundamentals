# Bandit Level 5 → Level 6

## Goal

Find the password stored in a file that meets all of the following conditions:

- Human-readable  
- Exactly 1033 bytes in size  
- Not executable  
- Located somewhere under the `inhere` directory

> [!NOTE]
> When dealing with large directory structures, manually checking every file becomes inefficient.  
> Commands like `find` allow you to search using file attributes instead of filenames.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit solution 5" src="https://github.com/user-attachments/assets/2f389ad0-61d0-4cc1-bdd9-19ad7f296fd0" />
</p>

```bash
ls
cd inhere
ls
find . -type f -size 1033c ! -executable
cat ./maybehere07/.file2
```

> [!IMPORTANT]
> The `find` command can combine multiple filters in a single search, making it extremely efficient for locating files in complex directory structures.

---

## Explanation

The `inhere` directory contains many subdirectories and files, making manual inspection inefficient.

The `find` command is used to filter files based on multiple conditions at once:

- `-type f` → only regular files  
- `-size 1033c` → files exactly 1033 bytes in size  
- `! -executable` → exclude executable files  

This narrows the search to a single file:

```bash
./maybehere07/.file2
```

Once identified, the file is read using `cat` to reveal the password.

> [!TIP]
> The `c` in `1033c` stands for bytes (characters).  
> Without it, `find` uses different default size units.

---

## What I Learned

- `find` is one of the most powerful Linux tools for precise file searching  
- Multiple conditions can be combined to quickly locate specific files  
- Searching by file attributes is more reliable than guessing filenames  
- The `find` command is essential for system administration and troubleshooting
