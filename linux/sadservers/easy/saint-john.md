# SadServers — Easy: Saint John

## Problem
Figure out what is writing to a log file (e.g. /var/log/bad.log) and stop it.

## Step 1: Confirm something is running and check processes
Start by listing running processes:

```
ps aux
```

Why:
If a file is being written repeatedly, there’s usually a running process responsible. `ps aux` shows everything running, including background scripts and services.

## Step 2: Identify which process has the log file open
Next, check which process is actively using the log file:

```
lsof /var/log/bad.log
```

You’ll see output like:

• COMMAND: the program writing (example: `badlog.py`)

• PID: the process ID (example: `593`)

• USER: who owns it (example: `ubuntu`)

• NAME: the file being written (`/var/log/bad.log`)

Why:
This is the fastest way to answer the real question:
✅ “Which process is writing to this file?”

Step 3: Stop the process (force if needed)
If it’s not a system service you want running, stop it. In your case, you force-stopped it using:

```
kill -9 593
```

Why `-9`?

• `kill` (default) sends SIGTERM (15) which asks a process to exit cleanly.

• `kill -9` sends SIGKILL (9) which stops it immediately (no cleanup).

Use `kill -9` when the process ignores normal termination or keeps restarting.

## Step 4: Verify the log stopped changing
To confirm the file is no longer being modified, check if it was updated recently:

```
 find /var/log/bad.log -mmin -0.1
```

What it means:

• `-mmin -0.1` = modified within the last ~6 seconds

• If it returns the file path, it’s still being written to.

• If it returns nothing, it has stopped changing.

## What I Learned

• Logs are effects, not causes — you must trace them back to a process.

• lsof is one of the best tools for mapping “file activity → process”.

• kill -9 works, but it’s a last resort (best when normal stopping fails).

• Always validate the fix by checking whether the file is still being updated.
