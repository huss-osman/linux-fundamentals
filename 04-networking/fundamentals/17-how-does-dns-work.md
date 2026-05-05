# How Does DNS Work

## Overview

This section explains how **DNS resolution** works — the process of translating a **domain name** (like `google.com`) into an **IP address** that machines can understand.

It involves multiple steps and servers working together in a structured hierarchy. Understanding this flow is essential for **network troubleshooting**, **system design**, and working with **cloud infrastructure**.

---

## DNS Basics

- DNS converts **domain names → IP addresses**  
- The process involves multiple systems:
  - Client (your machine)
  - DNS Resolver
  - Root Servers
  - TLD Servers
  - Authoritative Name Servers  

---

## DNS Hierarchy

DNS is structured in layers:

- **Root Server (The Boss)**  
  Knows where to find TLD servers (.com, .org, etc)  
  Does NOT store actual domain IPs  

- **TLD Server (.com, .org, etc)**  
  Knows which authoritative server handles a domain  

- **Authoritative Name Server**  
  Stores the actual DNS records (A, AAAA, etc)  
  Returns the final IP address  

- **Domain / Zone File**  
  Contains all DNS records for that domain  

---

## DNS Resolution Process (Step-by-Step)

### Step 1 — User Request

You enter: 

www.google.com

---

### Step 2 — Local Check

The system checks:
- Browser cache  
- OS cache  
- `/etc/hosts` file  

If found → return IP immediately  

---

### Step 3 — Query DNS Resolver

If not cached:
- Request goes to a **DNS Resolver** (ISP or public DNS like 8.8.8.8)

---

### Step 4 — Ask Root Server

Resolver asks: 

Where is .com?

Root responds with:

Go to TLD server (.com)

---

### Step 5 — Ask TLD Server

Resolver asks:

Where is google.com?

TLD responds with:

Go to authoritative name server for google.com

---

### Step 6 — Ask Authoritative Server

Resolver asks:

What is the IP for www.google.com?

Authoritative server responds with:

142.250.xxx.xxx

---

### Step 7 — Return Response

- Resolver sends IP back to client  
- Client can now connect to the server  

---

### Step 8 — Caching

- Resolver caches the result (based on TTL)  
- Next request is much faster  

---

## Full Flow Summary

1. User enters domain  
2. Local cache checked  
3. Resolver queried  
4. Root server contacted  
5. TLD server contacted  
6. Authoritative server returns IP  
7. IP returned to user  
8. Connection established  

---

## Commands

These commands help observe DNS resolution:

- `dig google.com` → Full DNS query  
- `dig +trace google.com` → See full resolution path  
- `nslookup google.com` → Simple DNS lookup  
- `cat /etc/hosts` → Check local overrides  

---

## Key Takeaways

- DNS is a **distributed system** with multiple layers  
- Resolution follows a **hierarchical path**  
- Caching improves performance significantly  
- Root → TLD → Authoritative is the core flow  
- Understanding DNS is critical for **debugging connectivity issues**  

---

## Reflection

Learning how DNS works helped me understand what actually happens behind a simple request like visiting a website. It’s not just one lookup, but a structured process involving multiple servers.

I also learned how important caching and hierarchy are for performance and scalability. This reinforces the importance of understanding DNS when working with **real-world systems**, **cloud environments**, and troubleshooting network issues.
