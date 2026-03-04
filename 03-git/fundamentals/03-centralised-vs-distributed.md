# Centralised vs Distributed

## Overview

Before Git became the industry standard, many teams relied on **centralised version control systems** such as **SVN (Subversion)**. In a centralised system, a single server stores the entire repository, and developers interact with that server to check out files, make changes locally, and commit those changes back to the central location. This server acts as the **single source of truth** for the project, meaning all collaboration depends on its availability.

While this model worked for many years, it introduced several limitations for growing teams and fast-moving projects. Developers typically needed a constant connection to the server to commit changes, and if the server became unavailable, development could stop entirely. Git introduced a **distributed version control model**, where every developer has a **complete copy of the repository**, including its full history. This approach allows developers to work independently, commit locally, and collaborate more flexibly, fundamentally changing how teams manage code and infrastructure.

---

## Key Concepts

### Centralised Version Control (SVN)

In a centralised system:

- A **single server stores the repository**
- Developers must connect to that server to commit changes
- If the server becomes unavailable, work can stop
- Some workflows require **file locking** to avoid conflicts

Teams often had to coordinate edits manually to avoid modifying the same files at the same time.

---

### Distributed Version Control (Git)

Git introduced a distributed model where **every developer has a full copy of the repository**.

This means developers can:

- Commit changes locally
- Work offline
- Create branches freely
- Merge work later

Because every clone contains the full history of the project, repositories are also **more resilient** to outages.

---

### A Simple Analogy

Think of **SVN** like a **shared Google Doc with one master file**.

Everyone edits the same document, and if the server hosting it goes down, nobody can save changes.

**Git** is more like everyone having **their own copy of the document**, complete with its entire history.

Each person works independently and then merges their changes later.

---

## Commands / Examples

The distributed nature of Git appears in commands like these:

```bash
git clone <repository-url>
git commit -m "Update configuration"
git push origin main
git pull origin main
```

`git clone` creates a **full copy of the repository**, including its entire history.

`git commit` records changes **locally on your machine**.

`git push` sends those commits to the **shared remote repository**.

`git pull` retrieves changes made by other developers.

---

## Key Takeaways

- **Centralised VCS** relies on a single central server
- **Distributed VCS (Git)** gives every developer a full repository copy
- Git allows developers to **commit locally and work offline**
- Distributed systems are **more resilient and flexible**
- Git’s model enables modern **collaborative development workflows**

---

## Reflection

Understanding the difference between **centralised and distributed version control** explains why **Git** became so widely adopted. By giving every developer a **complete repository copy**, **Git** removes many of the limitations of older systems and enables faster, more flexible collaboration.
