# Git Changed the Game

## Overview

In **2005**, Linux kernel developers suddenly lost access to their previous version control system, **BitKeeper**.

Rather than searching for another tool, **Linus Torvalds** decided to build a new one himself.

Within days, the foundations of **Git** were created.

The system was designed specifically for **Linux kernel development**, one of the largest and fastest-moving open-source projects in the world.

Because of this, Git needed to be:

- **Fast**
- **Distributed**
- **Reliable under heavy collaboration**

These design goals fundamentally changed how version control systems work.

---

## Why Git Was Different

Unlike older **centralised systems**, Git introduced a **distributed model** where every developer has a **complete copy of the repository**, including its entire history.

This removes the traditional **central server bottleneck** and allows developers to work independently before synchronising their changes.

➡️ See: [Centralised vs Distributed](./03-centralised-vs-distributed.md)

Because history exists locally, Git operations such as commits, branching, and merging are extremely fast.

This makes experimentation, feature development, and bug fixing much easier to manage.

---

## Key Concepts

- **Distributed repositories**  
  Every developer has the full project history locally.

- **Fast branching and merging**  
  Creating branches is lightweight and designed to encourage experimentation.

- **Offline development**  
  Developers can commit and manage history without needing network access.

- **Snapshot-based history**  
  Instead of tracking file changes individually, Git records snapshots of the entire project state.

---

## Key Takeaways

- **Git was created by Linus Torvalds in 2005** for Linux kernel development
- It introduced a **distributed version control model**
- Every developer has a **complete local repository**
- Git enables **fast branching, merging, and experimentation**
- Today Git sits at the center of **modern DevOps workflows**

---

## Reflection

Learning how Git was created highlights how tools often emerge from real engineering problems. The Linux kernel needed a system that could handle large-scale collaboration without slowing developers down, and Git’s distributed design solved that challenge. Today, Git is far more than just a version control system — it has become the foundation for modern development workflows, powering everything from open-source collaboration to CI/CD pipelines and infrastructure automation in DevOps environments.
