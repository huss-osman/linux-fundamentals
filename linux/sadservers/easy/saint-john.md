# SadServers — Easy: Saint John

## Problem
Figure out what is writing to a log file (e.g. /var/log/bad.log) and stop it.

## Step 1: Confirm something is running and check processes
Start by listing running processes:

<img width="935" height="275" alt="Sadservers pt1 Solution" src="https://github.com/user-attachments/assets/e9242b73-f750-4986-a48b-5273b2343616" />

```
ps aux
```

Why:
If a file is being written repeatedly, there’s usually a running process responsible. `ps aux` shows everything running, including background scripts and services.

## Step 2: Identify which process has the log file open
Next, check which process is actively using the log file:

<img width="795" height="70" alt="Sadservers pt2 Solution" src="https://github.com/user-attachments/assets/10514412-dd87-40f0-ae00-12d1e141ca2d" />

```
lsof /var/log/bad.log
```

You’ll see output like:

• COMMAND: the program writing (example: `badlog.py`)

• PID: the process ID (example: `593`)

• USER: who owns it (example: `admin`)

• NAME: the file being written (`/var/log/bad.log`)

Why:
This is the fastest way to answer the real question:
“Which process is writing to this file?”

## Step 3: Stop the process (force if needed)
If it’s not a system service you want running, stop it. In your case, you force-stopped it using:

<img width="410" height="35" alt="Sadservers pt3 Solution" src="https://github.com/user-attachments/assets/23d74ac5-5c29-40ff-96ce-4ce86149ff2d" />

```
kill -9 593
```

Why `-9`?

• `kill` (default) sends SIGTERM (15) which asks a process to exit cleanly.

• `kill -9` sends SIGKILL (9) which stops it immediately (no cleanup).

Use `kill -9` when the process ignores normal termination or keeps restarting.

## Step 4: Verify the log stopped changing
To confirm the file is no longer being modified, check if it was updated recently:

<img width="629" height="56" alt="Sadservers pt4 Solution" src="https://github.com/user-attachments/assets/745faab2-ae60-42b6-ba8e-c2d45409bdc7" />

```
 find /var/log/bad.log -mmin -0.1
```

What it means:

• `-mmin -0.1` = modified within the last ~6 seconds

• If it returns the file path, it’s still being written to.

• If it returns nothing, it has stopped changing.

## Key Commands Used

• `ps aux`

• `lsof /var/log/bad.log`

• `grep`

• `systemctl status`

• `kill` / `kill -9`

## Why these commands

• `ps` / `ps aux` → identifies running processes

Confirms which services or background jobs are active on the system.

`lsof` → identifies which process is writing to the log file

Maps open file descriptors back to a specific PID.

`grep` → filters process and log output

Helps narrow results to the relevant service or file.

`systemctl` → checks and manages system services

Confirms whether a service is running, stopped, or misconfigured.

`kill -9` → forcefully terminates the offending process

Used only when the process does not respond to graceful termination.

## What I Learned

• Logs are effects, not causes — you must trace them back to a process.

• lsof is one of the best tools for mapping “file activity → process”.

• kill -9 works, but it’s a last resort (best when normal stopping fails).

• Always validate the fix by checking whether the file is still being updated.
