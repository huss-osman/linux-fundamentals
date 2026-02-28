<img width="1000" height="500" alt="imageedit_9_9698354280" src="https://github.com/user-attachments/assets/0dc18f70-7ef3-4d05-a161-c9ba91fbe5fd" />

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

## Learning Objectives

By working through this module, I aim to:

- Understand what version control is and why Git matters
- Confidently use the Git workflow (add → commit → push)
- Understand Git’s 3 areas (working directory, staging, repository)
- View and interpret history using logs and diffs
- Create and manage branches safely
- Merge branches and resolve conflicts confidently
- Understand rebase vs merge and when to use each
- Use stash, reset, revert, and cherry-pick safely
- Collaborate using GitHub (remotes, PRs, forks, reviews)
- Follow real-world workflows and commit best practices
- Avoid common mistakes (force push, secrets, bad history)

---

## Topics Covered

- [Git Intro](./fundamentals/01-git-intro.md)  
  What Git is and why it exists.

- [What is Version Control](./fundamentals/02-version-control.md)  
  Tracking changes, rollback, collaboration, and auditability.

- [Centralised vs Distributed](./fundamentals/03-centralised-vs-distributed.md)  
  Why Git’s distributed model is powerful.

- [Git Changed the Game](./fundamentals/04-git-changed-the-game.md)  
  Git’s impact on engineering workflows.

- [Git is Not a File Tracker](./fundamentals/05-git-not-a-file-tracker.md)  
  Snapshots, object model, content-addressing.

- [Git Terminology](./fundamentals/06-git-terminology.md)  
  Repo, commit, branch, remote, HEAD, refs, index.

- [The .git Directory](./fundamentals/07-dotgit-directory.md)  
  What Git stores and where.

- [Git Common Commands](./fundamentals/08-common-commands.md)  
  init, add, commit, status, log, diff, clone, push/pull.

- [The Areas of Git](./fundamentals/09-areas-of-git.md)  
  Working directory → staging → repository.

- [Viewing History](./history/10-viewing-history.md)  
  git log, git show, git diff, git blame, reflog.

- [Git vs GitHub](./history/11-git-vs-github.md)  
  Local tool vs hosted platform.

- [Branching 101](./branching/12-branching-101.md)  
  branch, switch, checkout, delete branches.

- [Merging](./branching/13-merging.md)  
  fast-forward vs merge commit, conflict resolution.

- [Visualise Branches & Logs](./branching/14-visualise-branches.md)  
  git log --oneline --graph --all.

- [Rebase vs Merge](./advanced/15-rebase-vs-merge.md)  
  Clean history vs shared safety.

- [Git Stash & Pop](./advanced/16-stash-and-pop.md)  
  Pause work and switch context safely.

- [Reset, Revert & Cherry-Pick](./advanced/17-reset-revert-cherrypick.md)  
  Undoing changes the right way.

- [Forks & Pull Requests](./github/19-forks-and-prs.md)  
  Open-source and cross-team workflows.

- [Collaborating Practices](./github/20-collaboration-practices.md)  
  Branch isolation, review, and syncing.

- [Typical Git Workflow](./workflows/21-typical-workflow.md)  
  Feature branches → PR → merge.

- [Trunk-Based Development](./workflows/22-trunk-based-development.md)  
  Short-lived branches + strong CI.

- [Commit Hygiene & Best Practices](./best-practices/23-commit-hygiene.md)  
  Clean commits, good messages, squashing.

- [Pre-Commit & Automation](./best-practices/24-precommit-and-automation.md)  
  Hooks, linters, formatting, CI gates.

- [Common Mistakes in the Real World](./best-practices/25-common-mistakes.md)  
  Secrets, force push, messy merges.

- [Git at Scale](./best-practices/26-git-at-scale.md)  
  monorepos, LFS, filter-repo, submodules.

- [Git Security & Secrets Hygiene](./best-practices/27-git-security.md)  
  preventing leaks, scanning, cleanup.

---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Practicing Git with real repositories and real mistakes
- Visualising history to understand what Git is doing
- Using safe undo tools (`revert`, `reflog`) instead of panic
- Treating conflicts and broken history as debugging exercises
- Documenting why Git works, not just what to type

The goal is long-term Git fluency that transfers to production workflows.

---

## Folder Purpose

### `fundamentals/`
Core Git concepts explained with examples and reasoning  
➡️ [Open fundamentals](./fundamentals)

### `history/`
Understanding logs, diffs, reflog, and reading commit history  
➡️ [Open history](./history)

### `branching/`
Branching, merging, conflicts, and visualising commit graphs  
➡️ [Open branching](./branching)

### `advanced/`
Rebase, stash, reset, revert, cherry-pick and recovery workflows  
➡️ [Open advanced](./advanced)

### `github/`
GitHub workflows: SSH, remotes, forks, PRs, collaboration  
➡️ [Open GitHub](./github)

### `best-practices/`
Commit hygiene, automation, mistakes to avoid, secrets hygiene  
➡️ [Open best practices](./best-practices)

### `assignments/`
Final Git assignment (portfolio-ready)  
➡️ [Open assignments](./assignments)

---

## Hands-On Starts Here

From lesson **18+**, the focus becomes practical GitHub usage:

- Connect to GitHub
- Set up SSH keys
- Create a new repo
- Push your first commits
- Work with branches, PRs, and team workflows
- Practice undoing mistakes safely

This is the section interviewers will expect you to know.

---

## Status

Work in progress — continuously updated as I progress through:

- Branching & merging
- Rebase & conflict resolution
- GitHub collaboration workflows
- Best practices + automation

Push it. Pull it. Rebase it. 🚀
