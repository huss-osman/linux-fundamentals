# Bandit Level 10 → Level 11

## Goal

Decode the password stored in the file `data.txt` that has been Base64 encoded.

> [!NOTE]
> Base64 is an encoding format used to represent binary or structured data as readable text.  
> It is commonly used in APIs, email systems, and authentication tokens.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit Solution 10" src="https://github.com/user-attachments/assets/0b774ad0-0398-4124-98bf-0e1a208ab263" />
</p>

```bash
ls
base64 -d data.txt
```

> [!IMPORTANT]
> Base64 is an encoding method, not encryption.  
> Encoded data can be easily reversed using decoding tools like `base64 -d`.

---

## Explanation

The contents of `data.txt` are encoded using Base64, which is a text encoding scheme rather than a security mechanism.

- `base64 -d` decodes Base64-encoded input back into its original readable form  
- Once decoded, the output directly reveals the password for the next level  

This works because the encoding format is known and fully reversible.

> [!TIP]
> You can also decode Base64 strings directly from the command line using:
>
> ```bash
> echo "SGVsbG8=" | base64 -d
> ```

---

## What I Learned

- Base64 is used to represent data as readable text  
- Encoding is different from encryption  
- Known encoding formats can be reversed easily  
- The `base64` command is useful for decoding structured text data
