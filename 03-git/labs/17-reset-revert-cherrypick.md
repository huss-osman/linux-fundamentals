# Reset, Revert & Cherry-pick

## Overview

**Git reset**, **git revert**, and **git cherry-pick** are commands used to undo, recover, or selectively apply changes in a repository. Although they may seem similar at first, each command behaves differently and is used in different situations.

Understanding the difference between these commands is important because they affect **Git history** in different ways. Some commands rewrite local history, while others preserve history by creating new commits. Choosing the correct command helps developers work more safely and confidently.

---

## Key Concepts

### **Git reset --soft**

`git reset --soft <commit>` moves the branch pointer backward while keeping the changes from the removed commit **staged**.

This is useful when you want to undo a commit but immediately recommit the changes differently.

<img width="900" height="153" alt="image" src="https://github.com/user-attachments/assets/e59a6fc1-5d21-44c4-96e8-aa96976fda4d" />

```bash
git reset --soft HEAD~1
git status
```

---

### **Git reset --mixed**

`git reset --mixed <commit>` moves the branch pointer backward and keeps the changes in the working directory, but **unstages** them.

This is the default reset mode and is useful when you want to undo a commit and review or re-stage the changes manually.

<img width="908" height="217" alt="image" src="https://github.com/user-attachments/assets/3dbb99f1-4bf8-4ba2-99d8-a3b8dd22ee05" />

```bash
git reset --mixed HEAD~1
git status
```

---

### **Git reset --hard**

`git reset --hard <commit>` moves the branch pointer backward and **removes the commit and working changes completely**.

This is the most destructive reset mode and should be used carefully because it permanently discards local changes.

<img width="895" height="119" alt="image" src="https://github.com/user-attachments/assets/eea79a8f-2dce-4715-a4b3-90654501e224" />

```bash
git reset --hard HEAD~1
git log --oneline
```

---

### **Git revert**

`git revert <commit>` creates a **new commit** that reverses the changes introduced by an earlier commit.

This is the safest way to undo changes in a shared repository because it does **not rewrite history**.

<img width="916" height="257" alt="image" src="https://github.com/user-attachments/assets/86802c30-843a-424c-9581-9c092d7eca28" />

```bash
git revert HEAD --no-edit
git log --oneline
```

---

### **Git cherry-pick**

`git cherry-pick <commit>` applies a **specific commit** from another branch onto the current branch.

This is useful when you want to bring over a single fix or change without merging the entire branch.

<img width="2000" height="448" alt="image" src="https://github.com/user-attachments/assets/209e3d73-a42d-4bdf-b97b-be34921c282e" />

```bash
git cherry-pick <commit>
git log --oneline
```

---

## Commands

```bash
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1

git revert HEAD --no-edit

git cherry-pick <commit>
```

---

## Key Takeaways

- `git reset --soft` removes the commit but keeps changes staged
- `git reset --mixed` removes the commit and unstages the changes
- `git reset --hard` removes the commit and deletes the changes completely
- `git revert` safely undoes a commit by creating a new commit
- `git cherry-pick` applies one specific commit from another branch
- Understanding the difference between these commands helps maintain a safe and clean **Git history**

---

## Reflection

Understanding **reset, revert, and cherry-pick** is essential because each command changes repository history in a different way. **Reset** is useful for local cleanup, **revert** is safer for shared history, and **cherry-pick** helps apply targeted changes without merging a full branch. Knowing when to use each one makes Git workflows more controlled and reliable.
