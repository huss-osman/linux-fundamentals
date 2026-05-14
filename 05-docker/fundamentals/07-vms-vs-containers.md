# VMs vs. Containers

## Overview

This section compares **virtual machines (VMs)** and **containers** and explains how both are used to isolate applications and workloads. It focuses on the architectural differences between the two approaches and why containers are considered more lightweight and efficient.

Understanding this is essential for working with **cloud infrastructure**, **Docker**, and modern DevOps environments where choosing the right isolation method matters.

---

## VMs vs Containers

### Virtual Machines (VMs)
**Function:** Run multiple full operating systems on a single physical machine  

**Key Components:**
- Infrastructure  
- Host Operating System  
- Hypervisor  
- Guest Operating System  
- Application + Binaries/Libraries  

Each virtual machine runs its own complete guest operating system, providing strong isolation between environments.

---

### Containers
**Function:** Isolate applications using shared operating system resources  

**Key Components:**
- Infrastructure  
- Host Operating System  
- Docker Engine  
- Application + Binaries/Libraries  

Containers share the host operating system kernel, making them much lighter and faster than virtual machines.

---

## Key Differences

### Startup Time
**VMs:** Slower startup because a full operating system must boot  
**Containers:** Start within seconds because they share the host OS  

Containers are significantly faster to deploy and scale.

---

### Resource Usage
**VMs:** Require more CPU, memory, and storage  
**Containers:** More lightweight and resource efficient  

Containers avoid the overhead of running multiple guest operating systems.

---

### Isolation
**VMs:** Strong isolation through separate operating systems  
**Containers:** Process-level isolation using shared kernels  

VMs provide stronger separation, while containers prioritise efficiency.

---

### Portability
**VMs:** Larger and less portable  
**Containers:** Highly portable across environments  

Containers can run consistently across laptops, servers, and cloud platforms.

---

## Commands

- `docker ps` → View running containers  
- `docker stats` → Monitor container resource usage  
- `docker inspect` → Inspect container configuration  
- `top` / `htop` → Monitor system resource usage  

---

## Key Takeaways

- Virtual machines run full guest operating systems  
- Containers share the host operating system kernel  
- Containers are more lightweight and resource efficient  
- VMs provide stronger isolation than containers  
- Containers are better suited for fast, scalable deployments  

---

## Reflection

Learning the difference between virtual machines and containers helped me understand why containerisation became so important in modern infrastructure. Containers solve many efficiency and portability problems that traditional virtual machines struggle with.

I also learned that both technologies still have important use cases depending on the level of isolation and resource efficiency required. This reinforces the importance of understanding infrastructure decisions in real-world DevOps environments.
