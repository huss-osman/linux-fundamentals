# 📘 Bandit Level 9 → Level 10

## Goal
Extract the password from a file that contains mostly binary data.

## Solution

<img width="587" height="255" alt="Bandit Solution 9" src="https://github.com/user-attachments/assets/bae94164-bd45-4e1c-9506-827e84fdaf97" />

```bash
ls
strings data.txt | grep "==="
```

## Explanation
The file data.txt contains binary data with only a few readable strings embedded inside it.

• strings extracts printable character sequences from the binary file

• The password line in this level is surrounded by multiple = characters

• Using grep "===" filters specifically for lines containing this distinctive pattern

While a single = could match many unrelated lines, searching for === narrows the results to the password line only.

This makes the search more precise and intentional, rather than broad guessing.

## What I Learned
Choosing a more specific search pattern makes text filtering faster, cleaner, and more reliable — especially when working with binary data.
