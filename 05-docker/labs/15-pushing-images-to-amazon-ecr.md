# Pushing  Images to Amazon ECR

## Overview

Amazon ECR (Elastic Container Registry) allows developers and DevOps engineers to upload, manage, distribute, and pull container images across different environments and systems inside AWS.

Understanding Amazon ECR is important when working with **containerised applications**, **CI/CD pipelines**, **cloud-native deployments**, and AWS container services such as ECS and EKS.

## Contents

- [What is Amazon ECR?](#what-is-amazon-ecr)
- [Sign Up for AWS](#sign-up-for-aws)
- [Sign In to AWS Console](#sign-in-to-aws-console)
- [Navigate to Amazon ECR](#navigate-to-amazon-ecr)
- [Create Repository on ECR](#create-repository-on-ecr)
- [Default Repository Settings](#default-repository-settings)
- [Select the ECR Repository](#select-the-ecr-repository)
- [View Push Commands](#view-push-commands)
- [Install AWS CLI](#install-aws-cli)
- [Authenticate Docker to Amazon ECR](#authenticate-docker-to-amazon-ecr)
- [Encountered Image Tag Error](#encountered-image-tag-error)
- [Build Docker Image](#build-docker-image)
- [Tag Docker Image for ECR](#tag-docker-image-for-ecr)
- [Push Docker Image to ECR](#push-docker-image-to-ecr)
- [Verify Uploaded Image](#verify-uploaded-image)
- [Pull Image from ECR](#pull-image-from-ecr)
- [Run Container from ECR Image](#run-container-from-ecr-image)

---

## What is Amazon ECR?

Amazon ECR (Elastic Container Registry) is a cloud-based private container registry service provided by AWS.

Think of Amazon ECR as AWS’s version of Docker Hub.

Instead of keeping images only on your local machine, Amazon ECR allows you to:

- Store Docker images remotely  
- Push images securely to AWS  
- Pull images onto different machines  
- Use images inside ECS and EKS  
- Manage private container registries  
- Simplify deployments across environments  

Amazon ECR repositories are private by default which improves security and access control for production workloads.

---

## Sign Up for AWS

Before using Amazon ECR, create an AWS account if you do not already have one.

AWS Sign Up:  
https://signin.aws.amazon.com/signup?request_type=register

<p align="center">
  <img width="1000" alt="AWS Sign Up" src="https://github.com/huss-osman/devops-learning/blob/main/images/Sign_Up_AWS.png" />
</p>

---

## Sign In to AWS Console

After creating your AWS account, sign in to the AWS Management Console.

<p align="center">
  <img width="1000" alt="AWS Sign In" src="https://github.com/huss-osman/devops-learning/blob/main/images/Sign_In_AWS_Console.png" />
</p>

---

## Navigate to Amazon ECR

Inside the AWS Management Console, search for ECR in the services search bar.

<p align="center">
  <img width="1000" alt="Navigate to ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/Navigate_to_ECR.png" />
</p>

> [!NOTE]
> ECR stands for:
>
> - Elastic  
> - Container  
> - Registry  

---

## Create Repository on ECR

Create a new private repository where your Docker images will be stored.

<p align="center">
  <img width="1000" alt="Create Repository on ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/Create_Repo_On_ECR.png" />
</p>

---

## Default Repository Settings

After entering the repository name, leave the remaining settings as default and go ahead and create the repository.

<p align="center">
  <img width="1000" alt="Default Repository Settings ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/Default_Settings_ECR.png" />
</p>

> [!NOTE]
> In this example:
>
> - Repository name: `flask-mysql`  
> - Repository visibility: Private  
> - Encryption: AES-256 default encryption  

---

## Select the ECR Repository

Once the repository has been created, click on it to open it.

<p align="center">
  <img width="1000" alt="Click On ECR Repository" src="https://github.com/huss-osman/devops-learning/blob/main/images/Click_On_ECR_Repo.png" />
</p>

---

## View Push Commands

Amazon ECR already provides example commands for pushing images to the repository.

<p align="center">
  <img width="1000" alt="View Push Commands ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/View_Push_Commands_ECR.png" />
</p>

<p align="center">
  <img width="1000" alt="Push Commands Repo ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/Push_Commands_Repo_ECR.png" />
</p>

> [!NOTE]
> Amazon ECR already gives example commands for pushing images, but the image must first be built and tagged correctly before it can be uploaded.

---

## Install AWS CLI

To install the AWS CLI for your respective Operating Systems, visit this page:

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

> [!IMPORTANT]
> The AWS CLI is required because Docker needs to authenticate against your private ECR registry securely using AWS credentials.

---

## Authenticate Docker to Amazon ECR

Authenticate your local Docker CLI with Amazon ECR.

<p align="center">
  <img width="1000" alt="AWS Login CLI" src="https://github.com/huss-osman/devops-learning/blob/main/images/aws_login_cli.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 606349121896.dkr.ecr.eu-north-1.amazonaws.com
> ```
>
> - `aws ecr` → Interacts with the Amazon Elastic Container Registry service  
> - `get-login-password` → Generates a temporary authentication token for ECR  
> - `--region eu-north-1` → Specifies the AWS region where the ECR repository exists  
> - `|` → Pipes the generated token into the next command  
> - `docker login` → Authenticates Docker against a registry  
> - `--username AWS` → Uses the default AWS username for ECR authentication  
> - `--password-stdin` → Securely passes the token into Docker login  
> - `606349121896.dkr.ecr.eu-north-1.amazonaws.com` → Your private ECR registry URL  
>
> This command is not logging into the AWS Console itself.
>
> Instead, Docker is authenticating against our private ECR registry so it can push and pull images securely.
>
> This works similarly to Docker Hub authentication.

---

## Encountered Image Tag Error

When attempting to tag the image initially, Docker returned an error.

<p align="center">
  <img width="1000" alt="Encountered Error Tag" src="https://github.com/huss-osman/devops-learning/blob/main/images/encountered_error_tag.png" />
</p>

> [!NOTE]
> The error says:
>
> ```bash
> No such image: flask-mysql
> ```
>
> This happened because the image had not been built yet.
>
> Before tagging an image, the Docker image itself must already exist locally.

---

## Build Docker Image

Docker now begins building the image from the Dockerfile.

<p align="center">
  <img width="1000" alt="Docker Build ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_build_ecr.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker build -t flask-mysql .
> ```
>
> - `docker build` → Builds the image from the Dockerfile  
> - `-t` → Adds a tag to the image  
> - `flask-mysql` → The image name  
> - `.` (dot) → Uses the current directory as the build context where Docker looks for the Dockerfile  
>
> Since I already had a Dockerfile created previously, Docker simply built the image using that Dockerfile.
>
> Once the image is built successfully, we can then tag it correctly for Amazon ECR.

---

## Tag Docker Image for ECR

Now that the image exists locally, we can correctly tag it for Amazon ECR.

<p align="center">
  <img width="1000" alt="Docker Tag Correct ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_tag_correct_ecr.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker tag flask-mysql:latest 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
> ```
>
> - `docker tag` → Creates another tag pointing to the same Docker image  
> - `flask-mysql:latest` → The existing local Docker image  
> - `606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest` → The new ECR repository image tag  
>
> Unlike Docker Hub, ECR requires the full repository URL when tagging images before pushing them.

---

## Push Docker Image to ECR

Now the image is built and tagged correctly, push it to Amazon ECR.

<p align="center">
  <img width="1000" alt="Docker Push ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/Docker_Push_ECR.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker push 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
> ```
>
> - `docker push` → Uploads the image to a registry  
> - `606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest` → Specifies the ECR repository and image tag  
>
> During the push process, Docker uploads the image layers into Amazon ECR where they can later be pulled onto other machines or deployment environments.

---

## Verify Uploaded Image

Refresh Amazon ECR and you should now see the uploaded image.

https://github.com/user-attachments/assets/d435c55a-2522-4c90-9070-8a8039bbfc08

> [!NOTE]
> Here you can see:
>
> - Repository name  
> - Image URI  
> - Push timestamp  
> - Image size  
> - Additional metadata  

---

## Pull Image from ECR

You can now pull the image onto another machine or even back onto the same machine.

<p align="center">
  <img width="1000" alt="Pull Image ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/pull_image_ecr.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker pull 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
> ```
>
> Previously we used:
>
> ```bash
> docker push
> ```
>
> But now instead of pushing the image to the registry, we are pulling the image down from the registry.
>
> This downloads the image stored in Amazon ECR back into our local Docker environment ready to be ran as a container.

---

## Run Container from ECR Image

Now that the image exists locally again, we can run it as a container.

<p align="center">
  <img width="1000" alt="Container Creation ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/container_creation_ecr.png" />
</p>

> [!NOTE]
> The command used is:
>
> ```bash
> docker run -p 5002:5002 606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest
> ```
>
> - `docker run` → Creates and starts a container  
> - `-p 5002:5002` → Maps localhost port 5002 to port 5002 inside the container  
> - `606349121896.dkr.ecr.eu-north-1.amazonaws.com/flask-mysql:latest` → The image pulled from Amazon ECR  
>
> This runs the container locally using the image that was stored inside the ECR repository.

However, this is not going to work fully yet.

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
> This happened because I do not currently have a running MySQL database container.
>
> The Flask application is trying to connect to:
>
> ```bash
> mydb
> ```
>
> But that database service does not exist yet.
>
> The image itself works correctly, however the backend dependency is missing.
>
> To view the fixed version, head over to:
>
> https://github.com/huss-osman/devops-learning/blob/main/05-docker/labs/16-using-images-from-ecr.md

---

## Commands

- `aws ecr get-login-password` → Generate authentication token for ECR  
- `docker login` → Authenticate Docker against the ECR registry  
- `docker build -t` → Build a Docker image  
- `docker tag` → Tag an image for a registry  
- `docker push` → Upload image to ECR  
- `docker pull` → Download image from ECR  
- `docker run` → Create and run a container  

---

## Key Takeaways

- Amazon ECR is AWS’s private Docker registry service  
- Docker images can be stored, shared, and distributed through repositories  
- Images must be built and tagged correctly before pushing  
- ECR authentication uses AWS CLI generated tokens  
- Docker images must be tagged with the ECR repository URL  
- Images can be pushed and pulled securely across environments  
- ECR integrates directly with cloud-native AWS services  
- Containers often depend on backend services such as databases  

---

## Reflection

Building, tagging, pushing, and pulling images made the container workflow much clearer in practice, especially when working with container registries and deployment pipelines.

I also learned how important image tagging, repository management, and authentication are when working with real-world DevOps and cloud-native environments.
