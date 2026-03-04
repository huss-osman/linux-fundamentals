# Git Intro

## Overview

**Git** is a distributed version control system used to track changes in files and coordinate work across teams.

It allows developers to record project history, experiment safely with new features, and collaborate without overwriting each other's work.

In modern **DevOps environments**, Git sits at the center of almost every workflow. It powers:

- **Code collaboration**
- **CI/CD pipelines**
- **Infrastructure-as-Code**
- **Release and rollback strategies**

Understanding Git properly means understanding **how teams build, ship, and recover software safely**.

---

## Why Learn Git?

Git is the foundation of how modern teams collaborate.

It enables teams to:

- **Track every change** made to a project
- **Experiment safely** using branches
- **Collaborate without conflicts**
- **Recover quickly** when mistakes happen

In DevOps workflows, Git is often the **source of truth** for systems, infrastructure, and application code.

Learning Git properly means understanding **how history, collaboration, and automation intersect.**

---

## The Git Learning Path

This module is structured to build Git knowledge step by step.

### Chapter 0 – History

Before touching any commands, we start with **why Git exists**.

Topics include:

- The problems with older version control systems
- The origin story of Git
- **Linus Torvalds** creating Git during Linux kernel development

➡️ [Git Changed the Game](./04-git-changed-the-game.md)

---

### Chapter 1 – Git Architecture & Internals

Understanding what happens **under the hood** makes Git much easier to use confidently.

Topics include:

- How Git stores snapshots
- The role of the `.git` directory
- Git objects and repository structure

➡️ [Git Terminology](./06-git-terminology.md)  
➡️ [The .git Directory](./07-dotgit-directory.md)

---

### Chapter 2 – Git Basics

Now we move into **hands-on usage**.

Topics include:

- Creating repositories
- Tracking changes
- Recording project history

Example commands:

```bash
git init
git add .
git commit -m "Initial commit"
git status
```

