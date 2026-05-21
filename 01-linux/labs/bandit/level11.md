# Bandit Level 11 → Level 12

## Goal

Decode ROT13 encoded text to reveal the password for the next level.

> [!NOTE]
> ROT13 is a simple substitution cipher that rotates each letter by 13 positions in the alphabet.  
> Applying ROT13 twice returns the original text.

---

## Solution

<p align="center">
<img width="1000" height="400" alt="Bandit Solution 11" src="https://github.com/user-attachments/assets/3b007535-86d3-4a12-8921-c96e45336ad5" />
</p>

```bash
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
```

## Alternative Solution

```bash
cat data.txt | tr 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm' 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
```
> [!IMPORTANT]
> The `tr` command performs character-by-character translation.  
> It is commonly used for encoding, decoding, and transforming text streams directly in the terminal.

---

## Explanation

The contents of `data.txt` are encoded using ROT13, a simple letter substitution cipher where each letter is replaced by the one 13 positions later in the alphabet.

- The first solution uses character ranges (`A-Z` and `a-z`) and shifts them by 13 positions automatically  
- The alternative solution explicitly maps each rotated character back to its original letter  

Both approaches work because:

- `tr` reads from standard input  
- Using input redirection (`< data.txt`) or a pipe (`cat data.txt |`) achieves the same result  
- The transformation is applied character by character  

> [!TIP]
> Since ROT13 is symmetrical, the same command can both encode and decode text.

---

## What I Learned

- ROT13 is encoding, not encryption  
- `tr` can translate characters directly in terminal streams  
- Linux tools are composable and support multiple valid approaches  
- Understanding data flow is more important than memorising syntax
