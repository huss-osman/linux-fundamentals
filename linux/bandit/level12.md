# Bandit Level 12 → Level 13

## Goal
The password for the next level is stored in `data.txt`, which is a **hexdump** of a file that has been **compressed multiple times** (gzip, bzip2, tar, etc.).

You need to:
1) Convert the hexdump back into a real binary file  
2) Detect the file type  
3) Repeatedly extract/decompress until you reach readable text

## What is the problem actually saying?
You are given a file called data.txt.

At first glance, it looks like a normal text file — but it is not the password.
Instead:

• data.txt is a hexdump

• That hexdump represents a binary file

• That binary file has been compressed multiple times

• Inside the final extracted file is the password for the next level

So this level is not about guessing commands — it’s about understanding what kind of data you’re looking at.

