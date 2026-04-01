# Git Cherry-Pick

## Overview

**Git cherry-pick** allows developers to apply a specific **commit** from one branch onto another branch without merging the entire branch. This is useful when only one fix or feature is needed from a separate line of development, such as moving a hotfix from a feature branch to the **main branch**.

This is important in real-world development because teams often need to move individual changes quickly without bringing in unrelated work. Using **Git cherry-pick** helps developers apply targeted fixes, keep the **main branch** stable, and maintain a clean workflow in **GitHub** projects that use branches, **pull requests**, and **CI/CD pipelines**.

---

## Key Concepts

- **Cherry-Pick** – Applies a specific **commit** from one branch onto another.
- **Commit** – A saved snapshot of changes in the repository history.
- **Branch** – A separate line of development in a repository.
- **Main Branch** – The primary branch that represents stable code.
- **Feature Branch** – A branch used for isolated development work.
- **Commit Hash** – The unique identifier of a **commit**.
- **Targeted Change** – A single selected update moved without merging a full branch.

---

## Commands

### Create Feature Branch and Add a Hotfix

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_branch_cherrypick.png">

```bash
git checkout -b feature-cherry
echo "hotfix config for prod" > hotfix.txt
git add hotfix.txt
git commit -m "hotfix: add prod config fix"
```

This creates a new branch and saves a hotfix in a separate **commit**.

--- 

### Push the Feature Branch

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/push_branch_cherrypick.png">

```bash
git push --set-upstream origin feature-cherry
```

This pushes the **feature branch** to **GitHub** and sets upstream tracking.

--- 

### View the Commit Hash

<img width="400" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_log_oneline.png">

```bash
git log --oneline
```

This shows the **commit** history so the hotfix **commit hash** can be copied.

---

### Cherry-Pick the Commit to Main

<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_push_cherry_pick.png">

```bash
git checkout main
git pull
git cherry-pick a955fad
git push origin main
```

This applies the selected hotfix **commit** to the **main branch** and pushes it to **GitHub**.

---

## View Changes on GitHub

### 1. View commit history on the main branch

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_cherrypick_view1.png">

You should see the hotfix **commit** listed on the **main branch**.

### 2. View commit history on the feature branch

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_cherrypick_view2.png">

You should also see the same hotfix **commit** on the **feature-cherry** branch.

### 3. Switch branches in GitHub

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_cherrypick_view3.png">

Use the branch dropdown to switch between **main** and **feature-cherry**.

### 4. Locate the file on the main branch

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_cherrypick_view4.png">

You should now see the updated **hotfix.txt** file in the **main branch** repository view.

### 5. Open the file on the main branch

<img width="1300" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_cherrypick_view5.png">

You should see the cherry-picked content in **hotfix.txt**:

```bash
hotfix config for prod
```

### 6. Confirm the same file on the feature branch

<img width="1300" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_cherrypick_view6.png">

This confirms that the hotfix exists on both **feature-cherry** and **main** after the **cherry-pick** operation.

---

## Key Takeaways

- **Git cherry-pick** applies a specific **commit** from one branch to another.
- It is useful when only one change is needed without merging an entire branch.
- The **commit hash** identifies which change to apply.
- Cherry-picking helps move hotfixes quickly to the **main branch**.
- This approach keeps branch workflows more controlled and targeted.
- **GitHub** can be used to verify the cherry-picked file and commit history.

---

## Reflection

**Git cherry-pick** is a useful feature in **Git** for moving a single **commit** from one branch to another without merging all branch changes. This makes it easier to apply targeted fixes while keeping the **main branch** stable and focused.

In real-world workflows, developers often use **cherry-pick** to move hotfixes or urgent updates into production branches quickly. Combined with **GitHub, pull requests**, and **CI/CD pipelines**, this supports a clean and efficient development process.
