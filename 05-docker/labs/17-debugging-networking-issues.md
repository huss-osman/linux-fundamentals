# Debugging Networking Issues

## Overview

This section focuses on debugging networking and connectivity issues between multiple Docker containers while understanding how Docker Compose simplifies container networking and service communication automatically within multi-container environments.

Understanding Docker Compose networking is important when working with **multi-container applications**, **container communication**, **Docker networking**, and cloud-native deployments using services such as Amazon ECR, ECS, and EKS.

## Contents

- [Why Docker Compose Was Used](#why-docker-compose-was-used)
- [Update Docker Compose File](#update-docker-compose-file)
- [Verify AWS ECR Login](#verify-aws-ecr-login)
- [Run Docker Compose](#run-docker-compose)
- [Verify Application](#verify-application)
- [Debugging with Docker Compose Logs](#debugging-with-docker-compose-logs)
- [Common Networking Issues](#common-networking-issues)

---

## Why Docker Compose Was Used

Previously, the Docker image was pushed to Amazon ECR and manually run using individual `docker run` commands.

While this worked successfully, a networking issue occurred because the Flask container and MySQL container were running separately and required manual networking configuration.

Docker Compose made this process easier because all services defined inside the `docker-compose.yml` file automatically communicate within the same Docker network.

> [!NOTE]
> Docker Compose automatically creates:
>
> - Containers  
> - Networks  
> - Service communication  
> - Dependencies between containers  
>
> This removes the need to manually create custom Docker networks using commands such as:
>
> ```bash
> docker network create my-app-network
> ```

---

## Update Docker Compose File

To achieve the same setup using Docker Compose and the image pulled from Amazon ECR, head over to the `docker-compose.yml` file.

Previously, the file used the `build:` section to locally build the Docker image.

This time, replace the `build:` section with the `image:` section and specify the Amazon ECR image URI.

https://github.com/user-attachments/assets/563ec6d9-45d7-425f-83c5-46afdd0bf49c

> [!NOTE]
> Instead of building the image locally, Docker Compose now pulls and uses the image directly from Amazon ECR.
>
> The image specified is:
>
> ```yaml
> image: 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
> ```
>
> This tells Docker Compose to use the Flask application image stored inside the AWS ECR repository.

---

## Verify AWS ECR Login

Before running Docker Compose commands, make sure Docker is authenticated with Amazon ECR.

<p align="center">
  <img width="1000" alt="AWS Login CLI" src="https://github.com/huss-osman/devops-learning/blob/main/images/aws_login_cli.png" />
</p>

> [!IMPORTANT]
> If Docker is not authenticated with Amazon ECR, Docker Compose may fail to pull the image from the repository.
>
> Always ensure:
>
> - AWS CLI is configured correctly  
> - Docker is logged into Amazon ECR  
> - The ECR repository exists  
> - The image tag exists  

---

## Run Docker Compose

Now run the following command to create and start all services defined inside the `docker-compose.yml` file.

<p align="center">
  <img width="500" alt="Docker Compose Up Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker-compose%20up%20command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker-compose up
> ```
>
> - `docker-compose up` → Creates and starts all services inside the `docker-compose.yml` file  
>
> Docker Compose automatically:
>
> - Creates containers  
> - Creates networking between containers  
> - Starts dependencies in order  
> - Connects services together inside the same Docker network  

---

## Verify Application

Once Docker Compose finishes setting everything up, head over to the browser and refresh localhost on port `5002`.

<p align="center">
  <img width="1000" alt="Local Host Reopen" src="https://github.com/huss-osman/devops-learning/blob/main/images/local_host_reopen.png" />
</p>

> [!NOTE]
> The application now successfully displays:
>
> ```text
> Hello, World! MySQL version: 8.4.9
> ```
>
> This confirms that:
>
> - The Flask application is running successfully  
> - The MySQL database container is running  
> - Docker Compose networking is working correctly  
> - Both containers can communicate successfully  
> - The image pulled from Amazon ECR is functioning properly  

---

## Debugging with Docker Compose Logs

If any issues occur, open another VS Code terminal session.

<p align="center">
  <img width="1000" alt="Open Terminal VS Code" src="https://github.com/huss-osman/devops-learning/blob/main/images/open_terminal_vs_code.png" />
</p>

Then run the following command:

<p align="center">
  <img width="1000" alt="Docker Compose Logs Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker-compose%20logs%20command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker-compose logs
> ```
>
> - `docker-compose logs` → Displays logs from all running services inside the Docker Compose application  
>
> These logs can be used to debug:
>
> - Networking issues  
> - Database connection failures  
> - Flask application errors  
> - Service startup failures  
> - Dependency problems  

---

## Common Networking Issues

You may encounter errors such as:

```text
Can't connect to server on 'mydb'
```

or:

```text
Unknown server host 'mydb'
```

These issues usually happen because of incorrect service naming or configuration mismatches.

> [!IMPORTANT]
> Make sure:
>
> - The MySQL database container is running  
> - Service names inside `docker-compose.yml` are correct  
> - Dependencies match correctly  
> - The hostname inside `app.py` matches the service name  
>
> Example:
>
> ```python
> host="mydb"
> ```
>
> If the Docker Compose service is called:
>
> ```yaml
> mydb:
> ```
>
> then the Flask application must also use:
>
> ```python
> host="mydb"
> ```
>
> Naming mismatches such as:
>
> - `mydb`  
> - `db`  
> - `mysql-db`  
>
> can cause containers to fail communicating with each other.

---

## Commands

- `docker-compose up` → Create and start services  
- `docker-compose logs` → View logs from running services  
- `docker-compose down` → Stop and remove containers  
- `docker ps` → View running containers  
- `docker logs` → View logs for individual containers  

---

## Key Takeaways

- Docker Compose simplifies multi-container deployments  
- Docker Compose automatically creates networking between services  
- Images pulled from Amazon ECR can be directly used inside Docker Compose  
- Docker Compose removes the need for manually creating Docker networks  
- Container communication depends heavily on correct service naming  
- Logs are extremely useful when debugging networking or database issues  
- Service names inside `docker-compose.yml` must match application hostnames  
- Docker Compose is commonly used for local development and testing environments  

---

## Reflection

Instead of manually creating networks and managing containers individually, Docker Compose automatically handled container networking and communication.

This reinforced the importance of Docker networking, service naming consistency, and understanding how containers communicate inside real-world DevOps environments.
