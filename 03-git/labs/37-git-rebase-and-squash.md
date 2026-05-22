# Git Rebase and Squash

## Overview

**Git rebase** is used to move or reapply commits from one branch onto another, creating a cleaner and more linear project history. Unlike merging, which preserves all commit history, rebasing rewrites commits to appear as if they were created on top of the latest branch state.

**Squashing** is a technique used during rebasing to combine multiple commits into a single, meaningful commit. This helps keep the commit history clean and easier to understand, which is especially important when working with **GitHub**, **pull requests**, and collaborative workflows.

---

## Key Concepts

- **Rebase** – Reapplies commits on top of another base branch.
- **Interactive Rebase (`-i`)** – Allows editing, reordering, or squashing commits.
- **Squash** – Combines multiple commits into one.
- **Commit History** – The sequence of commits in a repository.
- **HEAD** – Points to the current commit.
- **Force Push** – Required after rewriting commit history.
- **Clean History** – A simplified and readable commit structure.

---

## Commands

### Create Feature Branch

<p align="center">
<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/rebase_create_branch.png">
</p>

```bash
git checkout -b feature-rebase
```

This creates a new branch for demonstrating **rebase** and **squash**.

---

### Create Multiple Commits

<p align="center">
<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/rebase_multiple_commits.png">
</p>

```bash
echo "line 1" > changes.txt
git add changes.txt
git commit -m "feat: add first line"

echo "line 2" >> changes.txt
git add changes.txt
git commit -m "feat: add second line"

echo "line 3" >> changes.txt
git add changes.txt
git commit -m "feat: add third line"
```

This creates multiple commits that will later be **squashed**.

---

### Start Interactive Rebase

<p align="center">
<img width="370" src="https://github.com/huss-osman/devops-learning/blob/main/images/rebase_interactive.png">
</p>

```bash
git rebase -i HEAD~3
```

This opens the last 3 commits in an editor for modification.

---

### Squash Commits

<p align="center">
<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_rebase_head1.png">
</p>

Change:

```bash
pick 7bfcebb feat: add first line
pick d4c513a feat: add second line
pick 221c1d0 feat: add third line
```

To:

```bash
pick 7bfcebb feat: add first line
squash d4c513a feat: add second line
squash 221c1d0 feat: add third line
```

> [!NOTE]
> - When using `vi`, type `:wq!` to save and exit the editor.

---

### Edit Commit Message

<p align="center">
<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/rebase_commit_message.png">
</p>

```bash
feat: add all 3 lines to change.txt
```

After saving again (`:wq!`), the commits are combined into one.

---

### Verify Commit History

<p align="center">
<img width="650" src="https://github.com/huss-osman/devops-learning/blob/main/images/rebase_log.png">
</p>

```bash
git log --oneline
```

This shows a single clean commit instead of multiple small ones.

--- 

### Push Changes to GitHub

<p align="center">
<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/rebase_push.png">
</p>

```bash
git push --set-upstream origin feature-rebase
```

If rebasing after already pushing, use:

<p align="center">
<img width="630" src="https://github.com/huss-osman/devops-learning/blob/main/images/rebase_force_push.png">
</p>

```bash
git push origin feature-rebase --force
```

---

## View Changes on GitHub

### 1. Switch to the feature branch

<p align="center">
<img width="750" src="https://github.com/huss-osman/devops-learning/blob/main/images/branch_view_github1.png">
</p>

Select the **feature-rebase** branch from the branch dropdown.

---

### 2. Locate the updated file

<p align="center">
<img width="750" src="https://github.com/huss-osman/devops-learning/blob/main/images/branch_view_github2.png">
</p>

You should now see the updated **changes.txt** file in the repository.

---

### 3. Open the file

<p align="center">
<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/branch_view_github3.png">
</p>

You should see all squashed changes in a single commit:

```bash
line 1
line 2
line 3
```

### 4. View commit history

<p align="center">
<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/branch_view_github4.png">
</p>

You should see a single commit (e.g., **feat: add all 3 lines to change.txt**) confirming that the commits were successfully squashed.

---

## Key Takeaways

- **Git rebase** creates a cleaner, linear commit history.
- **Interactive rebase** (`-i`) allows editing and combining commits.
- **Squashing** reduces multiple commits into a single meaningful one.
- Always use `:wq!` in **Vim** to save and continue the rebase process.
- After rebasing, a **force push** may be required.
- Clean commit history improves readability in **GitHub** and **pull requests**.

---

## Reflection

**Git rebase** and **squash** help maintain a clean and organized commit history by combining multiple small commits into a single meaningful change. This makes it easier for teams to review code and understand project evolution.

In real-world workflows, developers often squash commits before creating a **pull request** to keep history simple and professional. Combined with tools like **GitHub** and **VS Code**, this approach improves collaboration and supports efficient development practices.
