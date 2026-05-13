# Ports and Protocols RECAP

## Overview

This section revisits the core concepts of **ports and protocols** and how they enable communication across **networks**. It reinforces how devices use ports as communication endpoints and protocols as the rules for data transmission.

Understanding this is essential for working with **network services**, **cloud infrastructure**, and troubleshooting real-world connectivity issues.

---

## Ports & Protocols

### What are Ports?
**Function:** Logical endpoints used to direct traffic to the correct service on a device  

**Common Ports:**
- **80** → HTTP  
- **443** → HTTPS  
- **22** → SSH  
- **53** → DNS  
- **25** → SMTP  

Think of ports like doors — each one is used for a specific type of communication.

---

### What are Protocols?
**Function:** Rules that define how data is transmitted between devices  

**Common Protocols:**
- **HTTP / HTTPS** → Web communication  
- **FTP** → File transfer  
- **SMTP** → Email sending  
- **DNS** → Domain name resolution  

Protocols ensure devices can understand each other.

---

## TCP vs UDP

### TCP (Transmission Control Protocol)
**Characteristics:**
- Connection-oriented  
- Requires handshake (3-way handshake)  
- Reliable and ordered data delivery  
- Error-checking and retransmission  

**Use Cases:**
- Web browsing (HTTP/HTTPS)  
- Email  
- File transfers  

---

### UDP (User Datagram Protocol)
**Characteristics:**
- Connectionless  
- No handshake required  
- Faster but less reliable  
- No guaranteed delivery or order  

**Use Cases:**
- Video streaming  
- Online gaming  
- DNS queries  
- VPN  

---

## Commands

- `netstat` / `ss` → View open **ports and connections**  
- `lsof -i` → Check which processes are using ports  
- `curl` → Send **HTTP/HTTPS requests**  
- `nc` (netcat) → Test port connectivity  

---

## Key Takeaways

- **Ports** act as communication endpoints on a device  
- **Protocols** define how data is transmitted  
- **TCP** prioritises reliability and accuracy  
- **UDP** prioritises speed and performance  
- Both are essential for different **real-world use cases**  

---

## Reflection

Revisiting ports and protocols helped reinforce how devices actually communicate across a network. It’s not just theory — every request depends on the correct port and protocol working together.

I also learned how TCP and UDP serve different purposes depending on the situation. This reinforces the importance of choosing the right approach when working with **network services** and troubleshooting connectivity issues.
