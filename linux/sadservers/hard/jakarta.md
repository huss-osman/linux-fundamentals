# SadServers — Hard: Jakarta

## Problem
A service fails to start or function correctly with no obvious error messages.

## Symptoms
- Service timeouts or startup failures
- Application logs show connection or resolution errors

## Investigation
- Tested network connectivity
- Checked DNS resolution
- Inspected system DNS configuration

## Key Commands Used
- `dig`
- `nslookup`
- `ping`
- `cat /etc/resolv.conf`

## Root Cause
Incorrect DNS configuration prevented the service from resolving required hostnames.

## Fix
DNS settings were corrected and name resolution was validated before restarting services.

## What I Learned
Many application failures are rooted in DNS — always verify name resolution early.
