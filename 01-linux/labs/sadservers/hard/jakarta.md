# SadServers — Hard: Jakarta

## Problem

The system cannot resolve external hostnames.

Running `ping google.com` returns:

<p align="center">
<img width="484" height="55" alt="Jakarta pt2" src="https://github.com/user-attachments/assets/383594ee-3f88-4476-9816-4bc7019debe6" />
</p>

```bash
ping: google.com: Name or service not known
```

The objective is to restore hostname resolution.

> [!NOTE]
> DNS failures are not always caused by broken DNS servers.  
> Sometimes the system itself is not configured to use DNS lookups correctly.

---

## Symptoms

- `ping google.com` fails with `Name or service not known`  
- Network interface is up  
- No firewall rules blocking outbound traffic  
- `/etc/resolv.conf` exists but hostname resolution still fails

---

## Investigation

## Step 1: Confirmed the failure

<p align="center">
<img width="495" height="46" alt="Jakarta pt1" src="https://github.com/user-attachments/assets/7348225e-b43e-4818-b701-bc7e7ec60731" />
</p>

```bash
ping google.com
```

Running ping google.com returns:

<p align="center"> 
<img width="484" height="55" alt="Jakarta pt2" src="https://github.com/user-attachments/assets/4fb68ea9-418a-49c8-a38a-65af0a7dd5f0" />
</p>

```bash
ping: google.com: Name or service not known
```

This is a DNS resolution error, not a connectivity issue.

> [!IMPORTANT]
> If DNS is broken, internet connectivity may still exist.  
> The system simply cannot translate hostnames into IP addresses.

---

## Step 2: Checked resolver configuration

<p align="center">
<img width="925" height="550" alt="Jakarta pt3" src="https://github.com/user-attachments/assets/d6183f24-b527-452e-b17f-6ff977d265e2" />
</p>

```bash
cat /etc/resolv.conf
```

### Findings

- File is managed by `systemd-resolved`  
- Nameserver exists (`127.0.0.53`)  
- DNS configuration appears valid  

This suggests the resolver itself is not the problem.

> [!TIP]
> `127.0.0.53` is commonly used by `systemd-resolved` as a local DNS stub resolver.

---

## Step 3: Checked name resolution order

<p align="center">
<img width="836" height="482" alt="Jakarta pt4" src="https://github.com/user-attachments/assets/98af1194-fef6-4bfc-8011-558ae5b300d5" />
</p>

```bash
cat /etc/nsswitch.conf
```

### Found

DNS was **not included**, meaning the system never queried DNS servers.

---

## Root Cause

The Name Service Switch configuration was incorrect.

`/etc/nsswitch.conf` was missing `dns` in the `hosts` lookup order, so hostname resolution stopped at local files (`/etc/hosts`) and never queried DNS.

> [!IMPORTANT]
> `nsswitch.conf` controls how Linux resolves hostnames, users, groups, and other system databases.  
> Even with working DNS servers, hostname resolution fails if `dns` is missing from the lookup order.

---

## Fix

Updated the `hosts` line in `/etc/nsswitch.conf`.

<p align="center">
<img width="611" height="23" alt="Jakarta pt5" src="https://github.com/user-attachments/assets/11e28518-f2b8-4a8c-aa01-0f0350d1c205" />
</p>

```bash
sudo vi /etc/nsswitch.conf
```

---

## Before

<p align="center">
<img width="836" height="464" alt="Jakarta pt6" src="https://github.com/user-attachments/assets/bdb15863-543b-4f29-add0-395c2fbe731b" />
</p>

## After

<p align="center">
<img width="845" height="463" alt="Jakarta pt7" src="https://github.com/user-attachments/assets/110348c5-e57a-4650-b70d-dac8240435d2" />
</p>

This immediately restored DNS resolution without restarting services.

> [!TIP]
> The typical Linux hostname lookup order is:
>
> ```text
> files dns
> ```
>
> Meaning:
>
> - Check `/etc/hosts` first  
> - Query DNS servers if no local match exists

---

## Verification

<p align="center">
<img width="610" height="45" alt="Jakarta pt8" src="https://github.com/user-attachments/assets/66dcad85-43ab-4264-9200-7e2bcddf8e81" />
</p>

```bash
ping google.com
```

## Result

Hostname resolution works as expected.

---

## Key Commands Used

- `ping`  
- `cat /etc/resolv.conf`  
- `cat /etc/nsswitch.conf`  
- `vi /etc/nsswitch.conf`  
- `iptables -L`  

---

## Why These Commands

### `ping`

Identifies hostname resolution failure.

- Fails when DNS is broken, even if network connectivity exists  
- Quickly confirms whether hostname lookups are functioning  

---

### `cat /etc/resolv.conf`

Verifies DNS configuration exists.

- Confirms that a nameserver is defined  
- Helps validate resolver configuration  

---

### `cat /etc/nsswitch.conf`

Identifies hostname lookup order.

- Shows whether `dns` is included in the resolution process  
- Critical for diagnosing lookup-chain issues  

---

### `vi /etc/nsswitch.conf`

Restores DNS resolution.

- Adding `dns` enables hostname lookups through DNS servers  
- Fixes the system lookup path immediately  

---

### `iptables -L`

Rules out firewall interference.

- Confirms outbound traffic is not blocked  
- Helps eliminate networking-layer causes  

---

## What I Learned

- DNS issues are often about lookup configuration, not DNS servers themselves  
- `nsswitch.conf` controls hostname resolution order in Linux  
- Resolver configuration and lookup configuration are separate concepts  
- Fast diagnosis comes from understanding the resolution path, not guessing fixes

