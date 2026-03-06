# The Areas of Git

## Overview

**Git** manages changes across three main areas that work together to track and record project history. Understanding these areas helps explain how changes move from edited files to permanent commits inside a repository.

Rather than saving changes immediately, **Git** follows a structured workflow that allows developers to review, stage, and record changes step by step. This design makes version control more controlled and predictable when collaborating with others.

---

## Key Concepts

### Working Directory
  
The **working directory** is the area where files are actively edited.  
This is the current state of your project on disk before changes are staged or committed.

Changes made here are not yet tracked by **Git** until they are explicitly staged.

### Staging Area (Index)
  
The **staging area**, also known as the **index**, acts as a preparation step before committing.

Files added to the staging area are marked as changes that will be included in the next **commit**.

This allows developers to carefully choose which modifications become part of the project history.

### Repository (.git)
  
The **repository** is where **Git** permanently stores the project’s history.

When a commit is created, **Git** records a **snapshot** of the staged files inside the `.git` directory.

Each commit represents the full state of the repository at that moment in time.

---

## Commands

Common commands that move changes between these areas include:

```bash
git status
git add <file>
git commit -m "message"
```

- **git status**  
Shows the state of the **working directory** and **staging area**.

- **git add**  
Moves changes from the **working directory** to the **staging area**.

- **git commit**  
Records staged changes into the **repository history**.

---

## Key Takeaways

- **Git** operates across three main areas: the **working directory**, **staging area**, and **repository**

- The **working directory** contains files currently being edited

- The **staging area** prepares selected changes for the next commit

- The **repository** stores the complete history of commits inside **.git**

- Commands like **git add** and **git commit** move changes between these areas

---

## Reflection

Understanding the **three areas of Git** makes the workflow much easier to reason about. By separating **editing**, **staging**, and **committing**, **Git** allows developers to carefully control what changes become part of the project history and collaborate more safely across shared repositories.
