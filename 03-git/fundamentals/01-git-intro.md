# Git – Version Control & Collaboration

This module builds a deep understanding of **Git as the foundation of modern DevOps workflows**.

Rather than memorising commands, the goal is to understand:

- How Git works internally
- How history is structured
- How safe collaboration happens
- How production teams manage change

Git underpins:

- CI/CD pipelines
- Infrastructure as Code
- Cloud deployments
- Team collaboration
- Safe change management

Mastering Git means mastering change.

---

# Module Structure & Learning Flow

This module is organised progressively. Each section builds on the previous one.

---

## 1️⃣ Fundamentals

📁 [`fundamentals/`](./)

Core Git concepts and mental models.

You will learn:

- What Git is and why it exists
- Snapshots vs file tracking
- The three areas (working directory → staging → repository)
- The `.git` directory
- Git object model (blobs, trees, commits)
- Hashing & content-addressing
- Core commands (`add`, `commit`, `status`, `log`, `diff`)

This section builds your **internal understanding of Git**.

---

## 2️⃣ History & Understanding Change

📁 [`../history/`](../history)

How Git tracks and displays change.

You will learn:

- Viewing history (`log`, `show`, `diff`)
- Understanding commit graphs
- Git vs GitHub
- Reading and interpreting changes

This section builds your ability to **reason about version history**.

---

## 3️⃣ Branching & Merging

📁 [`../branching/`](../branching)

How teams safely develop in parallel.

You will learn:

- Creating and managing branches
- Fast-forward vs merge commits
- Visualising branch structure
- Conflict resolution

This section builds your understanding of **parallel development workflows**.

---

## 4️⃣ Advanced History Manipulation

📁 [`../advanced/`](../advanced)

Controlled rewriting and recovery.

You will learn:

- Rebase vs merge
- Stash
- Reset vs revert
- Cherry-pick
- Using `reflog` for recovery

This section builds your confidence in **repairing and refining history safely**.

---

## 5️⃣ GitHub & Real-World Collaboration

📁 [`../github/`](../github)

Working in team environments.

You will learn:

- Pull requests
- Fork workflows
- Remote repositories
- Typical Git workflows
- Trunk-based development

This section connects Git theory to **real production team workflows**.

---

## 6️⃣ Best Practices & Production Discipline

📁 [`../best-practices/`](../best-practices)

Professional standards and real-world safety.

You will learn:

- Commit hygiene
- Clean history practices
- Avoiding force-push disasters
- Secrets management
- Git at scale

This section develops **engineering maturity and discipline**.

---

# Learning Philosophy

This module prioritises:

- Understanding *why* Git behaves the way it does
- Practicing real workflows, not toy examples
- Treating mistakes as learning opportunities
- Building production-ready confidence

Git is not just a tool — it is the control system of modern engineering.