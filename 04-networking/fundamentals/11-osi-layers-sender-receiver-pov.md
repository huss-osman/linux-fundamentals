# OSI Layers: POV of Sender & Receiver

## Overview

This section explains how data flows through the **OSI model** from both the **sender** and **receiver** perspectives. It shows how data is encapsulated as it moves down the layers and then deconstructed as it moves back up.

Understanding this flow helps build a clearer picture of how **network communication** actually works in real-world systems and is essential for **troubleshooting** and debugging.

---

## Sender vs Receiver Flow

### Sender (Encapsulation)

Data starts at the **Application Layer** and moves down:

- **Layer 7 — Application**  
  Creates the request (e.g. HTTP request with data)

- **Layer 6 — Presentation**  
  Formats and encodes data (e.g. JSON → bytes, encryption)

- **Layer 5 — Session**  
  Establishes connection (session/TLS setup)

- **Layer 4 — Transport**  
  Breaks data into segments (TCP/UDP, ports like 443)

- **Layer 3 — Network**  
  Adds IP addresses and creates packets

- **Layer 2 — Data Link**  
  Wraps packets into frames and adds MAC addresses

- **Layer 1 — Physical**  
  Converts data into signals (electrical, radio, light)

---

### Receiver (Decapsulation)

Data moves back up the layers:

- **Layer 1 — Physical**  
  Receives signals and converts to bits

- **Layer 2 — Data Link**  
  Reconstructs frames from bits

- **Layer 3 — Network**  
  Extracts IP packet information

- **Layer 4 — Transport**  
  Reassembles segments into full data

- **Layer 5 — Session**  
  Maintains and manages the connection

- **Layer 6 — Presentation**  
  Decrypts and formats data

- **Layer 7 — Application**  
  Processes the request (e.g. web server handles HTTP)

---

## Commands

These tools help observe parts of this process:

- `curl` → Sends **application layer requests (HTTP)**  
- `ping` → Tests **network layer connectivity (IP)**  
- `traceroute` → Shows packet path across networks  
- `ss` / `netstat` → View **transport layer connections**  

---

## Key Takeaways

- Data is **encapsulated** going down the OSI layers  
- Data is **decapsulated** going up the layers  
- Each layer adds or removes specific information  
- Sender and receiver follow the same layers in reverse  
- Understanding this flow is key for **debugging network issues**  

---

## Reflection

Seeing the OSI model from both the sender and receiver perspective helped me understand how data actually moves across a network. It’s not just layers in theory, but a step-by-step process of building and unpacking data.

I also learned how each layer contributes to the full communication process. This reinforces the importance of understanding **data flow across layers** when troubleshooting issues in **real-world systems**.
