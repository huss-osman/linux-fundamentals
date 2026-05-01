# The 7 Layers Of The OSI Model

## Overview

This section breaks down the **7 layers of the OSI model** and how each layer contributes to communication across **networks**. It provides a structured way to understand how data moves from one system to another.

By separating responsibilities into layers, the model makes it easier to understand **network behaviour**, troubleshoot issues, and work with **real-world infrastructure**.

---

## The 7 Layers

### Layer 1 — Physical Layer
**Function:** Transmits raw bits over a physical medium  
**Examples:** Cables, fibre, wireless signals, NICs  

Think of it like shouting in a room — no addressing, just sending signals.

---

### Layer 2 — Data Link Layer
**Function:** Transfers data between devices on the same network and handles error detection  
**Examples:** MAC addresses, switches, Ethernet  

Acts like a traffic controller, ensuring data moves correctly between nearby devices.

---

### Layer 3 — Network Layer
**Function:** Determines how data is routed to its destination  
**Examples:** IP addresses, routers, routing protocols  

Responsible for getting data from one network to another.

---

### Layer 4 — Transport Layer
**Function:** Provides end-to-end communication and data reliability  
**Examples:** TCP, UDP  

Think of it as a delivery service — ensuring data arrives correctly (TCP) or quickly (UDP).

---

### Layer 5 — Session Layer
**Function:** Establishes, maintains, and terminates communication sessions  

Manages connections between systems and keeps communication organised.

---

### Layer 6 — Presentation Layer
**Function:** Translates and formats data, handles encryption and encoding  

Ensures data is in a usable format between systems.

---

### Layer 7 — Application Layer
**Function:** Provides network services directly to applications  
**Examples:** HTTP, DNS, FTP, SMTP  

This is where users interact with the network.

---

## Commands

While this is concept-based, these tools relate to different OSI layers:

- `ping` → Test **network layer connectivity**  
- `traceroute` → Trace packet paths across networks  
- `curl` → Interact with **application layer protocols**  
- `ss` / `netstat` → Inspect **transport layer connections**  

---

## Key Takeaways

- The **OSI model** is made up of **7 layers**, each with a specific role  
- It provides a standard way for systems to communicate  
- Each layer operates independently, allowing easier **troubleshooting**  
- Lower layers handle transmission, higher layers handle interaction  
- The model helps simplify complex **network communication**  

---

## Reflection

Learning the OSI model helped me understand networking in a more structured way. Instead of seeing communication as one process, I can now break it down into layers and understand where things happen.

I also learned that each layer has a clear responsibility, which makes debugging easier. This reinforces the importance of understanding **network layers** when working with **cloud systems** and troubleshooting real-world issues.
