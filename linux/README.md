<img width="1000" height="500" alt="PNG1" src="https://github.com/user-attachments/assets/5fb36b73-6c2d-4110-b49e-73d033093090" />

## Linux 

This repository documents my hands-on learning of **Linux** as part of my **DevOps training with CoderCo**.

Linux is the foundation of modern infrastructure. Nearly everything in DevOps — containers, CI/CD, cloud platforms, and automation — assumes a strong understanding of Linux at the command line. This repository exists to build and demonstrate that foundation.

The focus throughout this work is on **understanding how Linux works**, not memorising commands.

---

## Learning Objectives

By working through this module, I aimed to:

- Confidently navigate the Linux file system via the command line
- Manage files, directories, and permissions
- Understand users, groups, and sudo privileges
- Work with processes and system monitoring tools
- Use core Linux utilities (`grep`, `awk`, `sed`, `find`, pipes, redirection)
- Understand stdin, stdout, and stderr data flow
- Apply fundamentals through structured challenges and troubleshooting

---

## Topics Covered

- [Terminal Basics](./fundamentals/terminal-basics.md)  
  Navigating the filesystem, basic commands, and working efficiently in the terminal.

- [Shell Basics](./fundamentals/shell-basics.md)  
  Shell concepts, aliases, environment setup, and command execution flow.

- [File System](./fundamentals/file-system.md)  
  Linux directory structure, files vs directories, and filesystem hierarchy.

- [Permissions](./fundamentals/permissions.md)  
  Read, write, execute permissions, ownership, `chmod`, `chown`, and security concepts.

- [Users and Groups](./fundamentals/users-and-groups.md)  
  User management, groups, `sudo`, and access control.

- [Environment Variables](./fundamentals/environment-variables.md)  
  `PATH`, exporting variables, and shell environment behaviour.

- [Text Processing](./fundamentals/text-processing.md)  
  Searching, filtering, and transforming text using `grep`, `awk`, `sed`, and pipelines.

- [Redirection and Pipes](./fundamentals/data-redirection.md)  
  `stdin`, `stdout`, `stderr`, pipes, and chaining commands.

- [Process Management](./fundamentals/process-management.md)  
  Inspecting running processes, background jobs, monitoring system activity, and safely stopping processes.

- [Bash vs Zsh](./fundamentals/bash-vs-zsh.md)  
  Shell differences, configuration files, and usability comparisons.

- [Vim Basics](./fundamentals/vim-basics.md)  
  Editing files efficiently using Vim.

---

## Learning Approach

This repository reflects **how I learn**, not just what I learned.

- Hands-on practice in real Linux environments (WSL, VMs, cloud instances)
- Solving problems before looking up solutions
- Documenting **why commands work**, not just what they do
- Revisiting concepts through Bandit and SadServers
- Treating confusion and mistakes as part of the learning process

The goal is long-term understanding that transfers to production systems.

---

## Folder Purpose

**fundamentals/**  
Core Linux concepts explained with examples and reasoning.
[View Fundamentals](./fundamentals)

**bandit/**  
OverTheWire Bandit wargame solutions (Levels 1–12), including commands used and lessons learned.
[View Bandit solutions](./bandit)

**sadservers/**  
Real-world Linux troubleshooting scenarios organised by difficulty (Easy, Medium, Hard).
[View SadServers notes](./sadservers)

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of Linux through hands-on command-line usage and core system concepts.

Rather than memorising commands, the emphasis is on learning how Linux behaves and why.

Each topic covers:

• Core Linux concepts and system behaviour

• Common commands and how they interact with the system

• Practical examples based on real-world usage

• Key takeaways that reinforce long-term understanding

These notes help build a solid foundation for Docker, Kubernetes, CI/CD, and cloud platforms.

[View Fundamentals](./fundamentals)

---

## Bandit (Levels 1–12)

The OverTheWire Bandit wargame is used to reinforce Linux fundamentals through progressively harder challenges.

Each level documents:
- The challenge goal
- Commands used
- A brief explanation of why the solution works
- A key learning takeaway

Bandit is treated as a **learning exercise**, not a puzzle to brute-force.  
The emphasis is on understanding Linux behaviour rather than memorising solutions.

[View Bandit solutions](./bandit)

---

## SadServers (Easy, Medium, Hard)

SadServers scenarios are used to simulate real-world Linux issues commonly encountered in production environments.

Unlike guided challenges, SadServers presents broken systems with minimal context, requiring structured investigation and reasoning.

Notes focus on:
- Observing symptoms and system behaviour
- Forming and testing hypotheses
- Applying fixes deliberately
- Understanding root causes rather than surface-level symptoms

These exercises help develop production-grade troubleshooting and operational thinking.

[View SadServers notes](./sadservers)
