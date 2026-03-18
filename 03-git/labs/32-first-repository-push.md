# First Repository Push

## Overview

Using **Git** with a remote repository allows developers to store and manage project code outside their local machine. By pushing a repository to **GitHub**, the project becomes accessible for backup, collaboration, and version tracking.

Connecting a local repository to a remote repository enables **Git** to synchronize changes between environments. Once configured, developers can push commits, pull updates, and collaborate with other contributors through **GitHub** workflows.

---

## Key Concepts

- **Git Push** – Uploads local repository commits to a remote repository.
- **Origin** – The default name given to a remote repository.
- **Branch Tracking** – Links a local branch to a remote branch.
- **Remote Repository** – A version of the repository hosted on platforms such as GitHub.
- **Upstream Branch** – The branch Git tracks when pushing or pulling changes.

---

## Commands

### First Repository Push

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_push_first_repo.png">

```bash
git push -u origin main
```

This command pushes the **local `main` branch** to the **remote repository** and sets the upstream branch.

After pushing, Git confirms that:

1. Objects are uploaded
2. The **main branch** is created remotely
3. The local branch now tracks **origin/main**

> [!NOTE]
> 
> - The `-u` flag establishes a tracking relationship between the **local branch** and the **remote branch**.  
> - Future pushes can now be done using simply:
>
> ```bash
> git push
> ```

---

## Refresh the Repository on GitHub

### 1. Navigate to the GitHub repository page.
### 2. Refresh the page.

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/repo_refresh_readme.png">

You should now see the **README.md file** that was pushed from the local repository.

> [!NOTE]
> Seeing the file confirms that the **local repository has successfully synchronized with GitHub**.

---

### Create `.gitignore`

A `.gitignore` file is used to exclude files from being tracked by Git.

<img width="300" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_gitignore.png">

```bash
touch .gitignore
vi .gitignore
```

<img width="250" src="https://github.com/huss-osman/devops-learning/blob/main/images/vim_gitignore_contents.png">

```
.env
Thumbs.db
Desktop.ini
```

> [!NOTE]
> These files should not be committed to repositories because they contain system metadata or sensitive configuration data.
> - `.env` stores environment variables such as API keys, database credentials, and application configuration.
> - `Thumbs.db` stores thumbnail cache data for images in Windows folders.
> - `Desktop.ini` stores Windows folder configuration such as icons and view preferences.

---

### Stage `.gitignore`

<img width="750" src="https://github.com/huss-osman/devops-learning/blob/main/images/gitignore_status.png">

```bash
git add .gitignore
git status
```

This moves the `.gitignore` file into the **staging area**.

---

### Commit `.gitignore`

<img width="650" src="https://github.com/huss-osman/devops-learning/blob/main/images/gitignore_commit.png">

```bash
git commit -m "add gitignore"
```

This records the `.gitignore` file into the repository history.

---

### Push `.gitignore` to GitHub

<img width="750" src="https://github.com/huss-osman/devops-learning/blob/main/images/gitignore_push.png">

```bash
git push
```

The new commit is pushed to GitHub.

---

## View `.gitignore` on GitHub

### 1. Refresh the **repository page** again.

<img width="450" src="https://github.com/huss-osman/devops-learning/blob/main/images/view_gitignore_github.png">

You should now see the **`.gitignore`** file alongside `README.md`.

### 2. Click on **`.gitignore`** file and you should see it's contents.

<img width="450" src="https://github.com/huss-osman/devops-learning/blob/main/images/github_contents_gitignore.png">

You should now see the contents of **`.gitignore`** file.

> [!IMPORTANT]
> This marks the **beginning of collaborative development**.
>
> With the repository hosted on GitHub, developers can now:
>
> - Create **branches**
> - Open **pull requests**
> - Review code changes
> - Collaborate with other developers
> - Integrate with **CI/CD pipelines**

---

## Key Takeaways

- `git push` uploads local commits to a **remote repository**.
- The `-u` flag sets an **upstream branch**, simplifying future pushes.
- A `.gitignore` file prevents unnecessary or sensitive files from being tracked.
- Refreshing the repository page confirms that changes have successfully been pushed to GitHub.
- Remote repositories allow developers to store, share, and collaborate on code.

---

## Reflection

Pushing the repository to **GitHub** transforms a local **Git repository** into a collaborative environment where code can be shared and managed through a **remote repository**.  
This enables workflows such as **branching strategies** and **pull requests**, allowing teams to collaborate efficiently.

Adding a `.gitignore` file ensures that unnecessary files and sensitive data are excluded from version control, keeping the project clean and secure.  
With the repository on **GitHub**, developers can collaborate, review changes, and integrate code using workflows connected to **CI/CD pipelines**.
