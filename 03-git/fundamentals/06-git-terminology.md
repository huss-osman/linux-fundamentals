# Git Terminology

## Overview

Understanding Git becomes much easier once the core terminology is clear. Git uses a number of concepts such as commits, branches, objects, and references to manage project history and collaboration.

Rather than thinking of Git as just a set of commands, it helps to understand the building blocks behind the system. These concepts explain how Git stores data, tracks changes, and allows teams to collaborate safely across distributed repositories.

---

## Key Concepts

- **Repository**  
A Git project folder that contains tracked files and a hidden `.git` directory where Git stores its data and history.

- **Commit**  
A snapshot of the project at a specific point in time. Each commit includes metadata such as the author, timestamp, message, and a reference to the previous commit.

- **Branch**  
A movable pointer to a specific commit. Branches allow developers to work on features, fixes, or experiments without affecting the main project history.

- **Remote**  
A reference to a repository hosted elsewhere (such as GitHub or GitLab). The default remote is usually named `origin`.

- **Staging Area (Index)**  
A buffer between the working directory and the repository. Files added here are prepared for the next commit.

- **Blob**  
Short for “binary large object”. Blobs store the actual contents of files inside Git.

- **Tree**  
Represents a directory structure. Trees store filenames, paths, and pointers to blobs or other trees.

- **Refs (References)**  
Pointers to commits, such as branches (`refs/heads`), tags (`refs/tags`), and special references like `HEAD`.

- **HEAD**  
A special pointer that indicates the current branch or commit you are working on.

- **Index**  
The internal `.git/index` file that stores information about what is currently staged.

- **Object Store**  
The `.git/objects` directory where Git stores all objects (blobs, trees, and commits) identified by SHA hashes.

- **Tag**  
A reference that points to a specific commit, often used to mark release versions.

---

## Commands

```bash
git init
git status
git add <file>
git commit -m "message"
git branch
git checkout <branch>
git remote -v
git tag
```

---

## Key Takeaways

- A **repository** contains the project and its full **Git history**

- A **commit** represents a **snapshot** of the project state

- **Branches** allow safe **parallel development**

- **Git** stores data as **objects** such as **blobs**, **trees**, and **commits**

- **References** like **branches**, **tags**, and **HEAD** point to specific commits

---

## Reflection

Understanding **Git terminology** makes it easier to reason about how **Git** works under the hood. Concepts such as **commits**, **branches**, and **object storage** explain why **Git** can track **project history** efficiently and support large-scale collaboration across **distributed development teams**.
