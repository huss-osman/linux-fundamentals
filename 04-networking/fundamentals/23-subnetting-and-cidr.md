# Subnetting And CIDR

## Overview

This section explains **Subnetting** and **CIDR (Classless Inter-Domain Routing)** and how they are used to organise and manage IP address space efficiently. It focuses on breaking **networks into smaller segments** and defining address ranges.

Understanding **subnetting** and **CIDR** is essential for working with network design, cloud environments, and optimising resource usage in real-world infrastructure.

---

## What Is Subnetting?

**Subnetting**

The process of dividing a network into smaller, more manageable sub-networks.

### Role in Networking

- Improves network organisation
- Enhances performance and security
- Reduces broadcast domains
- Makes networks easier to manage

Subnetting allows large networks to be structured efficiently.

---

## What Is CIDR?

**CIDR (Classless Inter-Domain Routing)**

### CIDR Format

- **Written as**: `IP_address/prefix_length`
- **Example**: `192.168.1.0/24`

The **prefix length** determines how many bits are used for the network portion.

---

## Commands 

- `ip addr` → View IP addresses on a system
- `ip route` → View routing table
- `ifconfig` → Display network interfaces
- `ping` → Test connectivity between hosts

---

## Key Takeaways

- **Subnetting** divides networks into smaller segments
- It improves **performance, security, and management**
- **CIDR** replaces older class-based addressing
- **CIDR** allows flexible and efficient IP allocation
- Prefix length determines **network vs host portion**
- Essential for (**cloud, DevOps, and network design**

---

## Reflection

Learning **Subnetting** and **CIDR** made it clear how **networks** are structured behind the scenes rather than just appearing as a single flat space.

It also showed how efficient **IP management** is critical in real-world systems, especially in **cloud environments** where resources need to be carefully allocated and scaled.



