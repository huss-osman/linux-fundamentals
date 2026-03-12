# Git Stash & Pop

## Overview

**Git stash** allows developers to temporarily save uncommitted changes without committing them to the repository history. This is useful when you need to quickly switch branches or work on something else without losing your current progress.

Instead of committing incomplete work, Git stores the changes in a **stash stack**, allowing them to be reapplied later. This makes it easier to pause work safely and return to it when ready.

---

## Key Concepts

### **Temporarily save changes**

`git stash` saves your current uncommitted changes and resets the working directory to match the latest commit.

<img width="968" height="54" alt="image" src="https://github.com/user-attachments/assets/e24d8a70-2249-4605-a850-8b181bfb79ef" />

```bash
git stash
```

---

### **View saved stashes**

`git stash list` displays all saved stashes.

Each stash is stored in a stack-like structure, with the most recent stash at the top.

<img width="620" height="48" alt="image" src="https://github.com/user-attachments/assets/85821a97-e197-45b6-bd16-7d12fe1143dc" />

```bash
git stash list
```

---

### **Reapply a stash**

`git stash apply` reapplies the most recent stash but **keeps it in the stash list**.

This allows the same stash to be reused if needed.

<img width="867" height="257" alt="image" src="https://github.com/user-attachments/assets/14027a12-90da-41eb-85ed-47ec378a9c1b" />

```bash
git stash apply
```

---

### **Pop a stash**

`git stash pop` reapplies the most recent stash **and removes it from the stash list**.

This is the most commonly used command when returning to paused work.

<img width="590" height="51" alt="image" src="https://github.com/user-attachments/assets/d15d2b70-ca13-489f-ba05-8abc07380f45" />

```bash
git stash pop
```

---

### **Use case: switching branches mid-task**

If you are working on a feature but need to switch branches quickly:

1. Save work using `git stash`
2. Switch branches
3. Return later and restore changes using `git stash pop`

This avoids committing incomplete work.

---

## Commands

```bash
git stash
git stash list
git stash apply
git stash pop
```

---

## Key Takeaways

- **Git stash** temporarily saves uncommitted changes
- It allows developers to switch branches without committing unfinished work
- `git stash list` shows all saved stashes
- `git stash apply` reapplies a stash while keeping it stored
- `git stash pop` reapplies the stash and removes it from the stack

---

## Reflection

Understanding **Git stash** helps developers manage unfinished work more safely. Instead of creating unnecessary commits, stashing allows work to be paused and resumed later while keeping the repository history clean.
