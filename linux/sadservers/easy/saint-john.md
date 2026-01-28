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

`COMMAND`: the program writing (example: badlog.py)

`PID`: the process ID (example: 593)

`USER`: who owns it (example: ubuntu)

NAME: the file being written (/var/log/bad.log)

Why:
This is the fastest way to answer the real question:
✅ “Which process is writing to this file?”

## Key Commands Used
- `ps`
- `lsof`
- `grep`
- `systemctl`
- `kill -9`

## Root Cause
A background service was actively writing to the log file.

## Fix
The responsible service was stopped and reconfigured.  
When the process did not respond to normal termination signals, it was forcefully stopped using `kill -9`.

## What I Learned
Logs are symptoms, not causes.  
Identifying the process behind unexpected behaviour is critical, and force-killing processes should be a last resort.
