# Static Vs Dynamic Routing

## Overview

This section explains the difference between **static routing** and **dynamic routing** and how each approach is used to manage traffic across networks. It focuses on how routes are defined, maintained, and adapted as network conditions change.

Understanding this is essential for working with **network design**, **cloud infrastructure**, and ensuring reliable and scalable communication in real-world environments.

---

## Routing Types

### What is Static Routing?

**Static Routing**  
Manually configured routes set by a network administrator.

**Characteristics:**
- Fixed paths for traffic  
- Requires manual configuration  
- Simple and predictable  
- Does not adapt to network changes  

**Use Cases:**
- Small networks  
- Stable environments  
- Controlled routing scenarios  

---

### What is Dynamic Routing?

**Dynamic Routing**  
Routes are automatically learned and updated using routing protocols.

**Characteristics:**
- Automatically adjusts paths  
- Uses routing protocols (BGP, OSPF, etc.)  
- Scalable and flexible  
- Adapts to failures and changes  

**Use Cases:**
- Large networks  
- Cloud environments  
- Complex infrastructures  

---

## Static vs Dynamic (Key Difference)

- **Static Routing** → Manual, fixed, predictable  
- **Dynamic Routing** → Automated, adaptive, scalable  

---

## Commands

- `ip route` → View routing table  
- `route -n` → Display routing table (numeric)  
- `traceroute` → Show path packets take  
- `tracepath` → Trace route with path details  

---

## Key Takeaways

- **Static routing** is simple but does not scale well  
- **Dynamic routing** adapts automatically to network changes  
- Static routes require manual updates when paths change  
- Dynamic routing uses protocols to determine the best path  
- Choosing between them depends on **network size and complexity**  
- Dynamic routing is essential for modern **cloud and distributed systems**  

---

## Reflection

Learning the difference between static and dynamic routing made it clear how networks handle change. Static routing works well in controlled environments, but quickly becomes limiting as networks grow.

Dynamic routing shows how modern systems stay resilient by adapting in real time. This is especially important in cloud environments where infrastructure is constantly changing.
