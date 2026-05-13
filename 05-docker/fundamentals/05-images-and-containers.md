# Images and Containers

## Overview

This section explains the difference between **Docker images** and **containers** and how they work together in modern application deployment. It focuses on how images provide a consistent blueprint while containers act as running application instances.

Understanding this is essential for building, deploying, and managing applications reliably across different **environments** and infrastructure platforms.

---

## Images & Containers

### What are Docker Images?

Templates used to create containers  

**Key Characteristics:**
- Immutable once created  
- Portable across environments  
- Contain application code and dependencies  
- Used as the blueprint for containers  

Think of an image like a snapshot of an application at a specific moment in time.

---

### What are Containers?

Running instances created from Docker images  

**Key Characteristics:**
- Execute the application  
- Can be started, stopped, and removed  
- Isolated from other containers  
- Share the host operating system kernel  

If an image is the recipe, the container is the final dish created from it.

---

## Dockerfiles

### What is a Dockerfile?

A file used to build Docker images through instructions  

**Common Instructions:**
- `FROM` → Define the base image  
- `COPY` → Copy files into the container  
- `RUN` → Execute commands during build  
- `EXPOSE` → Define application ports  
- `CMD` → Specify the startup command  

Dockerfiles automate how images are built and packaged.

---

## Commands

- `docker build` → Build an image from a Dockerfile  
- `docker images` → View local Docker images  
- `docker run` → Create and start a container  
- `docker ps` → View running containers  

---

## Key Takeaways

- **Images** are immutable templates used to create containers  
- **Containers** are running instances of images  
- Images ensure consistency across environments  
- Containers are what applications actually run inside  
- Dockerfiles automate image creation and packaging  

---

## Reflection

Learning about images and containers helped me understand how Docker separates application packaging from application execution. It made it much clearer why containers behave consistently across different environments.

I also learned how Dockerfiles automate the image creation process and why immutability is important for reliability and repeatable deployments. This reinforces the importance of containerisation in modern DevOps workflows.
