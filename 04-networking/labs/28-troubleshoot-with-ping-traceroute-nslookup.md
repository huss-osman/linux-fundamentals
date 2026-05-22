# Troubleshoot With Ping, Traceroute, Nslookup

## Overview

**Network debugging tools** like **ping, traceroute, and nslookup** are essential for diagnosing connectivity and network issues. These tools help identify where problems occur, whether it's within a local network, across the internet, or with DNS resolution.

Understanding how to use these tools is critical for working with **cloud infrastructure, network troubleshooting**, and real-world system debugging.

---

## Key Concepts

- **Ping** – Tests connectivity between devices
- **Traceroute** – Tracks the path packets take to a destination
- **Nslookup** – Queries DNS to resolve domain names
- **Latency** – Time taken for a response
- **Packet Loss** – Data not reaching the destination
- **DNS Resolution** – Converting domain names to IP addresses

---

## Network Debugging Tools

### Ping

- Tests basic connectivity
- Uses ICMP requests and replies
- Helps determine if a host is reachable

<p align="center">
<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/ping%20google.com%20pic.png">
</p>

```bash
ping google.com
```

Used to answer:

**“Can I reach this system?”**

---

### Traceroute

- Shows the path packets take
- Displays each hop between source and destination
- Helps identify where delays or failures occur

<p align="center">
<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/traceroute%20google.com%20pic.png">
</p>

```bash
traceroute google.com   # Linux/macOS  
tracert google.com      # Windows
```

Used to answer:

**“Where is the connection failing?”**

---

### Nslookup

- Queries DNS servers
- Resolves domain names to IP addresses
- Helps diagnose DNS-related issues

<p align="center">
<img width="550" src="https://github.com/huss-osman/devops-learning/blob/main/images/nslookup.png">
</p>

```bash
nslookup google.com
```

Used to answer:

**“Is DNS working correctly?”**

---

## Commands

- `ping` → Test connectivity
- `traceroute / tracert` → Trace network path
- `nslookup` → Check DNS resolution

---

## Key Takeaways

- **Ping** verifies if a system is reachable
- **Traceroute** shows the path and where issues occur
- **Nslookup** checks DNS resolution
- These tools are essential for **real-world troubleshooting**
- Help isolate issues quickly and efficiently

---

## Reflection

Learning these tools made **troubleshooting** feel more structured instead of random guessing. Instead of assuming where the problem is, I can now test connectivity, trace the path, and verify DNS step by step.

This reinforced how important these tools are when working with **cloud systems and real-world infrastructure**, where identifying issues quickly is critical.
