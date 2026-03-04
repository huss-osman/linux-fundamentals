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

➡️ [View Git Changed the Game](./04-git-changed-the-game.md)

---

### Chapter 1 – Git Architecture & Internals

Understanding what happens **under the hood** makes Git much easier to use confidently.

Topics include:

- How Git stores snapshots
- The role of the `.git` directory
- Git objects and repository structure

➡️ [View Git Terminology](./06-git-terminology.md)

➡️ [View The .git Directory](./07-dotgit-directory.md)

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

➡️ [View Git Common Commands](./08-common-commands.md)

---

### Chapter 3 – Branching, Merging & Conflict Resolution

This is where **Git** becomes powerful.

Topics include:

- Branching strategies
- Safe collaboration workflows
- Resolving merge conflicts without breaking history

➡️ [View Branching 101](../labs/12-branching-101.md)

➡️ [View Merging](../labs/13-merging.md)

---

### Chapter 4 – Advanced Git Workflows

These commands are **powerful** and sometimes **dangerous**, but incredibly useful when used correctly.

Topics include:

- Rebase
- Stashing work
- Cherry-picking commits

```bash
git rebase main
git stash
git stash pop
git cherry-pick <commit-sha>
```

➡️ [View Rebase vs Merge](../labs/15-rebase-vs-merge.md)

➡️ [View Git Stash & Pop](../labs/16-stash-and-pop.md)

➡️ [View Reset, Revert & Cherry-Pick](../labs/17-reset-revert-cherrypick.md)

---

### Chapter 5 – Git in the Real World

Finally, we explore how **Git** is used in real engineering teams.

Topics include:

- GitHub collaboration
- Pull requests and code reviews
- CI/CD integrations
- Professional Git practices

Example commands used when working with remote repositories:

```bash
git remote -v
git fetch origin
git pull --rebase origin main
git push -u origin main
```

➡️ [View Forks & Pull Requests](../labs/19-forks-and-prs.md)

➡️ [View Typical Git Workflow](../labs/21-typical-workflow.md)

---

### Labs

The module also includes **hands-on labs** designed to reinforce these concepts through practice.

These labs simulate real-world **Git workflows**, including:

- Viewing repository history
- Branching workflows
- Merge conflicts
- Collaboration using GitHub

➡️ [View Git Labs](../labs)

---

## Key Takeaways

- **Git** tracks project history using snapshots
- Branches enable safe experimentation
- Collaboration requires clean commit history
- Understanding Git internals improves debugging and recovery

---

## Reflection

Learning **Git** is not just about memorising commands; it is about understanding how history is recorded, how teams collaborate safely, and how modern software systems are managed through version control. This module focuses on building that understanding step by step through concepts, workflows, and hands-on practice.
