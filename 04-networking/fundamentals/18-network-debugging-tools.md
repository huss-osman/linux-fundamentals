# Network Debugging Tools

## Overview

**DNS debugging tools** are essential for understanding how name resolution works in real systems. Tools like `nslookup` and `dig` allow you to inspect DNS responses, verify records, and troubleshoot resolution issues across environments.

While both tools perform DNS queries, they differ in **depth and flexibility**:

- `nslookup` → simple, quick lookups  
- `dig` → detailed, structured, and preferred for debugging  

Understanding their output helps you trace issues related to **caching, authoritative responses, and record propagation**.

---

## Key Concepts

- **DNS Resolver** – The server your system queries (often ISP or local network)
- **Port 53** – Standard port used for DNS queries (UDP/TCP)
- **Authoritative Answer** – Response from the source of truth (authoritative server)
- **Non-Authoritative Answer** – Response from cache (resolver or intermediate)
- **TTL (Time To Live)** – Indicates how long a response can be cached
- **Multiple A Records** – Used for load balancing / redundancy

---

## Commands

### nslookup (Basic Query Tool)

<img width="550" src="https://github.com/huss-osman/devops-learning/blob/main/images/nslookup.png">

```bash
nslookup google.com
```

What you see:

- Server: 10.255.255.254
→ The DNS resolver handling your query (often router or ISP)
- Address: 10.255.255.254#53
→ Same resolver + port 53 (DNS standard port)
- Non-authoritative answer:
→ Response came from cache, not directly from the authoritative DNS servers
- Address: 142.x.x.x
→ The resolved IP used to reach the domain

Use case:
Quick checks, verifying basic resolution

---

### dig (Advanced Query Tool)

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/dig%20command.png">

```bash
dig google.com
```

Key sections:

- QUESTION SECTION
→ What you asked (e.g. google.com IN A)
- ANSWER SECTION
→ Returned records (often multiple IPs)
- Query time
→ Time taken for the lookup

Why multiple IPs?
→ Load balancing, redundancy, geo-routing

---

### dig (Short Output)

<img width="450" src="https://github.com/huss-osman/devops-learning/blob/main/images/dig%20shortened%20version.png">

```bash
dig +short google.com
```

→ Returns only the IP addresses (clean output)

---

### dig Nameservers

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/dig%20%2Bshort%20ns%20google.com%20command.png">

```bash
dig +short ns google.com
```

→ Returns authoritative **name servers** for the domain
→ Shows where the domain is actually managed

---

## Key Takeaways

- `nslookup` is simple but limited
- `dig` provides detailed, structured DNS responses
- DNS queries typically use **port 53**
- Non-authoritative answers come from cache
- Domains often resolve to **multiple IPs**
- `dig +short` is useful for clean scripting output
- Checking **NS records** helps identify the source of truth

---

## Reflection

Working with `nslookup` and `dig` makes DNS feel less abstract and more observable. Instead of guessing, you can see exactly how a domain resolves, where the answer comes from, and how caching affects results.

Understanding these tools is critical when debugging real-world issues especially when DNS appears correct but behavior doesn’t match expectations.
