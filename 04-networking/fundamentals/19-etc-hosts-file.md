# Etc Hosts File

## Overview

The `/etc/hosts` file is a local configuration file used for mapping domain names to IP addresses. It exists on your machine and is checked during the name resolution process before DNS queries are made.

This allows you to override normal DNS behavior for specific domains, making it a useful tool for development, testing, and troubleshooting.

---

## Commands

- `sudo vim /etc/hosts`
- `ping dev.local`
- `curl dev.local`
- `ipconfig /flushdns`

---

## Key Takeaways

- `/etc/hosts` is a **local file** stored on your machine  
- It maps **domain names to IP addresses manually**  
- It is typically checked **before DNS resolution**, depending on system configuration  
- If a matching entry exists, the system will use it instead of querying DNS  
- It allows you to **override DNS behavior** for specific domains  
- Common use cases include:
  - Local development (e.g., mapping domains to localhost)
  - Testing environments without changing real DNS records
  - Debugging name resolution issues  
- Behavior is **environment-specific**:
  - WSL uses its own `/etc/hosts`
  - Windows uses its own hosts file for browsers and system apps  
- If resolution appears incorrect, `/etc/hosts` is often a **first place to check**

---

## Reflection

Learning about `/etc/hosts` highlights how name resolution is not always purely dependent on external DNS systems. Local configurations can override expected behavior, which can both help and confuse during debugging.

It reinforces the importance of understanding how systems resolve names internally, especially when working across environments like local machines, containers, and cloud infrastructure.
