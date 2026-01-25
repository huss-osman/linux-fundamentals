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

## Step 0: Why work in /tmp?
Before doing anything, we create a temporary working directory:

```bash
mkdir /tmp/bandit12
cp data.txt /tmp/bandit12/
cd /tmp/bandit12
```

Why?

• /tmp is meant for experiments

• You won’t accidentally overwrite important files

• This is how real engineers work when unpacking unknown data

## Step 1: What is a hexdump?
Open data.txt:

```bash
head data.txt
```

You’ll see something like:

```bash
00000000: 1f8b 0808 d7d2 055c 0203 6461 7461
```

This means:

• The file does not contain readable text

• Each pair of characters (1f, 8b, etc.) represents raw bytes

• This is a text representation of binary data

👉 In other words:
data.txt is NOT the real file — it is an encoded version of the real file

## Step 2: Convert the hexdump back into a real file
To turn hex text back into a real binary file, we use xxd.

• xxd normally converts binary → hex

• xxd -r does the reverse (hex → binary)

Run:

```bash
xxd -r data.txt > data.bin
```

What just happened?

• data.txt stayed the same

• data.bin is now the real file that was hidden inside the hexdump



