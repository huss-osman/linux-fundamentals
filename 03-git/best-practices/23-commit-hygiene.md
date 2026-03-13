# Commit Hygiene & Best Practices

## Overview

Good **commit hygiene** refers to writing clear, meaningful commits that make the project history easy to understand and maintain. Clean commits help developers quickly identify what changed, why it changed, and how the code evolved over time.

Following good commit practices improves collaboration, simplifies debugging, and makes code reviews easier. A well-maintained **Git history** is an important part of professional software development and helps teams manage large projects more effectively.

---

## Key Concepts

### Write Clear Commit Messages

A good **commit message** clearly explains what the change does and why it was made. Clear commit messages allow other developers to understand the history of a project without needing to inspect every line of code.

---

### One Logical Change Per Commit

Each commit should represent **one logical change**. This makes the project history easier to read and allows developers to revert or modify changes without affecting unrelated parts of the project.

---

### Squashing Commits

Before merging a **Pull Request (PR)**, developers often squash multiple small commits into one clean commit. This keeps the **Git history** tidy and prevents unnecessary noise in the repository.

---

### Avoid Noisy Commits

Commit messages such as *fix*, *update*, or *finalfinal2* make the project history difficult to understand. Writing meaningful messages helps maintain a clear and professional commit history.

---

## Commands

```bash
git commit -m "Add user authentication validation"

git commit --amend

git rebase -i HEAD~3
```

---

## Key Takeaways

- Good **commit hygiene** helps maintain a clean and readable **Git history**.

- Write clear and meaningful **commit messages** that describe the change.

- Each commit should represent **one logical change**.

- **Squashing commits** before merging helps keep the **repository history** clean.

- Avoid vague or noisy commit messages that make **project history** harder to understand.

---

## Reflection

Practicing strong **commit hygiene** helps developers maintain a clear and professional **Git history** that others can easily understand. By writing meaningful **commit messages**, keeping commits focused on **single logical changes**, and cleaning up history before merging, teams can collaborate more effectively and maintain high-quality repositories. These practices are widely used in professional **software engineering teams** and help keep large projects manageable.
