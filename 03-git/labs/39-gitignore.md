# Using .gitignore

## Overview
The `.gitignore` file is used to tell Git which files or folders should **not be tracked or committed** to the repository. This is essential for avoiding sensitive data, unnecessary files, and large dependencies from being pushed to GitHub.

It helps maintain a **clean repository**, improves performance, and ensures that confidential information such as **API keys or environment variables** is never exposed.

---

## Key Concepts

- **gitignore** – A file that defines which files Git should ignore.
- **Tracked Files** – Files already committed to Git.
- **Untracked Files** – Files not yet added to Git.
- **Sensitive Data** – API keys, tokens, credentials (must never be committed).
- **Environment Files** (`.env`) – Used to store secrets and configurations.
- **Commit Hygiene** – Best practices to avoid pushing unwanted or dangerous files.

---

## Commands

### Create `.env` File

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/create_env_.png">

```bash
# VS Code → Right click → New File → .env
```

This creates an **environment file** to store sensitive data locally instead of committing it to Git.

---

### Add Sensitive Data

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/add_env_contents_.png">

```bash
AWS_ACCESS_KEY=your-secret-key
```

This simulates adding **sensitive credentials**, showing how easily secrets can exist in a project.

---

### Check Git Status

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/git_tracking_env.png">

```bash
git status
```

This confirms that the `.env` file is **untracked and at risk of being committed** if not handled properly.

---

### Add `.env` to `.gitignore`

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/modify_gitignore.png">

```bash
.env
```

This tells Git to **ignore the `.env` file**, preventing it from ever being tracked or committed.

---

### Stage and Commit `.gitignore`

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/add_change_commit.png">

```bash
git add .gitignore
git commit -m "don't track env files"
git push
```

This saves the rule so the repository consistently **excludes sensitive files moving forward**.

---

### Commit Hygiene

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/commit_hygiene.png">

> [!IMPORTANT]
> Always run `git status` **before committing**.
> 
> Never track:
>
> - `.env` files
> - **API keys or tokens**
> - **Sensitive configuration files**
>
> GitHub is constantly scanned by bots — even a few seconds of exposure can result in compromised credentials or unexpected costs.
>
> Also ignore large folders like:
>
> - `node_modules/`
>
> This ensures **security, performance, and clean repositories**.


---

## Key Takeaways

- `.gitignore` prevents unwanted and sensitive files from being tracked.
- Always exclude `.env` and secret files.
- Use `git status` to verify changes before committing.
- Helps keep repositories secure and efficient.
- Critical for real-world development workflows.

---

## Reflection

Using `.gitignore` made me realize how important it is to manage what gets committed into a repository. It’s not just about keeping things clean, but also about protecting sensitive data and avoiding serious security risks.

I also learned that small habits like checking `git status` before committing can prevent major issues. This reinforces the importance of **discipline and awareness** when working with Git, especially in real-world projects where mistakes can have real consequences.
