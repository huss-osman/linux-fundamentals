# SadServers — Hard: Jakarta

## Problem
The system cannot resolve external hostnames.

Running `ping google.com` returns:

<img width="484" height="55" alt="Jakarta pt2" src="https://github.com/user-attachments/assets/383594ee-3f88-4476-9816-4bc7019debe6" />

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

<img width="495" height="46" alt="Jakarta pt1" src="https://github.com/user-attachments/assets/7348225e-b43e-4818-b701-bc7e7ec60731" />

```
ping google.com
```

Running `ping google.com` returns:

<img width="484" height="55" alt="Jakarta pt2" src="https://github.com/user-attachments/assets/4fb68ea9-418a-49c8-a38a-65af0a7dd5f0" />

```
ping: google.com: Name or service not known
```

This is a DNS resolution error, not a connectivity issue.

**2.** Checked resolver configuration

<img width="925" height="550" alt="Jakarta pt3" src="https://github.com/user-attachments/assets/d6183f24-b527-452e-b17f-6ff977d265e2" />

```
cat /etc/resolv.conf
```

• File is managed by `systemd-resolved`

• Nameserver present (`127.0.0.53`), so DNS should work

**3.** Checked name resolution order

<img width="836" height="482" alt="Jakarta pt4" src="https://github.com/user-attachments/assets/98af1194-fef6-4bfc-8011-558ae5b300d5" />

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

<img width="611" height="23" alt="Jakarta pt5" src="https://github.com/user-attachments/assets/11e28518-f2b8-4a8c-aa01-0f0350d1c205" />

```
sudo vi /etc/nsswitch.conf
```

**Before**

<img width="836" height="464" alt="Jakarta pt6" src="https://github.com/user-attachments/assets/bdb15863-543b-4f29-add0-395c2fbe731b" />

**After**

<img width="845" height="463" alt="Jakarta pt7" src="https://github.com/user-attachments/assets/110348c5-e57a-4650-b70d-dac8240435d2" />

This immediately restored DNS resolution without restarting services.

## Verification

<img width="610" height="45" alt="Jakarta pt8" src="https://github.com/user-attachments/assets/66dcad85-43ab-4264-9200-7e2bcddf8e81" />

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
