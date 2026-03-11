# Reset, Revert & Cherry-pick

## Overview

**Git** provides multiple ways to undo or reuse changes in a repository. Commands such as **git reset**, **git revert**, and **git cherry-pick** allow developers to correct mistakes, recover from issues, or reuse commits from other branches.

Each command behaves differently and should be used depending on whether the history is shared with others or only exists locally. Understanding when to use each command is important for maintaining a clean and safe project history.

---

## Key Concepts

### Revert a commit safely

`git revert` creates a new commit that reverses the changes introduced by a previous commit.

This is the safest option when working with shared repositories because it does not rewrite history.

```bash
git revert <commit>
```

Example:

```bash
git revert a1b2c3d
```

---

### Move the branch pointer with reset

`git reset` moves the current branch pointer to a different commit.

This changes the commit history locally and should be used carefully.

```bash
git reset <mode> <commit>
```

Common modes:

```bash
git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1
```

Modes explained:

- `--soft` keeps changes staged
- `--mixed` keeps changes in the working directory but unstaged
- `--hard` removes commits and deletes changes completely

---

### Apply a commit from another branch

`git cherry-pick` copies a specific commit from another branch and applies it to the current branch.

This is useful when a single fix or change needs to be applied without merging the entire branch.

```bash
git cherry-pick <commit>
```

Example:

```bash
git cherry-pick 4f3a1b2
```

---

## Commands

```bash
git revert <commit>

git reset --soft HEAD~1
git reset --mixed HEAD~1
git reset --hard HEAD~1

git cherry-pick <commit>
```

---

## Key Takeaways

- `git revert` safely undoes changes by creating a new commit
- `git reset` moves the branch pointer and can rewrite history locally
- `git reset --soft`, `--mixed`, and `--hard` control how changes are kept or removed
- `git cherry-pick` allows applying a specific commit from another branch
- Choosing the correct command helps maintain a clean and safe Git history

---

## Reflection

Understanding **reset, revert, and cherry-pick** is essential because each command changes Git history in a different way. **Revert** is safest for shared history, **reset** is useful for local cleanup, and **cherry-pick** helps apply targeted changes without merging an entire branch. Knowing when to use each one makes Git workflows safer and more controlled.
