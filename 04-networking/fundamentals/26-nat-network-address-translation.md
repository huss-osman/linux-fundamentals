# NAT (Network Address Translation)

## Overview

This section explains what **NAT (Network Address Translation)** is and how it enables communication between **private networks** and the **internet**. It focuses on how private IP addresses are translated into public IP addresses.

Understanding NAT is essential for working with **cloud infrastructure, network security**, and managing real-world connectivity between internal systems and external services.

---

## What Is NAT?

**NAT (Network Address Translation)**

A method used to translate **private IP addresses** into a **public IP address** so devices can communicate over the internet.

### Role in Networking

- Allows internal devices to access external networks
- Translates private IPs to public IPs
- Enables communication between local networks and the internet
- Helps conserve public IP addresses

NAT acts as a bridge between **private networks** and the **public internet**.

---

## Types of NAT

**Static NAT** → One-to-one mapping (private ↔ public IP)
**Dynamic NAT** → Pool of public IPs assigned dynamically
**PAT (Port Address Translation)** → Many devices share one public IP using ports

---

## Commands 

- `ip addr` → View IP addresses on a system
- `ip route` → View routing table
- `netstat -r` → Display routing information
- `ping` → Test connectivity

---

## Key Takeaways

- **NAT** translates **private IPs** into **public IPs**
- Enables devices to access the **internet**
- Conserves limited **public IP addresses**
- Adds a **layer of security** by hiding **internal IPs**
- **PAT** allows multiple devices to share one **public IP**
- Essential for modern **networking and cloud environments**

---

## Reflection

Learning about **NAT** helped me understand how devices inside a **private network** can communicate with the outside world without exposing their actual **IP addresses**.

It also showed how important **NAT** is for **scalability and security**, especially in **cloud environments** where efficient **IP usage and controlled access** are critical.



