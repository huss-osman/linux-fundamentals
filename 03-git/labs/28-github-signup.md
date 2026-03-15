# GitHub SignUp Hands-On

## Overview

Before working with **Git repositories** and **GitHub collaboration workflows**, developers must first install **Git** locally and configure their identity. This setup ensures that commits are properly attributed and that the local environment can interact with remote repositories hosted on platforms such as **GitHub**.

This hands-on exercise demonstrates how to verify a **Git installation**, install **Git** using different package managers depending on the operating system, and configure global **Git** settings including username and email.

---

## Key Concepts

- **Git Installation** – Git must be installed locally before it can track project history.
- **Version Verification** – Checking the installed version confirms Git is correctly installed.
- **Package Managers** – Tools like Homebrew, Chocolatey, or apt simplify installing software.
- **Global Configuration** – Git requires a username and email to associate commits with a developer.

---

## Commands

### Check Git Version

![Git Version](https://github.com/huss-osman/devops-learning/blob/main/images/git%20install%20on%20plat.png)

```bash
git --version
```

This command verifies whether Git is installed and displays the currently installed version.

---

### Install Git (macOS / Windows Package Managers)

<img width="300" src="https://github.com/huss-osman/devops-learning/blob/main/images/installgit.png">

```bash
brew install git
choco install git
```

These commands install Git using common package managers for macOS and Windows.

---

### Install Git on Linux

<img width="300" src="https://github.com/huss-osman/devops-learning/blob/main/images/install_git_on_linux.png">

```bash
sudo apt-get install git
```

This command installs Git on Debian-based Linux distributions such as Ubuntu.

---

### Configure Git Identity

<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/gitconfig.png">

```bash
git config --global user.name "yourusername"
git config --global user.email "youremail"
```

These commands configure the global Git identity used for commit attribution.

---

## Key Takeaways

- **Git** must be installed locally before interacting with repositories.

- The `git --version` command verifies that Git is installed correctly.

- Package managers simplify installing Git across different operating systems.

- Configuring a global username and email ensures commits are properly attributed.

---

## Reflection

Setting up **Git** locally is a fundamental step in modern development workflows. Installing **Git** and configuring user identity ensures that version control operations function correctly and that commits can be traced back to the correct developer.

Understanding this setup process prepares developers for more advanced workflows such as branching strategies, collaboration through pull requests, and integration with **CI/CD pipelines**.
