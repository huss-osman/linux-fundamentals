# Using Image from ECR Repository

## Overview

This section focuses on pulling Docker images stored inside Amazon ECR and using those images to create and run containers locally inside your own Docker environment and custom Docker networks.

Understanding how to pull and run images from ECR is important when working with **containerised applications**, **private registries**, **cloud deployments**, and AWS container services such as ECS and EKS.

## Contents

- [Pull Image from ECR](#pull-image-from-ecr)
- [Create MySQL Container](#create-mysql-container)
- [Container Name Conflict](#container-name-conflict)
- [Delete Existing Container](#delete-existing-container)
- [Recreate MySQL Container](#recreate-mysql-container)
- [Run Container from ECR Image](#run-container-from-ecr-image)
- [Unknown Server Host Error](#unknown-server-host-error)
- [Create Docker Network](#create-docker-network)
- [Recreate MySQL Container with Network](#recreate-mysql-container-with-network)
- [Run Flask Container with Network](#run-flask-container-with-network)
- [Verify Application](#verify-application)

---

## Pull Image from ECR

Before running the application, pull the image from Amazon ECR.

```bash
docker pull 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
```

> [!NOTE]
> This command downloads the image stored inside the ECR repository into the local Docker environment.
>
> Once pulled, the image can be used to create and run containers locally or on another machine.

---

## Create MySQL Container

The Flask application depends on a MySQL database container called `mydb`.

To create the MySQL container, run the following command:

<p align="center">
  <img width="1000" alt="Docker Run MyDB Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/Docker_run_mydb_command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker run -d --name mydb -e MYSQL_ROOT_PASSWORD=my-secret-pw mysql:8
> ```
>
> - `docker run` → Creates and starts a new container  
> - `-d` → Runs the container in detached mode in the background  
> - `--name mydb` → Names the container `mydb`  
> - `-e MYSQL_ROOT_PASSWORD=my-secret-pw` → Sets the MySQL root password  
> - `mysql:8` → Uses the official MySQL version 8 image  

---

## Container Name Conflict

When running the command, Docker returned an error because a container with the name `mydb` already existed.

```bash
docker: Error response from daemon: Conflict. The container name "/mydb" is already in use.
```

> [!IMPORTANT]
> Docker container names must be unique.
>
> If a container called `mydb` already exists, Docker will not allow another container to be created with the same name.

---

## Delete Existing Container

To fix this, remove the existing `mydb` container from Docker Desktop.

Search for `mydb` inside Docker Desktop and delete the existing container.

https://github.com/huss-osman/devops-learning/blob/main/images/docker_desktop_delete_container.mp4

> [!NOTE]
> After deleting the old container, the `docker run` command can be executed again to create a fresh MySQL container with the same name.

---

## Recreate MySQL Container

After deleting the old container, re-run the MySQL container command.

<p align="center">
  <img width="1000" alt="Recreate MyDB Container" src="https://github.com/huss-osman/devops-learning/blob/main/images/recreate_mydb_container.png" />
</p>

> [!NOTE]
> This time, the container was created successfully because the old `mydb` container was removed.
>
> The `-d` flag runs the MySQL container in the background using detached mode.

---

## Run Container from ECR Image

Now we can run the Flask application using the image pulled from Amazon ECR.

<p align="center">
  <img width="1000" alt="Error Docker Run" src="https://github.com/huss-osman/devops-learning/blob/main/images/error_docker_run.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker run -p 5002:5002 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
> ```
>
> - `docker run` → Creates and starts a container  
> - `-p 5002:5002` → Maps localhost port `5002` to port `5002` inside the container  
> - `606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest` → Runs the image pulled from Amazon ECR  
>
> This creates the `flask-mysql` application using the image pulled from the ECR repository.

---

## Unknown Server Host Error

After opening the application on localhost port `5002`, an error occurred.

<p align="center">
  <img width="1000" alt="Unknown Server Host Error" src="https://github.com/huss-osman/devops-learning/blob/main/images/unknown%20_server_host_error.png" />
</p>

> [!IMPORTANT]
> The error says:
>
> ```bash
> Unknown server host 'mydb'
> ```
>
> This happened because the Flask application and MySQL database were running on different Docker networks.
>
> Even though both containers existed, they were isolated from each other and could not communicate using the hostname `mydb`.
>
> Containers must exist on the same Docker network to communicate with each other by container name.

---

## Create Docker Network

To fix the issue, create a custom Docker network.

<p align="center">
  <img width="1000" alt="Docker Network Recreate" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_network_recreate.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker network create my-app-network
> ```
>
> - `docker network create` → Creates a new Docker network  
> - `my-app-network` → The custom network name  
>
> Containers attached to the same Docker network can communicate with each other using their container names.

---

## Recreate MySQL Container with Network

After creating the network, delete the existing `mydb` container again and recreate it inside the custom network.

https://github.com/huss-osman/devops-learning/blob/main/images/delete_docker_container_desktop.mp4

Then run the MySQL container again, this time specifying the network.

<p align="center">
  <img width="1000" alt="Recreate Container Properly" src="https://github.com/huss-osman/devops-learning/blob/main/images/rerun_container_properly.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker run -d --name mydb --network my-app-network -e MYSQL_ROOT_PASSWORD=my-secret-pw mysql:8
> ```
>
> - `docker run` → Creates and starts a new container  
> - `-d` → Runs the container in detached mode  
> - `--name mydb` → Names the container `mydb`  
> - `--network my-app-network` → Connects the container to the custom Docker network  
> - `-e MYSQL_ROOT_PASSWORD=my-secret-pw` → Sets the MySQL root password  
> - `mysql:8` → Uses the official MySQL version 8 image  
>
> This time the MySQL database container is now attached to the `my-app-network` network.

---

## Run Flask Container with Network

Now run the Flask application container again, but connect it to the same Docker network as the MySQL container.

<p align="center">
  <img width="1000" alt="Run Flask Container Properly" src="https://github.com/huss-osman/devops-learning/blob/main/images/rerun_container_properly1.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker run -p 5002:5002 --network my-app-network 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
> ```
>
> - `docker run` → Creates and starts the Flask container  
> - `-p 5002:5002` → Maps localhost port `5002` to container port `5002`  
> - `--network my-app-network` → Connects the Flask container to the same network as MySQL  
> - `606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest` → Uses the image pulled from Amazon ECR  
>
> Since both containers are now connected to the same Docker network, the Flask application can successfully communicate with the `mydb` database container.

---

## Verify Application

After both containers are running on the same network, reopen localhost on port `5002`.

<p align="center">
  <img width="1000" alt="Localhost Reopen" src="https://github.com/huss-osman/devops-learning/blob/main/images/local_host_reopen.png" />
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
> - The ECR image was pulled successfully  
> - The MySQL container is running  
> - Both containers are connected to the same Docker network  
> - The Flask container can communicate with the MySQL container  
> - The application is running locally through Docker  

---

## Commands

- `docker pull` → Download an image from Amazon ECR  
- `docker run` → Create and run a container  
- `--name` → Assign a custom name to a container  
- `-e` → Pass environment variables into a container  
- `-p` → Map host ports to container ports  
- `docker network create` → Create a custom Docker network  
- `--network` → Attach a container to a specific Docker network  
- `docker ps` → View running containers  
- `docker rm` → Remove containers  

---

## Key Takeaways

- Images pushed to Amazon ECR can be pulled back into a local Docker environment  
- Applications may depend on other containers such as databases  
- Container names must be unique  
- Docker Desktop can be used to remove conflicting containers  
- Containers must be on the same network to communicate by name  
- The Flask application required the `mydb` MySQL container to be reachable  
- Custom Docker networks allow containers to communicate using container names  
- Pulling and running images from ECR is a common workflow in cloud-based container deployments  

---

## Reflection

I also learned that running a container image successfully depends on more than just the image itself. If the application relies on another service, such as MySQL, that service must also be running and reachable.

This reinforced the importance of understanding container dependencies, Docker networking, naming, and how private registries fit into real DevOps workflows.
