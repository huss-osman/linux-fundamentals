# Important Docker Commands

## Overview

Understanding these commands is important when working with **Docker images**, **container management**, **multi-container applications**, **container networking**, and cloud-native environments using services such as Amazon ECR, ECS, and EKS.

These commands become part of everyday workflows when building, debugging, cleaning, and maintaining Docker environments across development, testing, and production systems.

## Contents

- [Viewing Docker Images](#viewing-docker-images)
- [Inspecting Docker Images](#inspecting-docker-images)
- [Removing Docker Images](#removing-docker-images)
- [Cleaning Up Docker Resources](#cleaning-up-docker-resources)
- [Viewing Running Containers](#viewing-running-containers)
- [Stopping Running Containers](#stopping-running-containers)
- [Removing Containers](#removing-containers)

---

## Why These Commands Were Used

As Docker environments grow, it becomes very easy to accumulate large numbers of images, containers, networks, and build cache over time.

These commands were used to help manage, inspect, troubleshoot, and clean Docker environments more efficiently while working with multiple containers and containerised applications.

Instead of manually searching through Docker resources or leaving unused containers and images running in the background, these commands help keep environments organised, reproducible, and easier to troubleshoot.

This approach made the environment:
- Easier to manage  
- Easier to troubleshoot  
- More organised  
- More efficient for containerised workflows  

> [!NOTE]
> These Docker commands help manage:
>
> - Docker images  
> - Running containers  
> - Stopped containers  
> - Networks  
> - Build cache  
> - System resources  
>
> This helps prevent Docker environments from becoming cluttered with unused resources over time.
>
> Commands such as:
>
> ```bash
> docker images
> docker ps
> docker system prune
> docker rm
> ```
>
> become part of day-to-day workflows when building, debugging, and maintaining containerised applications.

---

## Viewing Docker Images

One of the first commands you will regularly use is:

<p align="center">
  <img width="500" alt="Docker Images Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_images_command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker images
> ```
>
> This command displays all Docker images stored locally on your system.
>
> It provides useful information such as:
>
> - Repository name  
> - Image tag/version  
> - Image ID  
> - Creation time  
> - Image size  
>
> This is extremely useful when managing multiple versions of applications or identifying images you no longer need.
>
> For example, while experimenting with different versions of a Flask application, Docker images can quickly accumulate. Using this command helps you track exactly what exists on your machine.

---

## Inspecting Docker Images

Sometimes you may need more detailed information about a specific Docker image.

For this, Docker provides the `docker inspect` command.

<p align="center">
  <img width="1000" alt="Docker Inspect Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_inspect_command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker inspect <image_id>
> ```
>
> Example:
>
> ```bash
> docker inspect 22e854fa949b
> ```
>
> To get the image ID, simply run:
>
> ```bash
> docker images
> ```
>
> then copy the required ID.
>
> The `docker inspect` command provides comprehensive information about the image including:
>
> - Configuration details  
> - Environment variables  
> - Networking information  
> - Image layers  
> - Metadata  
> - Build information  
>
> This is extremely useful during debugging and troubleshooting.

---

## Removing Docker Images

Over time, unused Docker images can consume significant disk space.

To remove an image you no longer need, use:

```bash
docker rmi <image_id>
```

Example:

```bash
docker rmi 22e854fa949b
```

However, Docker will not allow an image to be removed if it is currently being used by a running container.

<p align="center">
  <img width="1000" alt="Docker Image In Use Error" src="https://github.com/huss-osman/devops-learning/blob/main/images/error_image_in_use_docker.png" />
</p>

> [!IMPORTANT]
> Errors like this are common when an image is still referenced by:
>
> - Running containers  
> - Existing repositories  
> - Active services  
>
> In these situations, you must first stop and remove the container before deleting the image.

---

## Cleaning Up Docker Resources

Instead of removing resources one by one, Docker provides a powerful cleanup command:

<p align="center">
  <img width="700" alt="Docker System Prune Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_system_prune_command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker system prune
> ```
>
> This command removes:
>
> - Stopped containers  
> - Unused networks  
> - Dangling images  
> - Unused build cache  
>
> In my case, I chose not to proceed because I still needed some images for ongoing projects.
>
> This command becomes extremely useful after weeks of development when unused images and containers begin consuming unnecessary storage and resources.
>
> Using it regularly helps maintain a clean Docker environment and prevents clutter from building up over time.

---

## Viewing Running Containers

To view containers currently running on your system, use:

<p align="center">
  <img width="1000" alt="Docker PS Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_ps_command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker ps
> ```
>
> This command displays:
>
> - Container IDs  
> - Running images  
> - Status  
> - Port mappings  
> - Container names  
>
> In this example, two MySQL containers are currently running.

---

## Stopping Running Containers

To stop running containers, use:

<p align="center">
  <img width="700" alt="Docker Stop Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_stop_command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker stop <container_id>
> ```
>
> Example:
>
> ```bash
> docker stop bc9f8cab2c95 e5f175642fdf
> ```
>
> One useful feature is that Docker allows multiple container IDs to be passed into a single command, helping save time when managing several containers simultaneously.

---

## Removing Containers

Even after a container is stopped, it still exists on your system in a stopped state.

To completely remove it, use:

```bash
docker rm <container_id>
```

This permanently removes the container from your environment.

This is particularly useful for:
- Freeing system resources  
- Cleaning up old containers  
- Removing unnecessary development environments  
- Keeping Docker organised  

---

## Commands

- `docker images` → View local Docker images  
- `docker inspect` → View detailed image/container information  
- `docker rmi` → Remove Docker images  
- `docker system prune` → Remove unused Docker resources  
- `docker ps` → View running containers  
- `docker stop` → Stop running containers  
- `docker rm` → Remove stopped containers  

---

## Key Takeaways

These Docker commands are part of everyday workflows for anyone working with containers.

Understanding how to:
- View images  
- Inspect configurations  
- Remove unused resources  
- Manage containers  
- Clean Docker environments  

is essential when working with Docker professionally.

As projects grow, environments can quickly become cluttered with unused images and stopped containers. Knowing how to manage them properly helps keep systems efficient, organised, and easier to troubleshoot.

For anyone learning Docker, these commands are absolutely fundamental and will constantly appear across development, testing, and production environments.

---

## Reflection

Working through these Docker commands reinforced how important container management becomes once multiple images, containers, and environments start accumulating.

These commands are not just useful occasionally; they become part of day-to-day workflows for anyone working with Docker across development, testing, or cloud-native environments.
