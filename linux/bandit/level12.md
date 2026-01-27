# 📘 Bandit Level 12 → Level 13

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

## Step 3: Never guess — always check the file type
Now we ask Linux:

```bash
file data.bin
```

Example output might be:

```bash
data.bin: gzip compressed data
```

This tells us:

• The file is compressed

• The correct tool to extract it is gzip

💡 Important rule:

File extensions don’t matter — file contents do.
That’s why we trust file, not the filename.

## Step 4: Extract the first compression layer
First rename it (for clarity):

```bash
mv data.bin data.gz
gzip -d data.gz
```

What this does:

• mv renames the file (helps you track formats)

• gzip -d decompresses the gzip file

• A new file appears (usually named data)

## Step 5: Identify the next layer
Check the new file:

```bash
file data
```

Example output:

```bash
data: bzip2 compressed data
```

That means the next layer is bzip2.

## Step 6: Extract the bzip2 layer

```bash
mv data data.bz2
bzip2 -d data.bz2
```

What this does:

• mv renames so it’s obvious it’s bzip2

• bzip2 -d decompresses it

• Another new file appears (often named data again)

## Step 7: If the next layer is a tar archive, extract it
Check again:

```bash
file data
```

If you see:

```bash
data: POSIX tar archive
```

Then do:

```bash
mv data data.tar
tar -xf data.tar
```

What this does:

• tar -xf extracts files from the archive

• After extraction, a new file appears (the name may vary)

After extracting, a new file named data5.bin (or similar) appears.

Check it:

```bash
file data5.bin
```

Output:

```bash
data5.bin: POSIX tar archive
```

## Step 8: Extract second tar archive

```bash
tar -xf data5.bin
```

A new file appears (e.g. data6.bin).

Check again:

```bash
file data6.bin
```

Output:

```bash
data6.bin: bzip2 compressed data
```

## Step 9: Extract second bzip2 layer

```bash
mv data6.bin data6.bz2
bzip2 -d data6.bz2
```

Check again:

```bash
file data6
```

Output:

```bash
data6: POSIX tar archive
```

## Step 10: Extract final tar archive

```bash
mv data6 data6.tar
tar -xf data6.tar
```

A new file appears called data8.bin.

Check it:

```bash
file data8.bin
```

Output:

```bash
data8.bin: gzip compressed data
```

## Step 11: Extract final gzip layer

```bash
mv data8.bin data8.gz
gzip -d data8.gz
```

Check one last time:

```bash
file data8
```

Output:

```bash
data8: ASCII text
```

## Step 12: Read the password
Now that the file is plain text:

```bash
cat data8
```

This outputs the password for bandit13.

## Why this works
Each step follows the same rule:

1. Identify the file type (file)

2. Rename appropriately

3. Extract using the correct tool

4. Repeat until readable

No guessing.
No shortcuts.
Just observation and iteration.

## Final lesson from this level

This challenge teaches how Linux engineers work with:

• Backup bundles

• Crash dumps

• Log archives

• Unknown production artifacts

The skill isn’t knowing gzip or tar.

The skill is knowing how to systematically unwrap unknown data.

