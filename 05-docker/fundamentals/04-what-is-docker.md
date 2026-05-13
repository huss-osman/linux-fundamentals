# What is Docker?

## Overview

This section introduces **Docker**, a platform used to build, package, and run applications inside **containers**. It focuses on how Docker simplifies application deployment and improves consistency across different environments.

It helps build an understanding of how **Docker Engine**, **Docker Hub**, and **Docker Compose** work together, making Docker essential for **containerisation**, cloud infrastructure, and modern DevOps workflows.

---

## Docker  
A platform used to build, package, and run applications inside **containers**

### Role in Modern Development
- Simplifies application deployment  
- Packages applications with dependencies  
- Ensures consistency across environments  
- Helps applications run reliably across systems  

Docker acts as a bridge between development and deployment environments.

---

## Key Concepts

### Docker Engine
**Function:** Runs and manages containers on a system  
**Examples:** Creating containers, managing images, running applications  

Docker Engine is the core runtime that powers Docker containers, similar to how an engine powers a car.

---

### Docker Hub
**Function:** Stores and shares Docker images  
**Examples:** Official images, community images, custom images  

Docker Hub acts like an app store for Docker images where users can pull, share, and publish container images.

---

### Docker Compose
**Function:** Defines and manages multi-container applications  
**Examples:** Web servers, databases, cache services  

Docker Compose helps organise multiple containers together as part of a single application using a configuration file.

For example, an application may require:
- a website container
- a database container
- a cache container

Docker Compose helps define how these services run and communicate together.

---

## Commands

These tools are commonly used when working with Docker:

- `docker ps` → View running **containers**  
- `docker images` → View local **Docker images**  
- `docker pull` → Download images from **Docker Hub**  
- `docker compose up` → Start multi-container applications  

---

## Key Takeaways

- **Docker** is a platform used to build and run containers  
- Docker Engine powers and manages containers  
- Docker Hub stores and distributes container images  
- Docker Compose manages multi-container applications  
- Understanding Docker is essential for modern **DevOps** and cloud workflows  

---

## Reflection

Learning about Docker helped me understand how modern applications are packaged and managed consistently across environments. It made it clear how Docker simplifies deployment and application management.

I also learned how components like **Docker Engine**, **Docker Hub**, and **Docker Compose** work together as part of the container ecosystem. This reinforces the importance of Docker in modern software development and infrastructure workflows.
