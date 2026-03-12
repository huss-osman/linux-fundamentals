# Collaborating Practices

## Overview

**Collaboration practices** in Git allow multiple developers to work on the same repository without interfering with each other's work. By using structured **branching strategies**, **pull requests**, and **code reviews**, teams can safely develop features, fix bugs, and maintain stable codebases.

Strong **collaboration practices** improve code quality and team productivity. Tools like GitHub provide features such as **review requests, discussions, and issue tracking** that help developers coordinate changes and maintain visibility into project progress.

---

## Key Concepts

### Using branches to isolate work

Using **branches** is a fundamental **collaboration practice** in Git. Developers create separate branches to work on features or fixes without affecting the main codebase.

<img width="766" height="46" alt="git checkout -b (branch)" src="https://github.com/user-attachments/assets/c4b74047-cf13-4a02-9912-77b3797d146b" />

```bash
git checkout -b demo-feature
```

This command creates and switches to a new branch where work can be done safely.

---

### Pushing changes and opening Pull Requests

One of the most important **collaboration practices** is pushing work to a remote repository and opening a **Pull Request (PR)**.

Pull Requests allow teammates to review code before it becomes part of the main project.

```bash
git push origin feature-login
```

After pushing, a Pull Request can be opened on GitHub for review.

---

### Assigning reviewers and discussing changes

Effective **collaboration practices** include assigning reviewers and discussing improvements directly within the Pull Request.

GitHub provides tools for:

- inline code comments  
- review approvals  
- change requests  

These practices ensure code quality and shared understanding across the team.

---

### Resolving merge conflicts before merging

When multiple developers modify the same code, **merge conflicts** can occur. A key **collaboration practice** is resolving these conflicts before merging code into the main branch.

```bash
git merge main
```

Developers should resolve conflicts locally and test the changes before completing the merge.

---

### Tracking work using Issues and Projects

GitHub supports structured **collaboration practices** through tools like **Issues, Projects, and Discussions**.

These tools help teams:

- track bugs  
- manage features  
- organize development tasks  
- discuss design decisions

They provide transparency and structure for team workflows.

---

### Keeping commits focused and clean

A best **collaboration practice** is writing **small, clear commits** that focus on a single change.

Example commit:

```bash
git commit -m "Add login validation logic"
```

Focused commits make reviews easier and help maintain a readable project history.

---

## Commands

```bash
git checkout -b feature-branch
git push origin feature-branch
git merge main
git commit -m "message"
```

---

## Key Takeaways

- **Collaboration practices** help teams safely work on shared repositories.
- Using **branches** isolates development work and prevents conflicts.
- **Pull Requests** enable code review and team feedback before merging.
- GitHub tools like **Issues and Discussions** support organized teamwork.
- Clean and focused commits improve collaboration and project history.

---

## Reflection

Understanding strong **collaboration practices** is essential for working in real-world software teams. By using branches, Pull Requests, and structured review processes, developers can maintain high-quality code while working efficiently with others.
