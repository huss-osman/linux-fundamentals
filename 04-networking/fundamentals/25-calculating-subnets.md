# Calculating Subnets

## Overview

This section explains how to **calculate subnets** and determine valid **host ranges** within a network. It focuses on how subnet masks divide IP addresses into **network and host portions**.

Understanding subnet calculations is essential for working with **network design, IP allocation**, and troubleshooting connectivity in real-world environments.

---

## What Is Subnet Calculation?

**Subnet Calculation**

The process of determining how a network is divided into smaller subnets and identifying usable IP ranges.

### Role in Networking

- Divides networks into smaller segments
- Determines **network and host portions**
- Identifies valid host ranges
- Helps optimise IP address usage

Subnet calculation ensures networks are structured efficiently.

---

## Understanding Subnet Masks

**Subnet Mask**

Defines which part of an IP address represents the **network** and which part represents the **host**.

### Common Examples

- `255.0.0.0` → Large network, many hosts
- `255.255.0.0` → Medium-sized network
- `255.255.255.0` → Smaller network
  
Subnet masks control how IP ranges are divided.

---

## Subnet Calculation Basics

When calculating a subnet, you determine:

- **Network Address** → First IP in the range
- **Broadcast Address** → Last IP in the range
- **Usable Hosts** → IPs between network and broadcast

### Example concept:

- Network: `192.168.1.0/24`
- Usable range: `192.168.1.1 – 192.168.1.254`

---

## Commands 

- `ip addr` → View IP addresses on a system
- `ip route` → View routing table
- `ifconfig` → Display network interfaces
- `ping` → Test connectivity


---

## Key Takeaways

- **Subnetting** divides networks into smaller segments
- **Subnet masks** define network vs host portions
- Every subnet has a **network and broadcast address**
- Usable hosts exist between those addresses
- Subnet calculation is essential for **network design and troubleshooting**

---

## Reflection

Learning **subnet calculations** helped me understand how **IP ranges** are actually structured rather than just memorising addresses.

It also made it clear how important proper **network design** is, especially in cloud environments where efficient IP usage directly impacts **scalability and performance**.



