# Introduction to Docker Registries

## Overview

Docker registries allow developers and operations teams to share container images efficiently, making them essential for **cloud deployments**, **CI/CD pipelines**, and modern DevOps workflows.

It helps build an understanding of how container images are pushed, pulled, and managed across development and production environments.

---

## What is a Docker Registry?

A **Docker Registry** is a storage and distribution hub for Docker images.

Think of a Docker registry like a central repository where container images are stored and shared between systems, developers, and environments.

Docker images can be:
- Uploaded to a registry  
- Shared across teams  
- Downloaded onto different systems  
- Used in cloud and production deployments  

---

## Types of Docker Registries

### Public Registries

Public registries allow users to share and download container images publicly.

Examples:
- Docker Hub  
- Amazon ECR Public  

These are commonly used for open-source and publicly available images.

---

### Private Registries

Private registries restrict access to authorised users and organisations.

Examples:
- AWS ECR  
- Azure Container Registry  
- Google Artifact Registry  

Private registries are commonly used in enterprise and production environments for security and access control.

> [!IMPORTANT]
> Private registries help organisations securely manage and distribute production container images.

---

## Commands

These commands are commonly used when working with Docker registries:

- `docker login` → Authenticate to a registry  
- `docker push` → Upload an image to a registry  
- `docker pull` → Download an image from a registry  
- `docker images` → View local Docker images  

---

## Importance of Docker Registries in DevOps

Docker registries play a major role in modern DevOps workflows.

### Streamline Deployment

- Images can be deployed consistently across environments  
- Simplifies CI/CD pipelines  
- Reduces manual deployment steps  

---

### Ensures Consistency

- Teams use the same application images  
- Improves deployment reliability  
- Keeps environments predictable and repeatable  

---

### Enhances Collaboration

- Teams can share container images easily  
- Simplifies development and operations workflows  
- Supports scalable cloud-native deployments  

Docker registries help organisations manage containerised applications more efficiently while improving scalability, automation, and consistency.

---

## Key Takeaways

- Docker registries store and distribute Docker images  
- Images can be pushed and pulled across systems and environments  
- Public registries allow open sharing of images  
- Private registries improve security and access control  
- Docker registries are essential for CI/CD and cloud deployments  
- Understanding registries is important for modern DevOps workflows  

---

## Reflection

It reinforced how important consistency and portability are when working with containerised applications, especially in cloud and CI/CD environments.

I also learned how registries simplify collaboration between teams by allowing container images to be centrally managed and distributed securely.
