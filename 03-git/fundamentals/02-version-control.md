# What is Version Control

## Overview

**Version control** is a system that tracks changes to code over time.

It allows developers and teams to **see what changed, when it changed, and who changed it**.  
Instead of overwriting files or losing previous work, version control records every modification so history can be inspected or restored when needed.

In modern **DevOps environments**, version control is not limited to application code. It also manages infrastructure and configuration files such as:

- **Terraform modules**
- **Kubernetes manifests**
- **Dockerfiles**
- **Ansible roles**
- **CI/CD pipeline configurations**

When you update a Kubernetes deployment YAML file or tweak a Terraform variable, **Git records those changes** and preserves the full history of the system.

---

## Why Version Control Matters

Version control enables teams to safely:

- **Experiment** with new features or configuration changes  
- **Review** changes before they are merged into production  
- **Recover** quickly if something breaks  

Instead of fearing mistakes, teams can confidently modify systems knowing every change can be inspected, rolled back, or corrected.

---

## Git as a Time Machine

A helpful way to think about **Git** is as a **time machine for your code and infrastructure**.

It allows you to:

- Go back in time to see how a system looked previously
- Compare different versions of files
- Restore working configurations when something fails

This capability becomes critical when debugging deployments, investigating incidents, or understanding how systems evolved.

---

## Version Control in DevOps

In modern DevOps workflows, **everything starts with Git**.

Application code, infrastructure definitions, and automation pipelines all live inside repositories.

From there:

- CI/CD pipelines trigger builds
- Infrastructure is provisioned
- Applications are deployed

Git becomes the **single source of truth** that drives the entire delivery pipeline.

---

## Key Takeaways

- Version control tracks changes to systems over time
- Git enables teams to **experiment**, **review**, and **recover** safely
- Infrastructure and configuration files are also managed through version control
- In modern DevOps workflows, **Git repositories act as the starting point for automation and deployment pipelines**
