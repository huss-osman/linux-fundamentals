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

• Specifically with gzip

💡 Important rule:

File extensions don’t matter. File contents do.

## Step 4: Extract the first compression layer
Because it’s gzip-compressed, we extract it.

First rename it (for clarity):

```bash
mv data.bin data.gz
gzip -d data.gz
```

Now a new file appears, usually named data.

## Step 5: Repeat the process (this is the core lesson)
Now we do the exact same thing again:

```bash
file data
```

Possible output:

```bash
data: bzip2 compressed data
```

So we extract again:

```bash
mv data data.bz2
bzip2 -d data.bz2
```

Check again:

```bash
file data
```

Now maybe it says:

```bash
data: POSIX tar archive
```

So we extract:

```bash
mv data data.tar
tar -xf data.tar
```

After extraction, a new data file appears.

## Step 6: Keep going until it becomes readable text
You repeat this exact cycle:

1. file data

2. Rename appropriately

3. Extract using the correct tool

Eventually, file will say something like:

```bash
data: ASCII text
```

This means:
✅ You’ve reached the final layer
✅ The file is no longer compressed
✅ It contains readable text

## Step 7: Read the password
Now simply:

```bash
cat data
```

The output is the password for bandit13.

## Why this level exists
This level teaches real-world Linux thinking, not tricks.

What you’re learning:

• Hexdump ≠ real file

• Binary data can be wrapped many times

• You must inspect, not assume

• file is one of the most important Linux commands

• Debugging often means:

unwrap → inspect → unwrap → inspect → repeat

This is exactly how engineers handle:

• Corrupt backups

• Log bundles

• Crash dumps

• Unknown artifacts in production systems

## Common beginner mistakes
❌ Trying to cat data.txt
→ It’s just hex, not the real file

❌ Guessing compression type
→ Leads to wrong commands and errors

❌ Skipping file
→ You lose visibility into what’s happening

❌ Thinking there’s a “magic command”
→ There isn’t — the method is the lesson

## Final takeaway
This level isn’t about memorising tools.

It’s about learning a repeatable process:

Identify → Convert → Inspect → Extract → Repeat

Once you understand that, this level becomes logical — and so do many real DevOps problems.
