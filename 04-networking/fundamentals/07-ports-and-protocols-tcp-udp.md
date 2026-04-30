# Ports And Protocols TCP, UDP

## Overview

This section introduces **ports** and **protocols**, which define how devices communicate across networks. It explains how ports act as logical endpoints and how protocols like **TCP** and **UDP** control how data is transmitted.

This is useful in real-world environments where understanding how services communicate is essential. These concepts are critical for **web applications**, **APIs**, and **network troubleshooting** in cloud and infrastructure systems.

---

## Commands

These tools help inspect ports, protocols, and network activity:

- `ss -tuln` → View **open ports and listening services**  
- `netstat -tuln` → Inspect **network connections and ports**  
- `curl` → Test **HTTP/HTTPS communication**  
- `nc` (netcat) → Test **port connectivity manually**  

---

## Key Takeaways

- **Ports** are logical endpoints used for communication (e.g. 80, 443)  
- **Protocols** define the rules for data transmission  
- **TCP** is connection-oriented and ensures reliable, ordered delivery  
- **UDP** is connectionless, faster, but less reliable  
- Different applications use different **ports and protocols**  

---

## Reflection

Learning about ports and protocols helped me understand how communication between systems is structured. It’s not just about sending data, but knowing where it goes and how it’s handled.

I also learned that **TCP** and **UDP** serve different purposes depending on reliability and speed requirements. This reinforces the importance of understanding communication methods when working with **web services**, **APIs**, and troubleshooting network issues.
