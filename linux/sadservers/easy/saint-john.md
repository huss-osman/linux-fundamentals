# SadServers — Easy: Saint John

## Problem
A log file is continuously being written to, but it is unclear which process is responsible.

## Symptoms
- Log file grows unexpectedly
- No obvious service documentation explains the writes

## Investigation
- Checked running processes
- Identified open file descriptors pointing to the log
- Traced the log writes back to a specific process

## Key Commands Used
- `ps`
- `lsof`
- `grep`
- `systemctl`

## Root Cause
A background service was actively writing to the log file.

## Fix
The responsible service was stopped or reconfigured to prevent unnecessary logging.

## What I Learned
Logs are effects, not causes — identifying the process behind a log is essential.
