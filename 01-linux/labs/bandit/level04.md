# Bandit Level 4 → Level 5

## Goal

Find and read the only human-readable file inside the `inhere` directory.

> [!NOTE]
> File extensions and filenames do not always reflect the actual contents of a file.  
> Linux provides tools like `file` to inspect what data a file truly contains.

---

## Solution

<p align="center">
<img width="1000" height="899" alt="Bandit Solution 4" src="https://github.com/user-attachments/assets/acfd311c-941b-47fd-a516-353d49578f98" />
</p>

```bash
cd inhere
file ./*
cat ./-file07
```

> [!IMPORTANT]
> The `file` command checks the actual content and format of files rather than relying on filenames alone.  
> Since `-file07` starts with `-`, using `./` prevents the shell from treating it as a command option.

---

## Explanation

The directory contains multiple files with similar names, but most of them are binary data.

- `file ./*` inspects each file and identifies its actual content type, not just the filename.  
- Only one file is reported as ASCII text, meaning it is human-readable.  
- That file is `-file07`.

Because the filename starts with a dash (`-`), it must be accessed using a relative path (`./`) so the shell does not treat it as an option.

> [!TIP]
> The `file` command is extremely useful during troubleshooting, reverse engineering, and log analysis when dealing with unknown files.

---

## What I Learned

- File names cannot be trusted to indicate file contents  
- The `file` command is essential for identifying unknown data  
- ASCII text files are human-readable  
- Files starting with `-` must be referenced carefully using `./`
