# DNS Records

## Overview

This section explains **DNS records** and how they define how a domain behaves on the **internet**. DNS records are entries stored in **zone files** that provide specific instructions for routing traffic.

Understanding DNS records is essential for working with **domains**, configuring services, and troubleshooting **network communication** in real-world environments.

---

## DNS Record Structure

Each DNS record contains key components:

- **Record Name**  
  The domain or subdomain being queried  

- **TTL (Time To Live)**  
  How long the record is cached before refresh  

- **Class**  
  Typically `IN` (Internet)  

- **Type**  
  The type of record (A, AAAA, CNAME, MX, TXT)  

- **Data**  
  The value associated with the record (e.g. IP address, domain)  

---

## Common DNS Records

### A Record (IPv4)

- Maps a domain name to an **IPv4 address**  
- Used for basic website routing  

**Example:**
google.com → 216.58.204.79

---

### AAAA Record (IPv6)

- Maps a domain name to an **IPv6 address**  
- Used for modern networking and scalability  

**Example:**
google.com → 2a00:1450:4009:81d::200e

---

### CNAME Record (Alias)

- Maps one domain to another domain  
- Allows multiple domains to point to the same destination  

**Example:**
www.google.com → google.com

---

### MX Record (Mail Exchange)

- Specifies the **mail server** for a domain  
- Includes a **priority value** (lower = higher priority)  

**Example:**
google.com → mailserver.google.com

---

### TXT Record

- Stores **text-based information** for a domain  
- Commonly used for:
  - Verification  
  - Security (SPF, DKIM)  
  - Metadata  

**Example:**
google.com → "v=spf1 include:_spf.google.com ~all"

---

## Commands

These commands help inspect DNS records:

- `dig google.com` → View all DNS information  
- `dig A google.com` → Query IPv4 records  
- `dig AAAA google.com` → Query IPv6 records  
- `dig MX google.com` → Query mail servers  
- `dig TXT google.com` → Query text records

---

## Key Takeaways

- **DNS records** define how traffic is routed for a domain  
- Different record types serve different purposes  
- **A and AAAA** map domains to IP addresses  
- **CNAME** simplifies domain management  
- **MX and TXT** are essential for email and verification  
- Understanding DNS records is critical for **configuration and troubleshooting**  

---

## Reflection

Learning about DNS records helped me understand how domains are actually configured behind the scenes. Instead of just pointing a domain somewhere, I now understand how different record types control traffic and services.

I also learned that small configuration changes in DNS can have a big impact on how systems behave. This reinforces the importance of understanding DNS records when working with **cloud infrastructure** and real-world deployments.
