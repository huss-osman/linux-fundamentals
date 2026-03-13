# Typical Git Workflow

## Overview

A typical **Git workflow** describes how developers collaborate on a shared codebase using a **remote repository** such as GitHub. Instead of everyone working directly on the same branch, developers create separate **feature branches** to safely develop new functionality.

This workflow allows teams to work independently while still keeping the main project stable. Changes are reviewed through **pull requests (PRs)** before being merged into the **main branch**, helping teams maintain quality and avoid conflicts.

---

## Key Concepts

### Clone or Pull the Repository

Developers start by getting the latest version of the repository. This is usually done by cloning the repository initially or pulling the latest changes from the **main branch**.

This ensures the developer is working with the most up-to-date version of the project.

---

### Create a Feature Branch

Instead of working directly on the main branch, developers create a **feature branch**. This isolates new changes and prevents unfinished work from affecting the main project.

Feature branches allow developers to experiment and iterate safely.

---

### Work Locally and Commit Changes

Developers make changes locally, test their code, and commit updates to their feature branch. Each commit represents a small change in the project history.

Frequent commits help keep changes manageable and easier to review.

---

### Push the Branch

Once work is ready to share, developers push their feature branch to the **remote repository**. This makes the branch visible to the rest of the team.

Other team members can now review the changes.

---

### Pull Request and Code Review

Developers open a **Pull Request (PR)** or **Merge Request (MR)** to propose merging their feature branch into the **main branch**.

Team members review the code, suggest improvements, and ensure the changes meet project standards before merging.

---

### Synchronising with the Main Branch

While working on a feature branch, developers regularly sync with the latest changes from the main branch using **`git pull`**, often with **rebase** or **merge** strategies.

This prevents large conflicts later and keeps the feature branch up to date.

---

## Commands

```bash
git clone <repository-url>

git pull origin main

git checkout -b feature-branch

git add .
git commit -m "Add new feature"

git push origin feature-branch

git pull --rebase origin main
```

---

## Key Takeaways

- A **Git workflow** helps teams collaborate safely on the same project.

- Developers work on **feature branches** instead of directly on the **main branch**.

- Changes are shared using **`git push`** and retrieved using **`git pull`**.

- **Pull Requests (PRs)** allow teams to review and approve changes before merging.

- Regularly syncing with the **main branch** helps prevent large **merge conflicts**.

---

## Reflection

Understanding a **typical Git workflow** is essential for working effectively in a team environment. By using **feature branches**, **Pull Requests**, and regularly synchronising with the **main branch**, developers can collaborate without overwriting each other's work. This workflow forms the foundation of modern development practices and integrates closely with **GitHub**, **CI/CD pipelines**, and professional **software engineering workflows**.
