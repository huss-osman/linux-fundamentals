# Common Routing Protocols

## Overview

This section explains what **routing protocols** are and how they help routers automatically determine the best path for data across networks. It focuses on how protocols like **OSPF** and **BGP** make **routing** scalable and efficient.

Understanding **routing protocols** is essential for working with **large networks, cloud infrastructure**, and ensuring reliable communication between systems.

---

## What Are Routing Protocols?

**Routing Protocols**

Algorithms that routers use to share information and determine the best path for data.

### Role in Networking

- Automate route determination
- Adapt to network changes
- Improve efficiency and reliability

Routing protocols remove the need for manual configuration and allow networks to scale.

---

## Common Routing Protocols

### OSPF (Open Shortest Path First)

**Type:** Link-State Protocol

- Uses **link-state information** to build a full view of the network
- Calculates the **shortest path** using cost-based metrics
- Known for **fast convergence** (quickly adapts to changes)
- Commonly used **within internal networks**

---

### BGP (Border Gateway Protocol)

**Type:** Path-Vector Protocol

- Used to route traffic **between autonomous systems** (large networks)
- Maintains **path information** instead of just shortest distance
- Allows **routing policies and control over traffic flow**
- Forms the backbone of **internet routing**

---

## Commands 

- `ip route` → View routing table
- `traceroute` → Observe packet path
- `ping` → Test connectivity
- `netstat -r` → Display routing information

---

## Key Takeaways

- Routing protocols automate how data finds its path
- **OSPF** is used for internal, fast, efficient routing
- **BGP** is used for large-scale, internet-level routing
- Protocols adapt to failures and network changes
- They are essential for **scalability and reliability**

---

## Reflection

Learning about **routing protocols** made it clear that **routing** isn’t just about fixed paths. It’s about constantly adapting to changes in the **network**.

Understanding **OSPF** and **BGP** helped me see how modern infrastructure stays reliable at scale, especially across complex environments like **cloud** and the **internet**.



