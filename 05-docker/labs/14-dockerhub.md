# DockerHub: A Popular Docker Registry

## Overview

Docker Hub allows developers and DevOps engineers to upload, manage, distribute, and pull container images across different environments and systems.

Understanding Docker Hub is important when working with **containerised applications**, **CI/CD pipelines**, and cloud-native deployments.

## Contents

- [What is Docker Hub?](#what-is-docker-hub)
- [Docker Hub Homepage](#docker-hub-homepage)
- [Community Images](#community-images)
- [Sign In to Docker Hub](#sign-in-to-docker-hub)
- [Navigate to Docker Hub](#navigate-to-docker-hub)
- [Docker Login Command](#docker-login-command)
- [Create Repository](#create-repository)
- [Fill Repository Details](#fill-repository-details)
- [Docker Command Example](#docker-command-example)
- [Correct Image Tag](#correct-image-tag)
- [Build Docker Image](#build-docker-image)
- [Docker Push Command](#docker-push-command)
- [Push Docker Image](#push-docker-image)
- [Docker Hub Repository Check](#docker-hub-repository-check)
- [Docker Pull Command](#docker-pull-command)
- [Docker Pull Complete](#docker-pull-complete)

---

## What is Docker Hub?

Docker Hub is a cloud-based Docker registry used to store and distribute Docker images.

Think of a Docker Registry as a storage and distribution hub for your Docker images.

Instead of keeping images only on your local machine, Docker Hub allows you to:

- Store Docker images remotely  
- Share images with others  
- Pull images onto different machines  
- Version and manage container images  
- Simplify deployments across environments  

Docker Hub supports both:

- **Public repositories** → Accessible by everyone  
- **Private repositories** → Restricted access for security and collaboration  

---

## Docker Hub Homepage

Docker Hub provides access to official images, community images, repositories, and container distribution services.

<p align="center">
  <img width="1000" alt="Docker Hub Homepage" src="https://github.com/huss-osman/devops-learning/blob/main/images/Docker_Hub_Picture.png" />
</p>

> [!NOTE]
> Docker Hub hosts millions of container images including official images such as:
>
> - MySQL  
> - NGINX  
> - Ubuntu  
> - Redis  
> - PostgreSQL  

---

## Community Images

Docker Hub also provides community-created images that can be pulled directly onto your local machine.

<p align="center">
  <img width="1000" alt="Community Images" src="https://github.com/huss-osman/devops-learning/blob/main/images/Community_Images.png" />
</p>

> [!IMPORTANT]
> Always verify and trust the source of community images before using them in production environments.

---

## Sign In to Docker Hub

Before pushing images to Docker Hub, create an account or sign in.

<p align="center">
  <img width="1000" alt="Docker Hub Sign In" src="https://github.com/huss-osman/devops-learning/blob/main/images/Sign_in_Docker_Hub.png" />
</p>

---

## Navigate to Docker Hub

After signing in, navigate to the Docker Hub section from Docker Desktop.

<p align="center">
  <img width="1000" alt="Docker Hub Navigation" src="https://github.com/huss-osman/devops-learning/blob/main/images/Docker_Hub_Navigation.png" />
</p>

---

## Docker Login Command

Authenticate your local Docker CLI with Docker Hub.

<p align="center">
  <img width="1000" alt="Docker Login Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/Docker_Login_Command.png" />
</p>

> [!NOTE]
> Once authenticated successfully, Docker can now push and pull images from your Docker Hub repositories.

---

## Create Repository

Create a new repository where your Docker images will be stored.

<p align="center">
  <img width="1000" alt="Create Docker Repository" src="https://github.com/huss-osman/devops-learning/blob/main/images/Create_repository_docker_hub.png" />
</p>

---

## Fill Repository Details

Provide a repository name and configure visibility settings.

<p align="center">
  <img width="1000" alt="Fill Repository Details" src="https://github.com/huss-osman/devops-learning/blob/main/images/fill_repo_details_dockerhub.png" />
</p>

---

## Docker Command Example

Docker Hub already provides example commands for pushing images to the repository.

<p align="center">
  <img width="700" alt="Docker Command Tag" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_command_tag.png" />
</p>

> [!NOTE]
> Docker Hub already gives example commands for pushing images, but the image must first be built and tagged correctly before it can be uploaded.

---

## Correct Image Tag

Suppose you already have a Dockerfile for your Flask application created previously.

Below, you can see the built image tagged with the Docker Hub username and repository name.

<p align="center">
  <img width="1000" alt="Correct Docker Image Tag" src="https://github.com/huss-osman/devops-learning/blob/main/images/correct_image_tag.png" />
</p>

> [!NOTE]
> The command used to build and tag the image is:
>
> ```bash
> docker build -t osmandocka/flask-mysql:v1 .
> ```
>
> - `docker build` → Builds the image from the Dockerfile  
> - `-t` → Adds a tag to the image  
> - `osmandocka/flask-mysql` → Docker Hub username and repository name  
> - `v1` → Image version tag  
> - `.` (dot) → Uses the current directory as the build context where Docker looks for the Dockerfile  
>
> In this case:
>
> - The Dockerfile is located inside the `hello_flask` directory  
> - The image is tagged with version `v1`  

---

## Build Docker Image

Docker now begins building the image from the Dockerfile.

<p align="center">
  <img width="1000" alt="Build Docker Image" src="https://github.com/huss-osman/devops-learning/blob/main/images/build_docker_image.png" />
</p>

> [!NOTE]
> Docker processes the Dockerfile step-by-step while creating the container image layers.

## Docker Push Command

Now the image is built and tagged correctly, push it to Docker Hub.

<p align="center">
  <img width="700" alt="Docker Push Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_push_command.png" />
</p>

The command uploads your image to Docker Hub under the specified repository name.

> [!NOTE]
> Once the push is complete, the image will be stored in Docker Hub and ready to be pulled or shared with others.

## Push Docker Image

The image has now successfully been pushed to Docker Hub.

<p align="center">
  <img width="1000" alt="Push Docker Image" src="https://github.com/huss-osman/devops-learning/blob/main/images/push_docker_image.png" />
</p>

> [!NOTE]
> After pushing the image successfully, head over to Docker Hub to verify the uploaded image and version tag.

---

## Docker Hub Repository Check

Refresh Docker Hub and you should now see the uploaded image tagged with `v1`.

<p align="center">
  <img width="1000" alt="Docker Hub Repository Check" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_hub_check_repo.png" />
</p>

> [!NOTE]
> From here you can:
>
> - Manage repositories  
> - Set repositories to public or private  
> - Share images with others  
> - Pull images onto another machine  
> - Version and organise container images  

---

## Docker Pull Command

You can now pull the image onto another machine or even back onto the same machine.

<p align="center">
  <img width="700" alt="Docker Pull Command" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_pull_command.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker pull osmandocka/flask-mysql:v1
> ```
>
> This downloads the image from Docker Hub onto your local machine.
>
> You can also share this command with others so they can pull and run your image on their own systems, especially when the repository is public.

## Docker Pull Complete

The image has now successfully been pulled from Docker Hub.

<p align="center">
  <img width="1000" alt="Docker Pull Complete" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_pull_complete.png" />
</p>

> [!NOTE]
> The image is now available locally and can be used to create and run containers.

---

## Commands

- `docker login` → Authenticate Docker CLI with Docker Hub  
- `docker build -t` → Build and tag a Docker image  
- `docker push` → Upload Docker images to Docker Hub  
- `docker pull` → Download Docker images from Docker Hub  
- `docker images` → View local Docker images  

---

## Key Takeaways

- Docker Hub is a cloud-based Docker registry  
- Docker images can be stored, shared, and distributed through repositories  
- Images must be built and tagged correctly before pushing  
- Public repositories allow anyone to pull images  
- Private repositories improve security and access control  
- Docker Hub simplifies sharing containerised applications across environments  
- Version tags help organise and manage container images  

---

## Reflection

Building, tagging, pushing, and pulling images made the container workflow much clearer in practice, especially when working with Docker registries and deployment pipelines.

I also learned how important image versioning and repository management are when working with real-world DevOps and cloud-native environments.
