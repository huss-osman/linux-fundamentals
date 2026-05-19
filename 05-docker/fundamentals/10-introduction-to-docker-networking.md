# Docker Networking

## Overview

Docker networking allows **containers** to communicate with:
- Other containers
- The host machine
- External networks and services

Docker provides different networking modes depending on how isolated or connected you want your containers to be.

Understanding Docker networking is important when building:
- Multi-container applications
- Microservices architectures
- Container-based environments
- Distributed systems

---

## Why Docker Networking Matters

Docker networking plays a major role in how containerised applications communicate securely and efficiently.

In modern DevOps environments, applications are often split into **microservices**, where each service runs inside its own container.

Docker networking ensures these services can:
- Discover each other
- Exchange traffic
- Remain isolated when required
- Scale independently

> [!IMPORTANT]
> Choosing the correct Docker network type is important for both security and application communication.

---

## Docker Networking Types

Docker provides multiple networking modes that control how containers communicate with each other, the host machine, and external networks.

Each networking type is designed for different use cases depending on the level of communication, isolation, and performance required.

The three most common Docker networking types are:

- **Bridge Network** → Default Docker network used for container-to-container communication  
- **Host Network** → Removes isolation and allows containers to use the host machine’s network directly  
- **None Network** → Completely disables networking for the container  

Understanding these networking types is important when designing secure, scalable, and containerised applications in modern DevOps environments.

---

### Bridge Network

The **Bridge** network is Docker’s default networking mode.

Containers connected to the same bridge network can communicate with each other using internal IP addresses and container names.

Think of it like separate rooms in a house connected through an internal intercom system.

Characteristics:
- Isolated from the host machine network
- Provides an extra layer of security
- Commonly used for container-to-container communication

> [!NOTE]
> Most standalone Docker containers use the bridge network by default.

---

### Host Network

The **Host** network removes network isolation between the container and the host machine.

The container uses the host’s networking stack directly.

It is similar to plugging the application directly into the host machine’s network.

Characteristics:
- No network separation between container and host
- Better performance in some scenarios
- Useful for applications requiring direct host communication

> [!IMPORTANT]
> Host networking reduces isolation, so it should be used carefully.

---

### None Network

The **None** network gives a container no network access at all.

This completely isolates the container from:
- External networks
- Other containers
- The internet

Think of it like a room with no doors or windows.

Characteristics:
- Fully isolated environment
- No inbound or outbound network access
- Useful for high-security or offline workloads

---

### Common Docker Networking Commands

- `docker network ls` → View available Docker networks  
- `docker network create` → Create a custom Docker network  
- `docker network inspect` → Inspect network configuration  
- `docker network connect` → Connect a container to a network  
- `docker network rm` → Remove a Docker network

---

## Key Takeaways

- Docker networking controls how containers communicate  
- Bridge is the default Docker networking mode  
- Host networking removes isolation between container and host  
- None networking completely isolates the container  
- Docker networking is essential for microservices architectures  
- Custom networks improve scalability and service communication  

---

## Reflection

Learning Docker networking helped reinforce how containers communicate within modern infrastructure environments.

Understanding the differences between Bridge, Host, and None networking clarified how Docker balances communication, isolation, scalability, and security across different deployment scenarios.

Docker networking is especially important in DevOps because modern applications are often split into multiple services running across containers that must communicate reliably and securely.
