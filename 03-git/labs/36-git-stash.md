# Git Stash

## Overview

**Git stash** allows developers to temporarily save uncommitted changes without creating a **commit**. This is useful when work is incomplete but another task, such as a quick fix, must be handled immediately. By stashing changes, developers can clean the working directory, switch focus, and return to the saved work later.

This is important in real-world development because interruptions happen often during feature work. Using **Git stash** helps developers pause unfinished changes, apply urgent updates, and then restore their previous work safely. It also supports cleaner workflows in **GitHub** projects where teams use branches, **pull requests**, and **CI/CD pipelines**.

---

## Key Concepts

- **Stash** – A temporary storage area for uncommitted changes.
- **Working Directory** – The local files currently being edited.
- **Stash Push** – Saves tracked changes into a new stash entry.
- **Stash List** – Displays saved stash entries.
- **Stash Apply** – Restores stashed changes without removing the stash.
- **Stash Pop** – Restores stashed changes and removes the stash entry.
- **Stash Clear** – Deletes all stash entries.
- **Commit** – A saved snapshot of changes in the repository history.

---

## Commands

### Create Work in Progress and Stash It

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_stash_work.png">

```bash
echo "incomplete work" > feature.txt
git add feature.txt
echo "more changed not staged" > feature.txt
git stash push -m "WIP: feature.txt changes"
git status
```

This saves the unfinished work in a **stash** and returns the working directory to a clean state.

---

### Apply a Hotfix on Main Branch

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_stash_hotfix_commit.png">

```bash
echo "hotfix applied" > hotfix.txt
git add hotfix.txt
git commit -m "apply hotfix on main"
git push
```

This creates and pushes a hotfix while the unfinished feature work remains safely stored in the **stash**.

---

### View Stash Entries

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_stash_list.png">

```bash
git stash list
```

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/stashed_work.png">

This shows the saved **stash** entries in the repository.

---

### Apply the Stash

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_stash_apply.png">

```bash
git stash apply
```

This restores the stashed changes but keeps the **stash** entry available for reuse.

---

### Pop the Stash

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_stash_pop.png">

```bash
git stash pop
git stash list
git status
```

This restores the stashed changes and removes the **stash** entry after applying it.

---

### Commit and Push Restored Work

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_stash_commit_push.png">

```bash
git commit -m "push feature changes"
git push
```

This saves the restored work in a new **commit** and pushes it to **GitHub**.

---

### Clear All Stash Entries

<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_stash_clear.png">

```bash
git stash clear
```

This removes all saved **stash** entries from the repository.

---

## Key Takeaways

- **Git stash** temporarily saves unfinished work without creating a **commit**.
- **git stash push** stores current changes in a new stash entry.
- **git stash list** shows available stash entries.
- **git stash apply** restores changes without deleting the stash.
- **git stash pop** restores changes and removes the stash entry.
- **git stash** clear removes all stored stash entries.
- Stashing is useful when urgent work interrupts current development.

---

## Reflection

**Git stash** is a useful feature in **Git** for temporarily saving unfinished work when developers need to switch tasks quickly. It helps keep the working directory clean while preserving progress that can be restored later.

In real-world workflows, **Git stash** is helpful when urgent fixes must be handled before a feature is complete. Combined with **GitHub, pull requests**, and **CI/CD pipelines**, it supports a cleaner and more flexible development process.
