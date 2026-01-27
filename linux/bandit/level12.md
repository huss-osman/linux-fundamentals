# 📘 Bandit Level 12 → Level 13

## Goal
The password for the next level is stored in data.txt, which is a hexdump 
of a file that has been compressed multiple times (gzip, bzip2, tar, etc.).

You need to:

1. Convert the hexdump back into a real binary file

2. Detect the file type

3. Repeatedly extract/decompress until you reach readable text

## What is the problem actually saying?
You are given a file called data.txt.

At first glance it looks like normal text, but it isn’t the password. Instead:

• data.txt is a hexdump (text that represents raw bytes)

• That hexdump is actually a compressed file

• The file has been compressed multiple times

• The password is inside the final extracted text file

So the task is: turn the hex back into a real file, then unwrap it layer by layer.

## Step 0: Work safely in /tmp

```bash
mkdir /tmp/bnd12
cp data.txt /tmp/bnd12
cd /tmp/bnd12
```

Why /tmp?

• It’s made for temporary work

• You won’t clutter or overwrite your home directory

• This is how you handle unknown archives safely in real systems

## Step 1: Confirm it’s a hexdump

```bash
head data.txt
```

You’ll see hex blocks like:

00000000: 1f8b 0808 ...

That means:

• It’s not readable text

• It’s hex representation of bytes

• So we must rebuild the real file first

## Step 1: Reverse the hexdump into a real file

```bash
xxd -r data.txt > data.bin
```

What happened?

• data.txt stays the same

• data.bin becomes the real binary file hidden inside the dump

## Step 2: Identify the file type (don’t guess)

```bash
file data.bin
```

Your output shows it is:

• gzip compressed data

So we decompress using gzip.

## Step 3: Layer 1 — gzip

```bash
mv data.bin data.gz
gzip -d data.gz
```

Now you get a new file (usually named data).

Check what it is:

```bash
file data
```

Your output shows:

• bzip2 compressed data

## Step 4: Layer 2 — bzip2

```bash
mv data data.bz2
bzip2 -d data.bz2
```

Check again:

```bash
file data
```

Your output shows:

• gzip compressed data

## Step 5: Layer 3 — gzip again

```bash
mv data data.gz
gzip -d data.gz
```

Now check again:

```bash
file data
```

At this point (based on your run), it becomes a tar archive.

## Step 6: Layer 4 — tar archive

```bash
mv data data.tar
tar -xf data.tar
```

This extracts new files (often something like data4.bin, data5.bin, etc.).

List files:

```bash
ls
```

Then check the extracted file type:

```bash
file data4.bin
```

Your screenshots show another tar archive appears next, so extract again.

## Step 7: Layer 5 — tar archive again

```bash
tar -xf data4.bin
```

Now check the next extracted file:

```bash
ls
file data5.bin
```

Your screenshots show:

• bzip2 compressed data

## Step 8: Layer 6 — bzip2 again

```bash
mv data5.bin data5.bz2
bzip2 -d data5.bz2
```

Check again:

```bash
file data5
```

Your screenshots show:

• POSIX tar archive

## Step 9: Layer 7 — tar again

```bash
mv data5 data5.tar
tar -xf data5.tar
```

Now check the next file:

```bash
ls
file data8.bin
```

Your screenshots show:

• gzip compressed data

## Step 10: Layer 8 — final gzip

```bash
mv data8.bin data8.gz
gzip -d data8.gz
```

Now check:

```bash
file data8
```

Your output shows:

• ASCII text

## Step 11: Read the password

```bash
cat data8
```

That output is the password.

## Why this works

Every layer follows the same workflow:

1. Identify what the file really is: file <name>

2. Use the correct tool for that format (gzip/bzip2/tar)

3. Repeat until you reach readable text

This is exactly how you handle:

• backups

• log bundles

• production artifacts

• unknown compressed files

## What I Learned

• A filename doesn’t matter — file contents do

• file is the key tool for unknown artifacts

• Real troubleshooting is often “unwrap one layer, check again, repeat”

• Hexdumps can be rebuilt into real files using xxd -r
