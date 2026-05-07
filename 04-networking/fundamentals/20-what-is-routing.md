# What Is Routing

## Overview

This section explains what **routing** is and its role in **networking**. It focuses on how data travels between networks and how routers determine the best path for delivery.

Understanding routing is essential for working with **cloud infrastructure**, **network performance**, and troubleshooting real-world connectivity issues.

---

## What Is Routing?

**Routing**  
The process of determining the path that data takes across networks to reach its destination.

### Role in Networking
- Enables communication between different networks  
- Determines how data moves from source to destination  
- Ensures efficient and reliable data delivery  

Routing acts as the decision-making system behind how data travels across the internet.

---

## Types of Routing

There are two main types:

- **Static Routing** → Manually configured paths  
- **Dynamic Routing** → Automatically learned paths  

➡️ [View Static vs Dynamic Routing](./21-static-vs-dynamic-routing.md)

---

## Routing Protocols

Routing protocols help routers share information and decide the best path for data.

- **BGP (Border Gateway Protocol)**  
  Used across the internet to route traffic between different networks (autonomous systems)

- **OSPF (Open Shortest Path First)**  
  Used within internal networks to determine the fastest path based on network state

➡️ [View Common Routing Protocols](./22-common-routing-protocols.md)

---

## Commands

These tools help observe and debug routing:

- `ip route` → View routing table  
- `route -n` → Display routing table (numeric format)  
- `traceroute google.com` → Show path packets take  
- `tracepath google.com` → Trace route with path details  

---

## Key Takeaways

- **Routing** determines how data travels between networks  
- Routers use **routing tables** to make forwarding decisions  
- The goal is to choose the most **efficient path**, not just the shortest  
- Routing is essential for **performance, reliability, and connectivity**  
- Static and dynamic routing define how routes are managed  
- Protocols like BGP and OSPF enable scalable network communication  
- Understanding routing is critical for **cloud, DevOps, and infrastructure work**  

---

## Reflection

Learning about routing helped me understand how data actually moves across networks instead of assuming it just reaches its destination directly. It made it clear that multiple decisions happen behind the scenes to determine the best path.

This understanding is important when working with distributed systems, where performance and reliability depend heavily on how traffic is routed. It also reinforces why networking knowledge is essential in real-world environments.
