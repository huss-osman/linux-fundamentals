# Undoing in Git

## Overview

Undoing changes in **Git** allows developers to safely recover from mistakes made in the working directory, staging area, or commit history. Commands such as **git restore**, **git reset**, and **git revert** provide different ways to discard file changes, unstage updates, move **HEAD**, or create a new commit that reverses an earlier one. Understanding when to use each command is essential for managing code changes without losing important work.

These undoing techniques are important in real-world development because mistakes happen frequently during editing, staging, committing, and pushing code. By learning how to undo changes correctly, developers can keep the **main branch** stable, fix accidental commits, and maintain a clean **Git** history. This knowledge also supports safer collaboration on **GitHub**, especially when working with shared branches, **pull requests**, and **CI/CD pipelines**.

---

## Key Concepts

- **Working Directory** – The local files currently being edited.
- **Staging Area** – The area where changes are prepared before a **commit**.
- **Commit** – A saved snapshot of changes in the repository history.
- **HEAD** – The current position in the **Git** history.
- **Restore** – Reverts file changes in the working directory.
- **Reset** – Moves **HEAD** and can also unstage or discard changes.
- **Soft Reset** – Moves **HEAD** but keeps changes staged.
- **Mixed Reset** – Moves **HEAD** and unstages changes.
- **Hard Reset** – Moves **HEAD** and discards changes completely.
- **Revert** – Creates a new commit that undoes a previous commit.
- **Log** – Displays commit history.
- **Reflog** – Shows recent **HEAD** movements and history actions.

---

## Commands

### Switch to Main Branch and Pull Latest Changes

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/undo_pull_latest_changes.png">

```bash
git checkout main
git pull
```

This switches to the **main branch** and updates the local repository from the **remote repository**.

---

### Create a Test File and Commit It

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/undo_create_test_commit.png">

```bash
echo "original line" > undo.txt
git add undo.txt
git commit -m "test commit"
```

This creates a file and saves it in the **Git** history with a new **commit**.

---

### Restore a Modified File

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_restore_file.png">

```bash
echo "bad change" > undo.txt
cat undo.txt
git restore undo.txt
cat undo.txt
```

This discards the unstaged change and restores the file to the last committed version.

---

### Push the Commit to GitHub

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/undo_push_test_commit.png">

```bash
git push
```

This pushes the committed file to **GitHub** so it appears in the **remote repository**.

---

### Stage a File and Check Status

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/stage_file_for_unstage_demo.png">

```bash
echo "another bad line" > undo.txt
git add undo.txt
git status
```

This stages the modified file and shows that it is ready to be committed.

---

### Unstage the File

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_restore_staged_file.png">

```bash
git restore --staged undo.txt
git status
```

This removes the file from the staging area while keeping the change in the working directory.

---

### Stage, Commit, and Push Another Change

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/undo_commit_and_push_change.png">

```bash
git add undo.txt
git commit -m "move to main"
git push
```

This saves the updated file in a new **commit** and pushes it to **GitHub**.

---

### Create an Accidental Commit

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_bad_commit.png">

```bash
echo "oops commit" > undo.txt
git status
git add undo.txt
git commit -m "bad commit"
```

This creates an accidental **commit** that will be undone using reset commands.

---

### Undo the Last Commit with Soft Reset

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_reset_soft_head1.png">

```bash
git reset --soft HEAD~1
git status
```

This moves **HEAD** back by one commit but keeps the changes staged.

---

### Undo the Last Commit with Mixed Reset

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_reset_mixed_head1.png">

```bash
git reset --mixed HEAD~1
git status
```

This moves **HEAD** back by one commit and unstages the changes while keeping them in the working directory.

---

### Undo the Last Commit with Hard Reset

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_reset_hard_head1.png">

```bash
git reset --hard HEAD~1
git status
git pull
git push
```

This moves **HEAD** back by one commit and discards local changes completely.

---

### Create and Push an Accidental Production Commit

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_accidental_prod_commit.png">

```bash
echo "production mistake" > undo.txt
git add .
git commit -m "accidental prod commit"
git push
```

This creates and pushes an accidental **commit** to the **main branch**.

---

### Revert the Last Commit

<img width="650" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_revert_head.png">

```bash
git revert HEAD
```

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_revert_head.png1">

This opens the editor and prepares a new **commit** that reverses the last commit without rewriting history.

---

### Complete the Revert and Push

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_revert_push.png">

```bash
git revert HEAD
git status
git push
```

This creates the revert **commit** and pushes the corrected history to **GitHub**.

---

### View Commit History

<img width="400" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_log_oneline.png">

```bash
git log --oneline
```

This shows a compact view of the **commit** history, including the revert and earlier changes.

---

### View Reference Log

<img width="280" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_reflog_history.png">

```bash
git reflog
```

This displays recent **HEAD** movements, resets, commits, pulls, and reverts for recovery and troubleshooting.

---

## View Changes on GitHub

### 1. Refresh the repository page

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_undo_repository_view.png">

You should now see the updated **undo.txt** file and the latest **commit** history in the repository.

### 2. Open the file

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_undo_file_view1.png">

You should see the final content of **undo.txt** after the revert operation.

---

## Key Takeaways

- **Git** provides multiple ways to undo changes depending on where the mistake occurred.
- **git restore** discards unstaged file changes.
- **git restore --staged** removes files from the staging area.
- **git reset --soft** keeps undone changes staged.
- **git reset --mixed** keeps undone changes but unstages them.
- **git reset --hard** removes changes completely.
- **git revert** is safer for undoing pushed commits on shared branches.
- **git log** and **git reflog** help track and recover repository history.

---

## Reflection

Undoing changes in **Git** is an essential skill for correcting mistakes in the working directory, staging area, and **commit** history. Commands like **git restore, git reset**, and **git revert** help developers recover safely while keeping the **main branch** stable and organized.

In real-world workflows, these commands are important for fixing accidental commits, reversing pushed changes, and maintaining a reliable project history. Tools like **VS Code, Git**, and **GitHub** make this process easier to understand, while safe undo practices support collaboration through **pull requests, code reviews**, and **CI/CD pipelines**.
