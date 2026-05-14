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

---

### `docker --version`

Displays the currently installed Docker version along with build information.

This is commonly used to quickly verify that Docker has been installed successfully and is accessible from the terminal.

<p align="center">
  <img width="900" alt="Docker Version" src="YOUR_IMAGE_LINK_HERE" />
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
  <img width="900" alt="Docker Info" src="YOUR_IMAGE_LINK_HERE" />
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



