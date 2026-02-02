# Bandit Level 12 → Level 13

## Goal
The password for the next level is stored in data.txt, which is a hexdump 
of a file that has been compressed multiple times (gzip, bzip2, tar, etc.).

You need to:

1. Convert the hexdump back into a real binary file

2. Detect the file type

3. Repeatedly extract/decompress until you reach readable text

---

## What is the problem actually saying?
You are given a file called data.txt.

At first glance it looks like normal text, but it isn’t the password. Instead:

• data.txt is a hexdump (text that represents raw bytes)

• That hexdump is actually a compressed file

• The file has been compressed multiple times

• The password is inside the final extracted text file

So the task is: turn the hex back into a real file, then unwrap it layer by layer.

---

## Step 0: Work safely in /tmp

<img width="532" height="104" alt="Bandit Solution 12 pt1" src="https://github.com/user-attachments/assets/aec74f31-995d-43f1-b0ee-cdc46bd9de3f" />

```bash
mkdir /tmp/bndit12
cp data.txt /tmp/bndit12
cd /tmp/bndit12
```

Why /tmp?

• It’s made for temporary work

• You won’t clutter or overwrite your home directory

• This is how you handle unknown archives safely in real systems

---

## Step 1: Confirm it’s a hexdump

<img width="820" height="259" alt="Bandit Solution 12 pt2" src="https://github.com/user-attachments/assets/b13fe678-a3d3-428a-b087-ec6f5108fc27" />

```bash
head data.txt
```

You’ll see hex blocks like:

00000000: 1f8b 0808 ...

That means:

• It’s not readable text

• It’s hex representation of bytes

• So we must rebuild the real file first

---

## Step 1: Reverse the hexdump into a real file

<img width="690" height="46" alt="Bandit Solution 12 pt3" src="https://github.com/user-attachments/assets/d78372f0-f78c-4fda-90e0-571eb52a52ab" />

```bash
xxd -r data.txt > data.bin
```

What happened?

• data.txt stays the same

• data.bin becomes the real binary file hidden inside the dump

---

## Step 2: Identify the file type (don’t guess)

<img width="945" height="73" alt="Bandit Solution 12 pt4" src="https://github.com/user-attachments/assets/74bfdabd-14e6-4c2a-8e59-743943d58b3e" />

```bash
file data.bin
```

Your output shows it is:

• gzip compressed data

So we decompress using gzip.

---

## Step 3: Layer 1 — gzip

<img width="608" height="53" alt="Bandit Solution 12 pt5" src="https://github.com/user-attachments/assets/47f8e1c3-d571-4d60-bb89-d4aba9f279d8" />

```bash
mv data.bin data.gz
gzip -d data.gz
```

Now you get a new file (usually named data).

Check what it is:

<img width="576" height="54" alt="Bandit Solution 12 pt6" src="https://github.com/user-attachments/assets/00abd94b-9097-4b5d-b378-eb67ed2d8161" />

```bash
file data
```

Your output shows:

• bzip2 compressed data

---

## Step 4: Layer 2 — bzip2

<img width="583" height="51" alt="Bandit Solution 12 pt7" src="https://github.com/user-attachments/assets/48a43292-dbab-49bd-a83b-e95fd1cfca53" />

```bash
mv data data.bz2
bzip2 -d data.bz2
```

Check again:

<img width="944" height="73" alt="Bandit Solution 12 pt8" src="https://github.com/user-attachments/assets/7ed69afa-8e0e-43ed-8f9c-1ebf18fd28ba" />

```bash
file data
```

Your output shows:

• gzip compressed data

---

## Step 5: Layer 3 — gzip again

<img width="572" height="53" alt="Bandit Solution 12 pt9" src="https://github.com/user-attachments/assets/9297e7f0-65a4-418e-9e5a-896fb7763584" />

```bash
mv data data.gz
gzip -d data.gz
```

Now check again:

<img width="481" height="51" alt="Bandit Solution 12 pt10" src="https://github.com/user-attachments/assets/d2642ab6-5b49-4e26-b3cf-98732f136fff" />

```bash
file data
```

At this point (based on your run), it becomes a tar archive.

---

## Step 6: Layer 4 — tar archive

<img width="569" height="53" alt="Bandit Solution 12 pt11" src="https://github.com/user-attachments/assets/d760b131-1868-4386-8a09-82b41dd9326a" />

```bash
mv data data.tar
tar -xf data.tar
```

This extracts new files (often something like data4.bin, data5.bin, etc.).

List files:

<img width="399" height="54" alt="Bandit Solution 12 pt12" src="https://github.com/user-attachments/assets/2feecf72-d8b8-4804-b78b-d54e4f50f060" />

```bash
ls
```

Then check the extracted file type:

<img width="545" height="57" alt="Bandit Solution 12 pt13" src="https://github.com/user-attachments/assets/f889f563-85c3-4cee-94b7-40a60822908f" />

```bash
file data5.bin
```

Your screenshots show another tar archive appears next, so extract again.

---

## Step 7: Layer 5 — tar archive again

<img width="584" height="35" alt="Bandit Solution 12 pt14" src="https://github.com/user-attachments/assets/842a8141-b9c6-4119-9446-0bd3df2cf572" />

```bash
tar -xf data5.bin
```

Now check the next extracted file:

<img width="624" height="96" alt="Bandit Solution 12 pt15" src="https://github.com/user-attachments/assets/759daffd-a4ff-47c2-9fc1-0d7a3107887c" />

```bash
ls
file data6.bin
```

Your screenshots show:

• bzip2 compressed data

---

## Step 8: Layer 6 — bzip2 again

<img width="645" height="46" alt="Bandit Solution 12 pt16" src="https://github.com/user-attachments/assets/add42d29-1608-4170-8686-5dd6229c411d" />

```bash
mv data6.bin data5.bz2
bzip2 -d data5.bz2
```

Check again:

<img width="501" height="54" alt="Bandit Solution 12 pt17" src="https://github.com/user-attachments/assets/39483a9d-585b-4ea5-a9c2-500ec323513a" />

```bash
file data5
```

Your screenshots show:

• POSIX tar archive

---

## Step 9: Layer 7 — tar again

<img width="608" height="51" alt="Bandit Solution 12 pt18" src="https://github.com/user-attachments/assets/d26def0c-8bb2-4eb2-b2cb-9d0711dfff1e" />

```bash
mv data5 data5.tar
tar -xf data5.tar
```

Now check the next file:

<img width="938" height="118" alt="Bandit Solution 12 pt19" src="https://github.com/user-attachments/assets/e2b7cbd4-00be-4696-abc3-45cb82425f4a" />

```bash
ls
file data8.bin
```

Your screenshots show:

• gzip compressed data

---

## Step 10: Layer 8 — final gzip

<img width="629" height="51" alt="Bandit Solution 12 pt20" src="https://github.com/user-attachments/assets/e5346240-a70a-48bc-8441-768fc6383921" />

```bash
mv data8.bin data8.gz
gzip -d data8.gz
```

Now check:

<img width="511" height="50" alt="Bandit Solution 12 pt21" src="https://github.com/user-attachments/assets/a111d2f2-1535-4c96-ac73-f6293ef10fd4" />

```bash
file data8
```

Your output shows:

• ASCII text

---

## Step 11: Read the password

<img width="604" height="57" alt="Bandit Solution 12 pt22" src="https://github.com/user-attachments/assets/429efcfd-a9ec-4590-b2ee-11e30a2cf8b7" />

```bash
cat data8
```

That output is the password.

---

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

---

## What I Learned

• A filename doesn’t matter — file contents do

• file is the key tool for unknown artifacts

• Real troubleshooting is often “unwrap one layer, check again, repeat”

• Hexdumps can be rebuilt into real files using xxd -r
