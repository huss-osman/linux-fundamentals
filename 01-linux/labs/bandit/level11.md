# Bandit Level 11 → Level 12

## Goal
Decode ROT13 encoded text to reveal the password for the next level.

---

## Solution

<img width="938" height="289" alt="Bandit Solution 11" src="https://github.com/user-attachments/assets/3b007535-86d3-4a12-8921-c96e45336ad5" />

```bash
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
```

---

## Alternative solution:
```bash
cat data.txt | tr 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm' 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
```

---

## Explanation
The contents of data.txt are encoded using ROT13, a simple letter substitution cipher where each letter is replaced by the one 13 positions later in the alphabet.

• The first solution uses character ranges (A–Z and a–z) and shifts them by 13 positions automatically.

• The alternative solution explicitly maps each rotated character back to its original letter.

Both approaches work because:

• tr reads from standard input

• Using input redirection (< data.txt) or a pipe (cat data.txt |) achieves the same result

• The transformation is applied character by character

---

## What I Learned
• ROT13 is encoding, not encryption

• Linux tools are composable — the same result can be achieved in multiple valid ways

• Understanding how data flows through commands is more important than memorising syntax
