# Pushing our Images to Amazon ECR

## Overview

Amazon ECR (Elastic Container Registry) is AWS’s fully managed container image registry service used to store, manage, and distribute Docker container images.

It works very similarly to Docker Hub, except the registry is hosted inside AWS and integrates directly with other AWS services such as:

- ECS  
- EKS  
- EC2  
- Lambda  
- CI/CD pipelines  

Understanding ECR is important when working with containerised applications, cloud-native deployments, and production infrastructure inside AWS environments.

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

Amazon ECR (Elastic Container Registry) is a private container registry service provided by AWS.

Think of ECR as AWS’s version of Docker Hub.

Instead of storing images only on your local machine, ECR allows you to:

- Store Docker images remotely  
- Push images securely to AWS  
- Pull images onto other machines  
- Use images inside ECS and EKS  
- Manage private container registries  
- Deploy containerised applications in the cloud  

> [!NOTE]
> ECR repositories are private by default which improves security and access control compared to public registries.

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

Inside ECR, create a new private repository.

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

AWS automatically provides the commands needed to authenticate Docker and push images to your private registry.

<p align="center">
  <img width="1000" alt="View Push Commands ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/View_Push_Commands_ECR.png" />
</p>

<p align="center">
  <img width="1000" alt="Push Commands Repo ECR" src="https://github.com/huss-osman/devops-learning/blob/main/images/Push_Commands_Repo_ECR.png" />
</p>

---

## Install AWS CLI

To install the AWS CLI for your respective Operating Systems, visit this page:

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

> [!IMPORTANT]
> The AWS CLI is required because Docker needs to authenticate against your private ECR registry securely using AWS credentials.

---

## Authenticate Docker to Amazon ECR

Copy the first command AWS provides:

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

AWS also provides the build command.

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
> - `docker build` → Builds a Docker image from a Dockerfile  
> - `-t` → Adds a tag to the image  
> - `flask-mysql` → The image name  
> - `.` (dot) → Uses the current directory as the Docker build context  
>
> Since I already had a Dockerfile created previously, Docker simply built the image using that Dockerfile.
>
> Once the image is built successfully, we can then tag it correctly for Amazon ECR.

---

## Tag Docker Image for ECR

Now that the image exists locally, we can correctly tag it for Amazon ECR.

Go back to the AWS Console and copy the provided tag command.

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

Now all that is left is pushing the image to Amazon ECR.

Go back to the AWS Console and copy the push command.

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

Once the push is complete, head back to the AWS Management Console and refresh the page.

<p align="center">
  <img width="1000" alt="Refresh ECR Page" src="https://github.com/huss-osman/devops-learning/blob/main/images/Refresh_ECR_Page.png" />
</p>

Watch this video to view the uploaded image details.

https://github.com/huss-osman/devops-learning/blob/main/images/Navigate_Image_View_Details.mp4

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

Now let’s say you would like to deploy this image onto another machine or even pull it back down to your local environment.

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
> This command downloads the image stored in Amazon ECR back into our local Docker environment ready to be ran as a container.

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
  <img width="1000" alt="Unknown Server Host Error" src="https://github.com/huss-osman/devops-learning/blob/main/images/unknown_server_host_error.png" />
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
> https://github.com/huss-osman/devops-learning/blob/main/05-docker/labs/15-pushing-images-to-amazon-ecr.md

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
- Docker images must be built before tagging  
- ECR authentication uses AWS CLI generated tokens  
- Docker images must be tagged with the ECR repository URL  
- Images can be pushed and pulled securely across environments  
- ECR integrates directly with cloud-native AWS services  
- Containers often depend on backend services such as databases  

---

## Reflection

Working with Amazon ECR made the container workflow feel much more cloud-focused compared to only using Docker locally.

I learned how Docker authenticates against private registries, how image tagging works with repository URLs, and how container images can be distributed across different environments securely using AWS infrastructure.

I also learned that successfully running a container is not only about the image itself, but also about understanding the dependencies behind the application such as databases and backend services.
