# Git Workflow

## Overview

A **Git workflow** defines how developers use **Git** and **GitHub** to collaborate on a project efficiently. It includes creating a **branch**, making changes, committing updates, pushing to a **remote repository**, and using **pull requests** to merge code into the **main branch**. This structured process ensures that all changes are tracked, reviewed, and integrated in a controlled manner.

Understanding the **Git workflow** is essential in real-world development because it enables smooth collaboration between multiple developers. By using **pull requests**, teams can review code, discuss changes, and ensure quality before merging. This workflow is widely used in professional environments and integrates seamlessly with **CI/CD pipelines** to automate testing and deployment.

---

## Key Concepts

- **Workflow** – A structured process for managing code changes.
- **Branch** – A separate line of development.
- **Commit** – A saved change in the repository.
- **Push** – Sending local changes to a **remote repository**.
- **Pull Request** – A request to merge changes into another branch.
- **Review** – Evaluating code before merging.
- **Merge** – Combining changes into the **main branch**.

---

## Commands

### Pull Latest Changes

<img width="300" src="https://github.com/huss-osman/devops-learning/blob/main/images/pull_latest_changes.png">

This updates the local repository with the latest changes from the **remote repository**.

```bash
git pull
```

---

### Create Feature Branch

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_feature_branch.png">

This creates and switches to a new **branch** for development.

```bash
git checkout -b feature/add-about-page
```

---

### Add Changes

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/add_changes.png">

This creates a new file in the **feature branch**.

```bash
echo "This is the about page." > about.md
```

---

### Check Status

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/stage_changes.png">

This shows untracked and modified files in the **repository**.

```bash
git status
```

---

### Stage Changes

<img width="350" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_add_stage.png">

This stages the file for the next **commit**.

```bash
git add about.md
```

---

### Commit Changes

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/commit_changes.png">

This saves the changes in the **branch history**.

```bash
git commit -m "Add about page"
```

---

### Push Branch (First Time)

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_push_branch.png">

This pushes the **branch** to **GitHub** and sets the upstream tracking.

```bash
git push --set-upstream origin feature/add-about-page
```

---

## Open Pull Request on Git/GitHub
 
### 1. Using Git: Copy the URL from the terminal after `git push`

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_push_branch1.png">

### 2. Using Github: Click the green Compare & pull request button on GitHub

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/open_pull_request_via_github.png1.png">

This opens a **pull request** on **GitHub** to merge the feature into the **main branch**.

> [!NOTE]
> - No command is required when using the **GitHub UI**.
> - You can open a pull request by:
> 1. Copying the URL from the terminal after `git push`
> 2. Clicking the green **Compare & pull request** button on **GitHub**

---

### Add Title and Description

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/title_pull_request1.png">

This provides context for reviewers in the **pull request**.

> [!NOTE]
> - No command required.

---

### Create Pull Request

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_pull_request.png">

This submits the **pull request** for review.

> [!NOTE]
> - No command required.

---

## Request Reviewers

### Click the settings icon in the reviewers section, select a user from the dropdown, and request a review on the **pull request**.

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/request_reviewer.png">

This assigns reviewers to evaluate the **code changes**, and a green tick will appear to confirm the review has been requested.

> [!NOTE]
> - No command required.

---

### Review and Approve

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/review_approve.png">

This step represents the normal workflow where a reviewer checks the code, leaves comments if needed, and approves the **pull request** before merging.

> [!NOTE]
> - No command required.

---

### Merge Pull Request

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/merge_pull_request.png">

This merges the **feature branch** into the **main branch** using the **GitHub UI**, making the workflow easier to understand and manage.

> [!NOTE]
> - No command required.

---

### Confirm Merge

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/confirm_merge.png">

This confirms the **merge**, completing the integration process.

> [!NOTE]
> - No command required.

---

### View Merged Pull Request

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/view_merged_pull_request.png">

This shows that the **pull request** has been successfully merged and closed.

> [!NOTE]
> - No command required.

---

### Delete Branch

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/del_branch.png">

This deletes the **feature branch** from **GitHub**, keeping the repository clean after merging.

---

### Verify Changes in Main Branch

<img width="800" src="https://github.com/huss-osman/devops-learning/blob/main/images/ver_changes_main_branch.png">

This confirms that the new file has been merged into the **main branch** and is ready to use.

> [!NOTE]
> - No command required.

---

## Key Takeaways

- A **Git workflow** standardizes collaboration.

- **Branches** isolate development work.

- **Commits** track project history.

- **Push** updates the **remote repository**.

- **Pull requests** enable review and discussion.

- Reviews ensure code quality before merging.

- The **GitHub UI** simplifies the workflow.

- Merged code becomes available in the **main branch**.

- Deleting branches keeps the repository organized.

---

## Reflection

The **Git workflow** shows how structured collaboration is achieved using **Git** and **GitHub**. By creating a **branch**, making changes, and submitting a **pull request**, developers can contribute safely without affecting the **main branch**.

In real-world environments, this workflow supports collaboration through **pull requests** and **code reviews**. Tools like **VS Code** and **GitHub** simplify the process, while integration with **CI/CD pipelines** ensures code is tested and deployed efficiently.
