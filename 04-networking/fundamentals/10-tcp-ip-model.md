# TCP/IP Model

## Overview

This section introduces the **TCP/IP model**, a practical framework used to describe how data is transmitted across **networks**. It simplifies communication into four layers that are used in real-world systems.

It helps build an understanding of how protocols like **TCP**, **UDP**, and **IP** work together, making it essential for **network troubleshooting**, **cloud infrastructure**, and modern applications.

---

## The 4 Layers

### Layer 1 — Network Access Layer
**Function:** Handles how data is physically transmitted over the network  
**Examples:** Ethernet, Wi-Fi, switches, MAC addresses  

This is where data is sent across physical media, similar to the lower layers (Physical + Data Link) in the OSI model.

---

### Layer 2 — Internet Layer
**Function:** Determines how data is addressed and routed across networks  
**Examples:** IP, ICMP  

Responsible for delivering packets from one network to another using **IP addressing**.

---

### Layer 3 — Transport Layer
**Function:** Provides end-to-end communication and data delivery  
**Examples:** TCP, UDP  

Think of it as the delivery service — ensuring data arrives reliably (TCP) or quickly (UDP).

---

### Layer 4 — Application Layer
**Function:** Provides network services directly to applications  
**Examples:** HTTP, DNS, FTP, SMTP, TLS  

This is where users and applications interact with the network.

---

## Commands

These tools relate to different TCP/IP layers:

- `ping` → Test **internet layer connectivity (IP)**  
- `traceroute` → Trace packet paths across networks  
- `curl` → Interact with **application layer protocols (HTTP/HTTPS)**  
- `ss` / `netstat` → Inspect **transport layer connections (TCP/UDP)**  

---

## Key Takeaways

- The **TCP/IP model** has **4 layers**, compared to 7 in the OSI model  
- It is the model used in **real-world networking and the internet**  
- Multiple OSI layers are combined into fewer TCP/IP layers  
- It provides a more practical view of how data actually flows  
- Understanding it is essential for **cloud infrastructure and troubleshooting**  

---

## Reflection

Learning the TCP/IP model helped me connect networking theory to how systems actually operate. It feels more practical compared to the OSI model and easier to relate to real-world protocols.

I also learned how core protocols like **TCP**, **UDP**, and **IP** fit into this structure. This reinforces the importance of understanding communication models when working with **cloud systems** and debugging network issues.
