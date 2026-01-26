# SadServers — Easy: Saint John

## Problem
A log file is continuously being written to, but it is unclear which process is responsible.

## Symptoms
- Log file grows unexpectedly
- No obvious service documentation explains the writes

## Investigation
- Inspected running processes
- Identified open file descriptors pointing to the log file
- Traced the log writes back to a specific background process

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
