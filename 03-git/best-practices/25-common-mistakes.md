# Common Mistakes in the Real World

## Overview

When working with **Git** in real development environments, teams often encounter common mistakes that can disrupt collaboration or damage repository history. Many of these issues occur when developers misunderstand how **remote repositories**, **branches**, and **history management** work.

Recognizing these mistakes early helps developers avoid broken workflows, lost work, or security risks. By following good **Git practices**, teams can maintain a clean repository history, protect sensitive information, and collaborate more effectively.

---

## Key Concepts

### Forgetting to Pull Before Pushing

Developers sometimes attempt to **push changes** without first retrieving the latest updates from the **remote repository**. This can lead to rejected pushes or merge conflicts.

Regularly running `git pull` ensures that the local repository is synchronized with the remote repository before pushing new commits.

---

### Force Pushing to Shared Branches

Using `git push --force` can rewrite **Git history**, which may overwrite commits created by other developers.

Force pushing should generally be avoided on **shared branches** such as `main` unless absolutely necessary and agreed upon by the team.

---

### Committing Secrets

Sensitive data such as **API keys**, **passwords**, or **tokens** should never be committed to a repository.

Once secrets are committed, they become part of the **Git history** and may remain accessible even after deletion.

---

### Merging Without Review

Merging changes directly into the **main branch** without review can introduce bugs or unstable code.

Using **Pull Requests (PRs)** allows teams to review changes, discuss improvements, and maintain code quality before merging.

---

### Not Using `.gitignore` Properly

Failing to configure `.gitignore` can result in committing **temporary files**, **build artifacts**, or **sensitive configuration files**.

Proper `.gitignore` usage ensures that unnecessary or sensitive files are excluded from version control.

---

## Commands

```bash
git pull

git push

git push --force

git status
```

---

## Key Takeaways

- Always **pull the latest changes** before pushing new commits.

- Avoid using `git push --force` on **shared branches**.

- Never commit **secrets or sensitive credentials** to a repository.

- Use **Pull Requests** to review and approve changes before merging.

- Configure `.gitignore` properly to prevent unwanted files from being committed.

- Following safe **Git collaboration practices** helps maintain a clean and stable repository.

---

## Reflection

Understanding common **Git mistakes** helps developers avoid workflow issues that frequently occur in real-world projects. Problems such as forgetting to pull, force pushing shared branches, or committing sensitive data can disrupt collaboration and damage **repository history**.

By following safe **version control practices**, using **Pull Requests**, and managing files with `.gitignore`, teams can maintain secure and reliable repositories while collaborating effectively in modern **software engineering environments**.
