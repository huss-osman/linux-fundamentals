# Git vs GitHub - What's the Difference

## Overview

**Git** and **GitHub** are often mentioned together, but they serve different roles in modern software development. **Git** is a distributed **version control system** that tracks changes to files and allows developers to manage project history locally. It enables developers to commit changes, create branches, and experiment safely without affecting the main codebase. Because Git is distributed, every developer has a full copy of the repository and its history on their machine.

**GitHub**, on the other hand, is a **platform that hosts Git repositories** and enables collaboration between developers. It provides features such as pull requests, issue tracking, and code reviews, allowing teams to share code and work together on projects. In modern **DevOps environments**, **Git is the foundation**, while platforms like **GitHub**, **GitLab**, or **Bitbucket** provide the infrastructure for collaboration, automation, and integration with CI/CD workflows.

---

## Key Concepts

### Git

**Git** is a version control system that runs locally on your machine.

It allows developers to:

- Track changes to files
- Create commits and branches
- Work offline
- Maintain the full history of a project

Because Git is distributed, every developer has a **complete copy of the repository**, including its history.

---

### GitHub

**GitHub** is a cloud-based platform built around Git repositories.

It provides collaboration tools such as:

- Pull requests
- Code reviews
- Issue tracking
- Repository hosting
- CI/CD integrations

While Git manages version control locally, GitHub enables **team collaboration and remote repository management**.

---

## Commands

Common commands used when interacting with a remote platform like GitHub:

```bash
git clone <repository-url>
git remote -v
git push origin main
git pull origin main
```

---

## Key Takeaways

- **Git** is a distributed version control system used to track project history
- **GitHub** is a platform that hosts Git repositories and enables collaboration
- **Git** runs locally, while **GitHub** runs on the web
- Platforms like **GitHub**, **GitLab**, and **Bitbucket** build tools around Git repositories
- **Git** is the foundation of modern **DevOps workflows**

---

## Reflection

Understanding the difference between **Git** and **GitHub** helps clarify how modern development workflows operate. **Git** manages version control locally, allowing developers to track changes and maintain project history, while platforms like **GitHub** provide the collaboration layer that enables teams to share, review, and manage code together.
