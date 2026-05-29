# Multi-Stage Builds

## Overview

This section focuses on optimising Docker images using multi-stage builds to create smaller, faster, and more efficient container images.

Multi-stage builds help solve this problem by separating the build environment from the final production runtime image.

## Contents

- [Why Multi-Stage Builds Were Used](#why-multi-stage-builds-were-used)
- [Original Dockerfile](#original-dockerfile)
- [Building the Original Image](#building-the-original-image)
- [Checking Docker Image Size](#checking-docker-image-size)
- [Understanding Multi-Stage Builds](#understanding-multi-stage-builds)
- [Building the Optimised Image](#building-the-optimised-image)
- [Comparing Image Sizes](#comparing-image-sizes)
- [Key Takeaways](#key-takeaways)
- [Reflection](#reflection)

---

## Why Multi-Stage Builds Were Used

Previously, the Flask application image included all dependencies, build tools, libraries, and packages directly inside the final runtime image.

While this worked successfully, it resulted in a much larger Docker image than necessary.

Large images:
- Slow down deployments  
- Consume more bandwidth  
- Increase storage usage  
- Take longer to pull from registries  
- Increase CI/CD execution time  

Multi-stage builds solve this problem by separating the build process into multiple stages.

This allows Docker to:
- Use one stage for installing dependencies and building the application  
- Use another lightweight stage for the final production runtime image  

This approach removes unnecessary build dependencies from the final image while keeping only the files required to run the application.

> [!NOTE]
> Multi-stage builds use multiple `FROM` statements inside a Dockerfile.
>
> This allows different stages of the container build process to be separated and optimised individually.
>
> The final production image only contains the required runtime components instead of every dependency used during the build process.

---

## Original Dockerfile

The original Dockerfile installed all dependencies directly into a single image.

<p align="center">
  <img width="500" alt="Original Dockerfile" src="https://github.com/huss-osman/devops-learning/blob/main/images/dockerfile_preview.png" />
</p>

> [!NOTE]
> The image worked successfully, but it contained:
>
> - GCC build tools  
> - Python development packages  
> - MariaDB development libraries  
> - Additional build dependencies  
>
> These packages were only needed during the build process but still remained inside the final image.

---

## Building the Original Image

To build the original image, the following command was used:

<p align="center">
  <img width="900" alt="Building Original Docker Image" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_build_original.png" />
</p>

```bash
docker build -t my-flask-app:original .
```

The image build process took noticeably longer because of the additional packages and dependencies being installed.

---

## Checking Docker Image Size

After building the image, the image size was inspected using:

<p align="center">
  <img width="700" alt="Docker Images Original" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_images_original.png" />
</p>

```bash
docker images my-flask-app:original
```

The image size was significantly larger than expected for a relatively small Flask application.

> [!IMPORTANT]
> Large Docker images negatively impact:
>
> - Deployment speed  
> - CI/CD performance  
> - Registry storage usage  
> - Container startup time  
> - Network bandwidth consumption

---

## Understanding Multi-Stage Builds

Multi-stage builds allow Docker to separate the build stage from the production runtime stage.

The first stage installs all dependencies and builds the application.

The second stage copies only the required application files into a smaller runtime image.

<p align="center">
  <img width="900" alt="Docker Multi-Stage Build Explanation" src="https://github.com/huss-osman/devops-learning/blob/main/images/Docker%20Multi-Stage%20Builds.png" />
</p>

> [!NOTE]
> The build stage contains:
>
> - Build tools  
> - Development libraries  
> - Package dependencies  
>
> The production stage only keeps:
>
> - Runtime dependencies  
> - Application files  
> - Required binaries  
>
> This dramatically reduces the final image size.

---

## Building the Optimised Image

After refactoring the Dockerfile into a multi-stage build, the optimised image was rebuilt.

<p align="center">
  <img width="900" alt="Building Multi-Stage Docker Image" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_build_multi-stage.png" />
</p>

```bash
docker build -t my-flask-app:multistage .
```

The build process completed significantly faster and produced a much smaller image.

---

## Comparing Image Sizes

After rebuilding the image using multi-stage builds, the image size was checked again.

<p align="center">
  <img width="700" alt="Docker Images Multi-Stage" src="https://github.com/huss-osman/devops-learning/blob/main/images/docker_images_multi-stage.png" />
</p>

The image size was reduced dramatically by removing unnecessary build dependencies from the final runtime image.

<p align="center">
  <img width="900" alt="Docker Multi-Stage Build Results" src="https://github.com/huss-osman/devops-learning/blob/main/images/Docker%20Multi-Stage%20Builds%20Results.png" />
</p>

> [!IMPORTANT]
> The Docker image size was reduced significantly using multi-stage builds.
>
> Benefits included:
>
> - Faster deployments  
> - Faster image pulls  
> - Reduced storage usage  
> - Improved CI/CD performance  
> - Smaller attack surface  
> - More efficient production images  

---

## Commands

- `docker build -t my-flask-app:original .` → Build the original Docker image  
- `docker images my-flask-app:original` → Check original image size  
- `docker build -t my-flask-app:multistage .` → Build optimised multi-stage image  
- `docker images my-flask-app:multistage` → Check optimised image size  

---

## Key Takeaways

- Multi-stage builds help reduce Docker image sizes significantly  
- Smaller Docker images improve deployment speed and CI/CD efficiency  
- Large Docker images consume more storage and network bandwidth  
- Multi-stage builds separate build dependencies from production runtime environments  
- Only required runtime files and dependencies should exist inside production images  
- Smaller images are faster to pull from registries such as Amazon ECR  
- Multi-stage builds help reduce unnecessary packages and attack surface areas  
- Docker image optimisation becomes increasingly important across cloud-native environments  
- Production containers should remain lightweight, efficient, and easier to maintain  
- Multi-stage builds are commonly used across modern Docker and Kubernetes workflows  

---

## Reflection

Using multi-stage builds reinforced the importance of separating build environments from production runtime environments to create cleaner and more efficient containers.

This also demonstrated how Docker optimisation directly impacts deployment speed, CI/CD performance, storage usage, and overall operational efficiency within modern cloud-native environments.
