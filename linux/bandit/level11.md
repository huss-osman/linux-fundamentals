# Bandit Level 11 → Level 12

## Goal
Decode ROT13 encoded text.

## Solution
```bash
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
```

## Alternative solution:
```bash
cat data.txt | tr 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm' \
'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
```

## Explanation
Both commands decode ROT13-encoded text.

• The first solution uses character ranges (A–Z, a–z) and shifts them by 13.

• The alternative solution explicitly maps each rotated character back to its original position.

Using input redirection (< data.txt) or a pipe (cat |) achieves the same result — both pass the file’s contents to tr via standard input.

## What I Learned
ROT13 is a simple substitution cipher.
Linux tools allow the same operation to be expressed in multiple equivalent ways.
