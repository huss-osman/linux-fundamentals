# Branching 101

## Overview

**Git branching** allows developers to work on new features, bug fixes, or experiments without affecting the main codebase. Instead of modifying the main branch directly, developers create separate branches where changes can be developed and tested safely.

This workflow is fundamental in modern **DevOps environments**, where teams often work on multiple features simultaneously. Branching enables parallel development, safer collaboration, and controlled integration of changes into the main project.

---

## Key Concepts

### **List existing branches**

`git branch` displays all branches in the repository and highlights the current active branch.

<img width="586" height="75" alt="git branch" src="https://github.com/user-attachments/assets/5f637bad-9fad-4db4-b223-484f27eba823" />

```bash
git branch
```

---

### **Create and switch branch (older syntax)**

`git checkout -b <branch>` creates a new branch and immediately switches to it.

<img width="766" height="46" alt="git checkout -b (branch)" src="https://github.com/user-attachments/assets/072dd00a-48f4-4075-a380-5aaeb464a48a" />

```bash
git checkout -b demo-feature
```

---

### **Create and switch branch (modern syntax)**

`git switch -c <branch>` is the newer and clearer command for creating and switching branches.

<img width="708" height="48" alt="git switch -c (branch)" src="https://github.com/user-attachments/assets/ec5524c3-5303-42bf-93f1-39a2b5e3ac97" />

```bash
git switch -c demo-auth
```

---

### **Switch branches**

`git switch <branch>` moves the working directory to another branch.

<img width="614" height="72" alt="git switch (branch)" src="https://github.com/user-attachments/assets/61f1fee9-c4ed-42a4-82e6-31548c6e2af3" />

```bash
git switch main
```

---

### **Delete a branch**

`git branch -d <branch>` removes a branch that is no longer needed.

<img width="747" height="92" alt="git branch -d (branch)" src="https://github.com/user-attachments/assets/e4053954-761b-4b56-951f-c7d3664c9431" />

```bash
git branch -d demo-feature
git branch -d demo-auth
```

---

## Commands

```bash
git branch
git checkout -b <branch>
git switch -c <branch>
git switch <branch>
git branch -d <branch>
```

---

## Key Takeaways

- **Git branching** allows developers to work on features independently

- `git branch` lists existing branches

- `git switch -c` creates and switches to a new branch

- `git switch` moves between branches safely

- `git branch -d` deletes branches that are no longer needed

- Branching enables safe experimentation without affecting the main codebase

---

## Reflection
Understanding **Git branching** is essential for modern development workflows. By creating separate branches for features and fixes, teams can develop, test, and review changes independently before merging them into the main project, improving collaboration and reducing risk.
