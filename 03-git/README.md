<img width="1000" height="500" alt="git-banner" src="https://github.com/user-attachments/assets/0dc18f70-7ef3-4d05-a161-c9ba91fbe5fd" />

# Git

![VCS](https://img.shields.io/badge/VCS-Git-F05032?logo=git&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-GitHub-181717?logo=github&logoColor=white)
![Focus](https://img.shields.io/badge/Focus-Version%20Control-purple?logo=git&logoColor=white)
![Practice](https://img.shields.io/badge/Practice-Hands--on-orange)

This repository documents my hands-on learning of **Git** as part of my **DevOps training with CoderCo**.

Git is the foundation of modern collaboration. Nearly everything in DevOps — CI/CD pipelines, infrastructure-as-code, cloud deployments, and automation — relies on strong version control practices.

This repository exists to build and demonstrate that foundation.

The focus throughout this work is on understanding **how Git works (snapshots, branches, history)**, not just memorising commands.

---

# Learning Objectives

By working through this module, I aim to:

- Understand what version control is and why Git matters
- Confidently use the Git workflow (add → commit → push)
- Understand Git’s three areas (working directory, staging area, repository)
- View and interpret history using logs and diffs
- Create and manage branches safely
- Merge branches and resolve conflicts confidently
- Understand rebase vs merge and when to use each
- Use stash, reset, revert, and cherry-pick safely
- Collaborate using GitHub workflows
- Follow professional Git best practices
- Avoid common mistakes such as force pushing or leaking secrets

---

# Topics Covered

### Fundamentals

- [Git Intro](./fundamentals/01-git-intro.md)
- [What is Version Control](./fundamentals/02-version-control.md)
- [Centralised vs Distributed](./fundamentals/03-centralised-vs-distributed.md)
- [Git Changed the Game](./fundamentals/04-git-changed-the-game.md)
- [Git is Not a File Tracker](./fundamentals/05-git-not-a-file-tracker.md)
- [Git Terminology](./fundamentals/06-git-terminology.md)
- [The .git Directory](./fundamentals/07-dotgit-directory.md)
- [Git Common Commands](./fundamentals/08-common-commands.md)
- [The Areas of Git](./fundamentals/09-areas-of-git.md)

- [Viewing History](./fundamentals/10-viewing-history.md)
- [Git vs GitHub](./fundamentals/11-git-vs-github.md)
- [Visualise Branches & Logs](./fundamentals/14-visualise-branches.md)
- [Rebase vs Merge](./fundamentals/15-rebase-vs-merge.md)

- [Git Stash & Pop](./fundamentals/16-stash-and-pop.md)
- [Reset, Revert & Cherry-Pick](./fundamentals/17-reset-revert-cherrypick.md)
- [Connect to GitHub](./fundamentals/18-connect-to-github.md)
- [Forks & Pull Requests](./fundamentals/19-forks-and-prs.md)

- [Collaborating Practices](./fundamentals/20-collaboration-practices.md)
- [Typical Git Workflow](./fundamentals/21-typical-workflow.md)
- [Trunk-Based Development](./fundamentals/22-trunk-based-development.md)

---

### Labs

- [GitHub SignUp Hands-On](./labs/28-github-signup.md)
- [SSH Key](./labs/29-ssh-key.md)
- [Git Verify Login](./labs/30-git-verify-login.md)
- [New Repository](./labs/31-new-repository.md)
- [First Repository Push](./labs/32-first-repository-push.md)
- [Branching & Merging](./labs/33-branching-and-merging.md)
- [Git Workflow](./labs/34-git-workflow.md)
- [Undoing in Git](./labs/35-undoing-in-git.md)
- [Git Stash](./labs/36-git-stash.md)
- [Git Rebase & Squash](./labs/37-git-rebase-and-squash.md)
- [Git Cherry-Pick](./labs/38-git-cherry-pick.md)
- [The `.gitignore`](./labs/39-gitignore.md)
- [Git Amend](./labs/40-git-amend.md)
- [Pre-Commit](./labs/41-precommit.md)

---

### Best Practices

- [Commit Hygiene & Best Practices](./best-practices/23-commit-hygiene.md)
- [Pre-Commit & Automation](./best-practices/24-precommit-and-automation.md)
- [Common Mistakes in the Real World](./best-practices/25-common-mistakes.md)
- [Git at Scale](./best-practices/26-git-at-scale.md)
- [Git Security & Secrets Hygiene](./best-practices/27-git-security.md)

---

# Learning Approach

This repository reflects how I learn, not just what I learned.

- Practicing Git with real repositories and real mistakes
- Visualising history to understand what Git is doing
- Using safe undo tools (revert, reflog) instead of panic
- Treating conflicts and broken history as debugging exercises
- Documenting why Git works, not just what to type

The goal is long-term Git fluency that transfers to production workflows.

---

# Folder Purpose

### `fundamentals/`

Core Git concepts explained with examples and reasoning.

➡️ [Open fundamentals](./fundamentals)

---

### `labs/`

Hands-on Git practice including repository setup, branching workflows, rebasing, and GitHub integration.

➡️ [Open labs](./labs)

---

### `best-practices/`

Professional Git usage including commit hygiene, automation, and security practices.

➡️ [Open best practices](./best-practices)

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of Git through core version control concepts and practical examples.

Rather than memorising commands, the emphasis is on understanding how Git works internally — snapshots, commits, branches, and repository history.

Each topic covers:

• Core Git concepts and version control theory  
• How Git stores history and tracks changes  
• Practical examples that explain common Git workflows  
• Key takeaways that reinforce long-term understanding  

These notes help build a solid foundation for collaboration, CI/CD pipelines, infrastructure-as-code workflows, and modern software development environments.

➡️ [View Fundamentals](./fundamentals)

---

## Labs

The Labs section focuses on applying Git knowledge through structured **hands-on exercises and real command-line workflows**.

These labs simulate real development scenarios such as creating repositories, pushing code, branching, merging, and undoing mistakes.

Each lab includes:

• A clearly defined Git task or workflow  
• Practical command-line usage and Git operations  
• Step-by-step reasoning behind the solution  
• Key takeaways that reinforce practical Git skills  

These exercises help build confidence using Git in real-world development environments and collaborative projects.

➡️ [View Labs](./labs)

---

## Best Practices

The Best Practices section focuses on writing clean, maintainable, and safe Git history following standards used in professional engineering teams.

Rather than simply completing Git operations, the emphasis is on maintaining readable commit history and preventing common mistakes in collaborative environments.

Each topic covers:

• Writing clear, atomic commits with meaningful messages  
• Using automation tools such as pre-commit hooks and CI checks  
• Avoiding common mistakes like force pushing or messy merges  
• Protecting repositories from credential leaks and security risks  

These practices help ensure Git usage remains professional, scalable, and production-ready across teams.

➡️ [View Best Practices](./best-practices)
