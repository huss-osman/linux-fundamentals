# Bandit Level 2 → Level 3

## Goal

Read a file with spaces in its filename.

> [!NOTE]
> Spaces are treated as separators in the shell.  
> Without proper quoting or escaping, Linux interprets each word as a separate argument.

---

## Solution

<p align="center">
<img width="1000" height="350" alt="Bandit Solution 2" src="https://github.com/user-attachments/assets/127b29d1-97c2-429b-8202-0dcfb80757b8" />
</p>

```bash
ls
cat ./"--spaces in this filename--"
```

> [!IMPORTANT]
> Wrapping the filename in quotes ensures the shell treats the entire string as a single filename instead of multiple arguments.

---

## Explanation

Quotes prevent the shell from splitting the filename into multiple arguments.

> [!TIP]
> Another way to handle spaces is by escaping them using backslashes:
>
> ```bash
> cat ./--spaces\ in\ this\ filename--
> ```

---

## What I Learned

- How the shell handles spaces in filenames  
- Why quoting is important in Linux commands  
- Different ways to reference filenames containing spaces  
- How argument parsing works in the shell
