# New Repository

## Overview

Creating a new **Git repository** is the first step in tracking and managing changes to a project. A repository stores the project files along with their full version history, allowing developers to monitor modifications, collaborate with others, and safely revert changes when necessary.

In this exercise, a local **Git repository** is created, initialized, and connected to a **remote repository on GitHub**. The workflow demonstrates how to add files, commit changes, and push the repository to GitHub.

---

## Key Concepts

- **Repository** – A directory tracked by Git that stores project files and version history.
- **Git Initialization** – The process of converting a directory into a Git repository using `git init`.
- **Staging Area** – A temporary area where changes are prepared before committing.
- **Commit** – A snapshot of changes recorded in the repository history.
- **Remote Repository** – A version of the repository hosted on a platform such as GitHub.
- **Origin** – The default name used for the remote repository.

---

## Commands

### Create a New Project Directory

<img width="300" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_first_repo_demo.png">

```bash
mkdir git-lab
cd git-lab
ls
```

This creates a new directory for the project and navigates into it.

---

### Initialize the Git Repository

<img width="950" src="https://github.com/huss-osman/devops-learning/blob/main/images/initialise_git_repo.png">

```bash
git init
ls
ls -la
```

This initializes a Git repository and creates the hidden `.git` directory that stores version control data.

---

### Create the README File

```bash
touch README.md
ls
```

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/newrepo3.png">

This creates a README file used to document the project.

---

### Add Content to README

```bash
echo "# Git Lab" > README.md
git status
```

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/newrepo4.png">

`git status` shows that the file exists but has not yet been tracked by Git.

---

### Stage the File

```bash
git add README.md
git status
```

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/newrepo5.png">

This moves the file into the **staging area**, preparing it for commit.

---

### Commit the Changes

```bash
git commit -m "init commit"
```

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/newrepo6.png">

This creates the first commit in the repository history.

---

### Attempt to Push

```bash
git push
```

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/newrepo7.png">

Since no remote repository has been configured yet, Git returns an error indicating that a push destination is missing.

---

### Add the Remote Repository

```bash
git remote add origin https://github.com/username/git-labs.git
```

This command links the local repository to a remote repository hosted on GitHub.

---

### Push the Repository to GitHub

```bash
git push -u origin main
```

This uploads the local repository to GitHub and sets the upstream branch.

---

## Key Takeaways

- A **Git repository** allows developers to track and manage changes to project files.
- The `git init` command initializes a directory as a Git repository.
- Files must be **staged using `git add`** before they can be committed.
- Commits record snapshots of changes in the repository history.
- A **remote repository** allows collaboration and backup of project code.
- GitHub repositories must be connected using `git remote add origin`.

---

## Reflection

Creating a repository is a fundamental step in using **Git for version control**. By initializing a repository, staging files, committing changes, and connecting to a remote repository, developers establish the foundation for collaborative development workflows.

Understanding how to create and manage repositories prepares developers for more advanced Git operations such as branching, merging, pull requests, and integration with **CI/CD pipelines**.
