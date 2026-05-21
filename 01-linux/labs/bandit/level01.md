# Bandit Level 1 → Level 2

## Goal

Read the password stored in a file named `-`.

> [!NOTE]
> Some filenames in Linux can contain special characters such as `-`, `.`, or spaces.  
> Understanding how the shell interprets these names is important when navigating and troubleshooting systems.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit Solution 1" src="https://github.com/user-attachments/assets/62b584ba-2a3f-4bb4-a04e-23c03094b13a" />
</p>

```bash
ls
cat ./-
```

> [!IMPORTANT]
> `./` tells Linux to look for the file in the current directory.  
> Without it, `cat` may interpret `-` as a command option instead of a filename.

---

## Explanation

Files starting with `-` are treated as command-line options.  
Using `./` forces the shell to treat it as a filename instead of an argument flag.

> [!TIP]
> You can also reference unusual filenames using absolute paths or by escaping characters when needed.

---

## What I Learned

- How the shell parses command arguments  
- Why relative paths like `./` matter  
- How Linux handles filenames beginning with special characters  
- The difference between a filename and a command option/flag
