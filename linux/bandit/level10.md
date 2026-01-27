# 📘 Bandit Level 10 → Level 11

## Goal
Decode the password stored in the file data.txt that has been Base64 encoded.

## Solution
```bash
ls
base64 -d data.txt
```

## Explanation
The contents of data.txt are encoded using Base64, which is a text encoding scheme, not a security mechanism.

• base64 -d decodes Base64-encoded input back into its original readable form

• Once decoded, the output directly reveals the password for the next level

This step works because the encoding format is known and reversible.

## What I Learned
Base64 is commonly used to represent binary data as text, and recognising encoding formats allows data to be decoded rather 
than brute-forced.
