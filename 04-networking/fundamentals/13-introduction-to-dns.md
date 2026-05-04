# Introduction To DNS

## Overview

This section introduces **DNS (Domain Name System)** and how it enables communication across **networks** by translating human-readable domain names into **IP addresses**.

It helps build a clear understanding of how requests are resolved on the internet and is essential for **troubleshooting**, **debugging**, and working with **real-world infrastructure**.

---

## What You’ll Learn

This section is structured to help you understand how DNS works and how it is used in real systems:

- **What is DNS and its role in networking**  
  Understanding how domain names map to **IP addresses**

- **DNS Components**  
  Exploring resolvers, name servers, and how DNS is structured  

- **DNS Records**  
  Learning key records such as **A, CNAME, MX, and TXT**  

- **How DNS Works (DNS Process)**  
  Step-by-step flow of how a domain is resolved  

- **DNS Tools**  
  Using tools to query and debug DNS  

- **Using `/etc/hosts`**  
  Overriding DNS locally for testing and development  

---

## Commands

These tools help interact with and troubleshoot DNS:

- `nslookup` → Query **DNS records**  
- `dig` → Detailed DNS lookups and troubleshooting  
- `ping` → Test domain resolution to an **IP address**  
- `cat /etc/hosts` → View local DNS overrides  

---

## Key Takeaways

- **DNS** translates domain names into **IP addresses**  
- It is a critical part of how the **internet works**  
- DNS uses different record types for different purposes  
- Understanding DNS helps with **troubleshooting connectivity issues**  
- Local overrides like `/etc/hosts` are useful for testing  

---

## Reflection

Learning about **DNS** helped me understand how users interact with the internet without needing to remember IP addresses. It showed me how requests are resolved behind the scenes before reaching a server.

I also learned how different components and records work together in the DNS process. This reinforces the importance of understanding **DNS** when working with **cloud infrastructure** and debugging real-world networking issues.
