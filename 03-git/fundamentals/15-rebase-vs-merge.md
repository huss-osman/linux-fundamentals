# Rebase vs Merge

## Overview

**Git rebase** and **Git merge** are two different ways of integrating changes from one branch into another. Both achieve the same overall goal of combining work, but they do so in different ways and produce different commit histories.

In collaborative workflows, understanding the difference between **rebase** and **merge** is important because it affects how clean, readable, and traceable the project history becomes. Choosing the right approach depends on whether you want to preserve the full branch structure or maintain a more linear commit history.

---

## Key Concepts

### **Git merge**

`git merge <branch>` combines the specified branch into the current branch.

A merge:

- preserves the full commit history
- may create a **merge commit**
- is useful for collaborative workflows where history should remain explicit

<img width="700" height="142" alt="git mergep2" src="https://github.com/user-attachments/assets/18c55d3c-8783-4ebd-9ede-8e5941e28773" />

```bash
git merge feature-demo
```

---

### **Git rebase**

`git rebase <branch>` moves the current branch so it is replayed on top of another branch.

A rebase:

- rewrites commit history into a more linear form
- avoids merge commits in many cases
- is useful for cleaning up local branch history before opening a pull request

<img width="617" height="50" alt="gitrebase" src="https://github.com/user-attachments/assets/11232396-a796-4827-a813-731aaa535cc6" />

```bash
git rebase main
```

---

### **When to use merge**

Use **merge** when:

- working collaboratively with a team
- you want to preserve the original branch history
- you want an explicit record of integration points

---

### **When to use rebase**

Use **rebase** when:

- cleaning up your local branch history
- updating a feature branch before merging
- you want a linear, easier-to-read commit timeline

---

## Commands

```bash
git merge feature-branch
git rebase main
git rebase --continue
git rebase --abort
git log --oneline --graph --all
```

---

## Key Takeaways

- **Git merge** preserves history and may create a **merge commit**
- **Git rebase** rewrites history to produce a more linear timeline
- Merge is often better for **team collaboration**
- Rebase is useful for **cleaning up local history**
- Understanding both helps developers choose the right workflow for the situation

---

## Reflection

Understanding **rebase vs merge** is important because the choice affects how repository history is shaped. **Merge** keeps the history explicit and collaborative, while **rebase** creates a cleaner and more linear timeline. Knowing when to use each helps keep Git workflows both practical and readable.
