# Connect to GitHub

## Overview

Connecting a local Git repository to **GitHub** allows developers to store their work remotely, collaborate with others, and keep a secure backup of their project history.

Once connected, changes made locally can be pushed to GitHub, and updates made by others can be pulled back into the local repository. This connection is managed through a **remote repository**, commonly named `origin`.

Understanding how to connect a repository to **GitHub** is essential because it enables collaboration, version sharing, and integration with modern development workflows such as CI/CD pipelines.

---

## Key Concepts

### Remote Repository

A **remote repository** is a version of your project hosted on a server such as **GitHub**. Git allows you to connect your local repository to a remote so changes can be synchronized between them.

The default remote name used in most projects is **origin**, which represents the primary GitHub repository.

---

### Linking Local and Remote Repositories

To connect a local repository to **GitHub**, the remote repository URL must be added using the `git remote add` command. This creates a link between the local project and the remote repository.

Once linked, Git knows where to send pushes and where to pull updates from.

---

### Pushing Changes to GitHub

After connecting a remote repository, the `git push` command sends local commits to **GitHub**. The `-u` flag sets the upstream branch so future pushes and pulls can be done with simpler commands.

This allows Git to track the relationship between the local branch and the remote branch.

---

### Pulling Changes from GitHub

The `git pull` command retrieves updates from **GitHub** and merges them into the local repository. This ensures the local project stays synchronized with the remote version.

Pulling changes regularly helps prevent merge conflicts and keeps the project history consistent.

---

### SSH vs HTTPS

GitHub repositories can be connected using either **HTTPS** or **SSH**.

**SSH** authentication uses cryptographic keys and allows developers to push and pull without entering credentials each time.

**HTTPS** is easier to set up initially but may require authentication through credentials or tokens.

---

## Commands

```bash
git remote add origin <repository-url>

git push -u origin main
```

---

## Key Takeaways

- **GitHub** acts as a **remote repository** for storing and sharing project history.

- The command **`git remote add origin`** links a **local repository** to a **GitHub repository**.

- **`git push`** sends commits from the **local repository** to **GitHub**.

- **`git pull`** retrieves updates from the **remote repository** and merges them into the local repository.

- Repositories can connect using **SSH** or **HTTPS** depending on the authentication method.

---

## Reflection

Understanding how to connect a repository to **GitHub** is a foundational step in using **Git** for collaboration. By linking a **local repository** to a **remote repository**, developers can share work, track changes across teams, and maintain a reliable project history. Learning how **`git push`**, **`git pull`**, and **remote connections** work ensures that development workflows remain synchronized between local environments and **GitHub**.
git pull
