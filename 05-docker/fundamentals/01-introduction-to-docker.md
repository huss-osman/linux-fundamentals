# Introduction To Docker

## Overview

This module introduces the core concepts of **Docker** and **containerisation** used in modern DevOps environments. It focuses on understanding how applications are packaged, isolated, deployed, and managed consistently across different systems.

This is useful in real-world environments where understanding **containers**, **images**, and **service communication** is essential. Instead of relying on commands blindly, building a strong foundation in Docker helps make sense of how applications behave and how modern infrastructure is deployed.

---

## What You’ll Learn

This module is structured to take you from fundamentals to practical, real-world containerisation concepts:

- [Introduction to Docker](./01-introduction-to-docker.md)  
  Understanding what Docker is, how containers work, and why containerisation matters

- [What are Containers?](./02-what-are-containers.md)  
  Learning how containers isolate applications and environments

- [Docker Basics](./04-what-is-docker.md)  
  Understanding Docker architecture, images, and containers

- [Creating Docker Images](./10-understanding-the-dockerfile.md)  
  Learning how Dockerfiles are used to build custom container images

- [Docker Networking](./14-introduction-to-docker-networking.md)  
  Understanding how containers communicate across Docker networks

- [Docker Compose](./17-introduction-to-docker-compose.md)  
  Managing multi-container applications using Compose

- [Docker Registry](./21-docker-registries.md)  
  Understanding DockerHub and container image registries

- [Practical Example](../assignments/11-dockerise-web-application.md)  
  Applying Docker concepts through a real containerised application project

- [Advanced Topic Overview](./28-orchestration-overview.md)  
  Introduction to orchestration concepts such as Docker Swarm and Kubernetes

- [Troubleshooting and Best Practices](../labs/25-debugging-networking-issues.md)  
  Debugging containers, networking issues, and common Docker problems

---

## Commands

While this section is concept-focused, you will later apply your knowledge using tools such as:

- `docker ps` → View running **containers**  
- `docker images` → View local **Docker images**  
- `docker logs` → Inspect **container logs**  
- `docker exec` → Access a running **container shell**  
- `docker compose up` → Start **multi-container applications**  

---

## Key Takeaways

- **Docker** enables consistent application deployment across environments  
- Containers package applications together with their dependencies  
- Docker simplifies development, testing, and deployment workflows  
- Understanding containers is essential before working with **Kubernetes** and cloud-native systems  
- Strong Docker fundamentals improve troubleshooting and operational understanding  

---

## Reflection

Working through Docker fundamentals helped me understand how modern applications are packaged and deployed consistently across environments. It’s not just about running containers, but understanding how services communicate, how images are built, and how applications behave inside isolated environments.

I also learned that concepts like **Dockerfiles**, **networking**, and **Compose workflows** are critical in real-world DevOps environments. This reinforces the importance of strong containerisation knowledge before moving into orchestration tools such as **Kubernetes** and production cloud deployments.
