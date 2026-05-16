# Docker Installation 

## Overview

This section focuses on installing **Docker** and understanding the basic commands used to interact with the Docker Engine. It introduces the setup process across different operating systems and helps build familiarity with core Docker workflows.

Understanding how to install and verify Docker is an important first step before working with **containers**, **images**, and modern application deployment environments.

---

## Docker Installation & Setup

This section covers the installation and setup process for Docker Desktop across different operating systems. It introduces the Docker Desktop interface and explains how to verify that Docker Engine is running correctly.

## Contents

- [Docker Installation Walkthrough](#docker-installation-walkthrough)
- [Docker Desktop Walkthrough](#docker-desktop-walkthrough)

---

### Docker Installation Walkthrough

Download Docker Desktop using the official link: https://www.docker.com/products/docker-desktop/

https://github.com/user-attachments/assets/d5a55da9-45fb-48eb-a32f-de87319d30d5

Select and download the correct version based on your operating system:

- **Windows** → Docker Desktop for Windows  
- **macOS** → Docker Desktop for Mac  
- **Linux** → Docker Engine / Docker Desktop for Linux  

> [!IMPORTANT]
> After downloading Docker:
>
> - Save the installer somewhere easy to access such as the Desktop
> - Run the installer and complete the setup process
> - Open Docker Desktop once installation is complete
> - Wait until Docker Engine starts successfully before continuing

---

### Docker Desktop Walkthrough

Once Docker Desktop is installed, open the application to verify everything is running correctly.

https://github.com/user-attachments/assets/015fadae-bea5-4dac-934b-50424784ed38

Docker Desktop is the main interface used to manage:

- Containers  
- Images  
- Volumes  
- Networks  
- Development environments  

You should see the Docker whale icon appear in the bottom-left corner of the application.

> [!NOTE]
> A green status indicator means the Docker Engine has successfully started and is running correctly.

Docker Desktop also includes support for Kubernetes, although that will not be covered at this stage.

---

## Running Basic Docker Commands

This section covers some of the first commands commonly used when working with Docker. It focuses on verifying the installation, inspecting the Docker environment, and understanding the current state of the Docker Engine.

## Contents

- [docker --version](#docker---version)
- [docker info](#docker-info)
- [docker run hello-world](#docker-run-hello-world)
- [docker ps](#docker-ps)
- [docker ps -a](#docker-ps--a)

---

### `docker --version`

Displays the currently installed Docker version along with build information.

This is commonly used to quickly verify that Docker has been installed successfully and is accessible from the terminal.

<p align="center">
  <img width="900" alt="Docker Version" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker%20--version.png" />
</p>

> [!NOTE]
> The output shows:
>
> - The installed Docker version
> - Docker build information
> - Confirmation that Docker is installed and working correctly

---

### `docker info`

Provides a comprehensive overview of the current Docker environment and Docker Engine state.

This command is especially useful for troubleshooting, debugging, and understanding how Docker is currently configured.

<p align="center">
  <img width="900" alt="Docker Info" src="https://github.com/huss-osman/devops-learning/blob/main/images/Dockerinfo.png" />
</p>

> [!NOTE]
> `docker info` displays a large amount of useful system information including:
>
> - Number of containers and images
> - Storage driver information
> - Docker plugins
> - Docker Compose plugin
> - CPU and memory allocation
> - Docker root directory
> - Debug mode status
> - Kernel and operating system details
>
> This information becomes extremely useful when troubleshooting Docker-related issues.

---

### `docker run hello-world`

Runs a test container using the official `hello-world` Docker image.

This is one of the first commands commonly used to verify that Docker is installed correctly and that the Docker Engine is functioning properly.

<p align="center">
  <img width="900" alt="Docker Hello World" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker%20run%20hello-world.png" />
</p>

> [!NOTE]
> When running this command, Docker performs several steps automatically:
>
> 1. Checks whether the `hello-world` image already exists locally  
> 2. If the image is not present, Docker pulls it from Docker Hub  
> 3. Docker creates a container from the image  
> 4. The container starts and executes the application  
>
> After the container runs successfully, the message:
>
> `Hello from Docker!`
>
> confirms that:
>
> - Docker is installed correctly
> - Docker Engine is running
> - Containers can be created and executed successfully

---

### `docker ps`

Displays all currently running containers on the system.

This command is commonly used to inspect active containers and view important information about their current state.

<p align="center">
  <img width="900" alt="Docker PS" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker%20ps.png" />
</p>

> [!NOTE]
> `docker ps` displays useful container information including:
>
> - Container ID  
> - Image used  
> - Command being executed  
> - Creation time  
> - Current status  
> - Port mappings  
> - Container names  
>
> In this case, no containers are currently running.
>
> The `hello-world` container already completed its task and stopped automatically after displaying:
>
> `Hello from Docker!`
>
> This is normal behaviour because the container only needed to execute a short test application before exiting successfully.

---

### `docker ps -a`

Displays all containers on the system, including both running and stopped containers.

This command is useful when inspecting previous containers, checking exit statuses, and viewing containers that have already completed execution.

<p align="center">
  <img width="1000" alt="Docker PS All" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker%20ps%20-a.png" />
</p>

> [!NOTE]
> Unlike `docker ps`, the `docker ps -a` command also includes stopped containers.
>
> In this case, the output shows the previously created `hello-world` container.
>
> The container status shows:
>
> `Exited`
>
> because the container already completed its task of printing:
>
> `Hello from Docker!`
>
> Once the application finished executing, the container stopped automatically because it had already served its purpose.

---

## Commands

- `docker --version` → Display the installed Docker version and build information  
- `docker info` → View detailed Docker Engine and environment information  
- `docker run hello-world` → Test Docker installation using a sample container  
- `docker ps` → View currently running containers  
- `docker ps -a` → View all containers including stopped containers  

---

## Key Takeaways

- Docker can be installed across Windows, macOS, and Linux environments  
- Docker Desktop provides a graphical interface for managing containers and images  
- `docker info` helps inspect and troubleshoot the Docker environment  
- Containers are created from Docker images and run applications in isolated environments  
- Some containers automatically stop once their task has completed successfully  
- Basic Docker commands are essential before working with real containerised applications  

---

## Reflection

Working through the Docker installation process helped me understand how Docker Engine, containers, and images all connect together. Running commands like `docker run hello-world` made the container lifecycle easier to visualise in practice.

I also learned how useful Docker commands are for inspecting the environment and troubleshooting issues. This reinforces the importance of understanding the fundamentals before moving into more advanced containerisation and orchestration concepts.
