<img width="1000" height="500" alt="imageedit_1_5708764918" src="https://github.com/huss-osman/devops-learning/blob/main/images/DockerBanner.png" />

# Docker

![Containers](https://img.shields.io/badge/Containers-Docker-2496ED?logo=docker&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-blue?logo=linux)
![Focus](https://img.shields.io/badge/Focus-Containerisation-purple?logo=docker&logoColor=white)
![Cloud](https://img.shields.io/badge/Cloud-AWS-orange?logo=amazonaws)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Docker and containers** as part of my **DevOps training with CoderCo**.

Docker is a key part of modern infrastructure. It helps package applications with their dependencies so they can run consistently across local machines, servers, CI/CD pipelines, and cloud platforms.

The focus throughout this work is on understanding **how containers, images, and service communication work**, not just memorising Docker commands.

---

## 🧠 New to Docker? Read This First

- Docker can feel confusing at first — that’s normal.
- Focus on **images, containers, Dockerfiles, networks, and volumes**.
- Use tools like `docker ps`, `docker logs`, `docker exec`, and `docker inspect`.
- Break containers intentionally to understand errors and debugging.
- Revisit concepts multiple times through hands-on practice.

> [!IMPORTANT]
> If you don’t understand Docker, application deployment becomes harder to debug, repeat, and scale.

---

## Learning Objectives

By working through this module, I aimed to:

- Understand what containers are and why they matter
- Learn the difference between images and containers
- Build Docker images using Dockerfiles
- Run and manage containers locally
- Understand Docker networking and service communication
- Use Docker Compose for multi-container applications
- Work with DockerHub and Amazon ECR
- Debug common container and networking issues
- Understand orchestration concepts such as Kubernetes and Docker Swarm
- Build a practical containerised application project

---

## Topics Covered

### Fundamentals

- [Introduction to Docker](./fundamentals/01-introduction-to-docker.md)  
  Introduction to containers, Docker, and why containerisation matters in DevOps.

- [What are Containers?](./fundamentals/02-what-are-containers.md)  
  Understanding containers and how they differ from traditional environments.

- [Benefits of Containers](./fundamentals/03-benefits-of-containers.md)  
  Why containers improve portability, consistency, and deployment workflows.

- [What is Docker?](./fundamentals/04-what-is-docker.md)  
  Understanding Docker as a platform for building and running containers.

- [Images and Containers](./fundamentals/05-images-and-containers.md)  
  The difference between Docker images and running containers.

- [Importance in Modern Development](./fundamentals/06-importance-in-modern-development.md)  
  Why containers are widely used across modern development and DevOps workflows.

- [VMs vs Containers](./fundamentals/07-vms-vs-containers.md)  
  Comparing virtual machines with containers and when each is used.

- [Docker Installation](./fundamentals/08-docker-installation.md)  
  Installing Docker and preparing the local environment.

- [Docker Images & Creating a Git Repo](./fundamentals/09-docker-images-and-create-git-repo.md)  
  Working with Docker images and setting up a project repository.

- [Understanding the Dockerfile](./fundamentals/10-understanding-the-dockerfile.md)  
  Learning how Dockerfiles define container images.

- [Introduction to Docker Networking](./fundamentals/14-introduction-to-docker-networking.md)  
  Understanding how containers communicate using Docker networks.

- [Linking Containers Together](./fundamentals/15-linking-containers-together.md)  
  Connecting multiple containers inside the same application environment.

- [Introduction to Docker Compose](./fundamentals/17-introduction-to-docker-compose.md)  
  Managing multi-container applications with Compose.

- [Why Docker Compose Matters in DevOps](./fundamentals/18-why-docker-compose-is-important.md)  
  Understanding how Compose supports local development and automation.

- [First docker-compose.yml](./fundamentals/19-first-docker-compose-file.md)  
  Writing a Compose file to run multiple services together.

- [Docker Registries](./fundamentals/21-docker-registries.md)  
  Understanding image registries and how container images are stored.

- [DockerHub](./fundamentals/22-dockerhub.md)  
  Using DockerHub as a public container registry.

- [Pushing Images to Amazon ECR](./fundamentals/23-pushing-images-to-amazon-ecr.md)  
  Publishing Docker images to AWS Elastic Container Registry.

- [Using Images from ECR](./fundamentals/24-using-images-from-ecr.md)  
  Pulling and running images from a private AWS registry.

- [Important Docker Commands](./fundamentals/26-important-docker-commands.md)  
  Common Docker commands used for images, containers, logs, and cleanup.

- [Multi-Stage Builds](./fundamentals/27-multistage-builds.md)  
  Creating smaller, cleaner Docker images using multi-stage builds.

- [Orchestration Overview](./fundamentals/28-orchestration-overview.md)  
  Introduction to orchestration tools and why they are used.

- [Brief Kubernetes Introduction](./fundamentals/29-kubernetes-introduction.md)  
  High-level introduction to Kubernetes and container orchestration.

- [Docker Swarm vs Kubernetes](./fundamentals/30-docker-swarm-vs-kubernetes.md)  
  Comparing Docker Swarm and Kubernetes.

- [Why Use Orchestration Tools?](./fundamentals/31-why-use-orchestration-tools.md)  
  Understanding scaling, scheduling, self-healing, and production container management.

---

### Labs

- [Debugging MySQL Errors](./labs/20-debugging-mysql-errors.md)  
  Investigating and fixing container errors related to MySQL configuration.

- [Debugging Networking Issues](./labs/25-debugging-networking-issues.md)  
  Troubleshooting Docker networking problems between containers and services.

---

### Assignments

- [Dockerised Web Application](./assignments/11-dockerise-web-application.md)  
  Building a simple web application and preparing it for containerisation.

- [Containerise Web Application - Part 1](./assignments/12-containerise-web-application-1.md)  
  Writing a Dockerfile and running the web application inside a container.

- [Containerise Web Application - Part 2](./assignments/13-containerise-web-application-2.md)  
  Improving the containerised application and validating it locally.

- [CoderCo Containers Challenge](./assignments/32-coderco-containers-challenge.md)  
  Building a Flask and Redis application using Docker Compose.

- [Solution](./assignments/33-solution.md)  
  Final solution walkthrough for the Docker container challenge.

- [Persistent Storage](./assignments/34-persistent-storage.md)  
  Adding persistence to containers using Docker volumes.

- [Environment Variables](./assignments/35-environment-variables.md)  
  Managing application configuration using environment variables.

- [Load Balancing with NGINX](./assignments/36-load-balancing-with-nginx.md)  
  Using NGINX to load balance traffic between containerised services.

- [Push to Docker Learning Repo](./assignments/37-push-to-docker-learning-repo.md)  
  Publishing the completed Docker project into the learning repository.

- [Personal Touch](./assignments/38-personal-touch.md)  
  Improving the project presentation and making it portfolio-ready.

---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Building and breaking containers to understand behaviour
- Using real Docker commands instead of only reading theory
- Debugging errors through logs, inspection, and testing
- Connecting multiple services using Docker networks and Compose
- Treating mistakes as part of the learning process

The goal is long-term understanding that transfers directly to **cloud, CI/CD, and production environments**.

---

## Folder Purpose

### `fundamentals/`

Core Docker and containerisation concepts explained with reasoning and examples.

➡️ [Open fundamentals](./fundamentals)

---

### `labs/`

Hands-on Docker debugging and troubleshooting exercises.

➡️ [Open labs](./labs)

---

### `assignments/`

Practical Docker projects and containerisation challenges.

➡️ [Open assignments](./assignments)

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of Docker through **core container concepts and real-world behaviour**.

Rather than memorising commands, the emphasis is on understanding:

• How containers are created and executed  
• How Docker images are built  
• How services communicate using Docker networks  
• How Docker Compose manages multi-container applications  
• Why registries and orchestration matter in production  

These notes build a foundation for **CI/CD, AWS, Kubernetes, microservices, and cloud deployments**.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on applying Docker knowledge through **hands-on debugging and investigation**.

Each lab includes:

• Real-world container errors  
• Command-line investigation using Docker tools  
• Troubleshooting service communication and networking  
• Key takeaways for container debugging  

These labs simulate the kind of issues faced in **development and production environments**.

➡️ [View Labs](./labs)

---

## Assignments

The Assignments section focuses on applying Docker knowledge through real-world containerisation tasks.

Assignments include:

• Building web applications inside containers  
• Writing Dockerfiles  
• Running multi-container applications with Docker Compose  
• Connecting Flask and Redis services  
• Adding persistence, environment variables, and load balancing  

These assignments simulate how applications are packaged, connected, and prepared for deployment in real DevOps workflows.

➡️ [View Assignments](./assignments)
