# SadServers — Medium: Manhattan

## Problem
An application is running but cannot write data into its database.

## Symptoms
- Application errors when attempting database writes
- Database service appears to be running

## Investigation
- Checked database service status
- Reviewed application and database logs
- Inspected file ownership and permissions

## Key Commands Used
- `systemctl`
- `journalctl`
- `ls -l`
- `ps`

## Root Cause
Incorrect file permissions or ownership prevented the application from writing to the database.

## Fix
Permissions and ownership were corrected, and affected services were restarted.

## What I Learned
A running service does not guarantee correct access — permissions are a common hidden failure point.
