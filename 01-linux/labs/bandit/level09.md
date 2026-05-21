# Bandit Level 9 → Level 10

## Goal

Extract the password from a file that contains mostly binary data.

> [!NOTE]
> Binary files often contain unreadable characters mixed with small amounts of human-readable text.  
> Tools like `strings` help extract only the printable content.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit Solution 9" src="https://github.com/user-attachments/assets/bae94164-bd45-4e1c-9506-827e84fdaf97" />
</p>

```bash
ls
strings data.txt | grep "==="
```

> [!IMPORTANT]
> The `strings` command extracts readable text from binary files.  
> Piping the output into `grep` allows precise filtering for relevant patterns.

---

## Explanation

The file `data.txt` contains binary data with only a few readable strings embedded inside it.

- `strings` extracts printable character sequences from the binary file  
- The password line in this level is surrounded by multiple `=` characters  
- Using `grep "==="` filters specifically for lines containing this distinctive pattern  

While a single `=` could match many unrelated lines, searching for `===` narrows the results to the password line only.

This makes the search more precise and intentional, rather than broad guessing.

> [!TIP]
> You can adjust how many printable characters `strings` extracts using:
>
> ```bash
> strings -n 8 data.txt
> ```
>
> This only prints strings with 8 or more printable characters.

---

## What I Learned

- `strings` extracts readable text from binary files  
- Combining commands with pipes improves filtering precision  
- Specific search patterns reduce unnecessary output  
- Binary files can still contain useful human-readable information
