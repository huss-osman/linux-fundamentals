# Merging

## Overview

**Git merging** combines changes from one branch into another. It is a core workflow in **Git version control**, allowing developers to integrate work from feature branches back into the main project history.

In collaborative environments, merging enables multiple developers to work independently on different branches while still bringing their changes together safely. Git manages this process by combining commit histories and preserving the full development timeline.

---

## Key Concepts

### **Merging branches**

`git merge <branch>` integrates the specified branch into the current branch.

<img width="767" height="143" alt="git merge" src="https://github.com/user-attachments/assets/35039ce9-3cd5-484f-ba61-4e7fa0989aec" />

```bash
git merge feature-branch
```

---

### **Fast-forward merge**

A fast-forward merge occurs when the current branch has not diverged from the target branch. Git simply moves the branch pointer forward without creating a new merge commit.

```bash
git merge feature-branch
```

---

### **True merge (recursive merge)**

When both branches contain new commits, Git performs a true merge by creating a **merge commit** that combines the histories of both branches.

This preserves the branching structure and records that two histories were merged.

---

### **Merge conflicts**

Conflicts occur when changes in two branches modify the same lines of a file. Git cannot automatically decide which version to keep.

Developers must manually resolve the conflict before completing the merge.

---

## Commands

```bash
git merge <branch>
git merge feature-branch
git merge main
```

---

## Key Takeaways

- **Git merge** combines changes from one branch into another

- Merges integrate feature work back into the main project history

- Fast-forward merges move the branch pointer without creating a merge commit

- True merges create a merge commit when branches have diverged

- Conflicts may occur and require manual resolution

---

## Reflection

Understanding **Git merging** is essential for collaborative development. By allowing multiple branches of work to be safely combined, Git enables teams to develop features independently while maintaining a consistent project history.
