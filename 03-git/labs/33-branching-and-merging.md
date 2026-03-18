## Overview

Using **Git branching** allows developers to work on features, fixes, or experiments independently without affecting the main codebase. Branches provide isolated environments where changes can be made safely, enabling developers to test ideas and iterate without risking the stability of the primary project.

Merging is the process of combining changes from different branches into a single branch, typically the **main branch**. This supports collaborative workflows where multiple developers can work in parallel and later integrate their contributions. Understanding how branching and merging work is essential for managing code changes, resolving conflicts, and maintaining a clean and reliable project history.

---

## Key Concepts

- **Branch** – A separate line of development in a repository.
- **Main Branch** – The primary branch that represents stable code.
- **Feature Branch** – A branch used to develop new features independently.
- **Merge** – The process of combining changes from one branch into another.
- **Merge Conflict** – Occurs when Git cannot automatically reconcile differences between branches.
- **HEAD** – Represents the current checked-out branch.

---

## Commands

### Create and Commit on Main Branch

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/branch_main_commit.png">

```bash
echo "Hello from main" > app.txt
git add app.txt
git commit -m "initial commit on main"
```

This creates a file and commits it to the **main branch**.

---

### Create Feature Branch

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_feature_branch.png">

```bash
git checkout -b feature-1
```

This creates and switches to a new branch called **feature-1**.

---

### Modify File in Feature Branch

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/feature_branch_change.png">

```bash
echo "Feature branch change" > app.txt
git add app.txt
git commit -m "update from feature-1"
```

This updates the file in the **feature branch**.

---

### Switch Back to Main and Modify

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/main_branch_change.png">

```bash
git checkout main
echo "Main branch change" > app.txt
git add app.txt
git commit -m "conflicting update from main"
```

This introduces a conflicting change in the **main branch**.

---

### Merge Feature Branch into Main

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/merge_conflict.png">

```bash
git merge feature-1
```

Git attempts to merge but encounters a **merge conflict**.

---

### Resolve Merge Conflict

The file will contain conflict markers:

<img width="350" src="https://github.com/huss-osman/devops-learning/blob/main/images/merge_conflict_markers.png">

```
cat app.txt
```

Edit the file to resolve the conflict:

<img width="1500" src="https://github.com/huss-osman/devops-learning/blob/main/images/edit_conflict.png">

```bash
echo -e "Hello from main\nMain branch change\nFeature branch change" > app.txt
```

---

### Stage and Commit Resolution

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/merge_resolved_commit.png">

```bash
git add app.txt
git commit -m "resolve merge conflict between main and feature-1 branch"
```

This completes the merge.

---

### Push Changes to GitHub

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/merge_push.png">

```bash
git push
```

The merged changes are now reflected in the remote repository.

---

## View Changes on GitHub

### 1. Refresh the repository page

<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_merge_view.png">

You should now see the updated **app.txt** file.

---

### 2. Open the file

<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_app_txt.png">

You should see all merged changes:

```
Hello from main
Main branch change
Feature branch change
```

---

### Delete Feature Branch

<img width="550" src="https://github.com/huss-osman/devops-learning/blob/main/images/del_branch.png">

```bash
git branch -d feature-1
```

This removes the feature branch after merging.

> [!NOTE]
> - Deleting branches keeps the repository clean after features are merged.
> - When using `vi`, type `:q` to exit the editor.

---

## Key Takeaways

- Branches allow developers to work independently without affecting the main codebase.
- Feature branches isolate changes for safer development.
- Merging integrates changes from different branches.
- Merge conflicts occur when changes overlap and must be resolved manually.
- After merging, branches can be deleted to keep the repository organized.

---

## Reflection

Branching and merging are fundamental concepts in **Git workflows** that enable safe and efficient collaboration. By working in separate branches, developers can experiment and build features without disrupting the main codebase.

Handling merge conflicts is an essential skill, as it requires understanding how changes interact across branches. Resolving conflicts ensures that all important changes are preserved and integrated correctly.

Tools like **VS Code** can simplify conflict resolution by providing visual options such as accepting current changes, incoming changes, or both.

Understanding branching strategies prepares developers for real-world collaboration using **pull requests**, **code reviews**, and integration with **CI/CD pipelines**.
