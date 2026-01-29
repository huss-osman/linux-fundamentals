# SadServers — Hard: Jakarta

## Problem
The system cannot resolve external hostnames.

Running `ping google.com` returns:

```
ping: google.com: Name or service not known
```

The objective is to restore hostname resolution.

## Symptoms
• `ping google.com` fails with Name or service not known
• Network interface is up
• No firewall rules blocking outbound traffic
• `/etc/resolv.conf` exists but resolution still fails

## Investigation

**1.** Confirmed the failure

```
ping google.com
```

Running `ping google.com` returns:

```
ping: google.com: Name or service not known
```

This is a DNS resolution error, not a connectivity issue.

**2.** Checked resolver configuration

```
cat /etc/resolv.conf
```

• File is managed by `systemd-resolved`

• Nameserver present (`127.0.0.53`), so DNS should work

**3.** Checked name resolution order

```
cat /etc/nsswitch.conf
```

Found:

DNS was **not included**, meaning the system never queried DNS servers.

## Root Cause
The Name Service Switch configuration was incorrect.

`/etc/nsswitch.conf` was missing `dns` in the `hosts` lookup order, so hostname resolution stopped at local 
files (`/etc/hosts`) and never queried DNS.

## Fix
Updated the hosts line in /etc/nsswitch.conf:

```
sudo vi /etc/nsswitch.conf
```

**Before**

**After**

This immediately restored DNS resolution without restarting services.

## Verification

```
ping google.com
```

**Result**

Hostname resolution works as expected.

## Key Commands Used

• `ping`

• `cat /etc/resolv.conf`

• `cat /etc/nsswitch.conf`

• `vi /etc/nsswitch.conf`

## What I Learned

DNS issues are often **not about DNS servers**, but about **how the system performs lookups**.

Before touching firewalls, resolvers, or network services:

• Always check `nsswitch.conf`

• Verify lookup order (`files`, `dns`)

• Understand the resolution path

Fast diagnosis beats trial and error — especially in production.
