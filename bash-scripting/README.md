<img width="1000" height="500" alt="imageedit_4_2799565420" src="https://github.com/user-attachments/assets/1d9e4f50-68d6-42af-ae83-0d341785a2a2" />

# Bash Scripting

This repository documents my hands-on learning of **Bash scripting** as part of my **DevOps training with CoderCo**.

Bash is the foundation of Linux automation. Nearly everything in DevOps — containers, CI/CD pipelines, cloud provisioning, and system automation — relies on Bash scripts running at the command line. This repository exists to build and demonstrate that foundation.

The focus throughout this work is on understanding **how Bash behaves and executes**, not memorising syntax.

---

## Learning Objectives

By working through this module, I aimed to:

- Confidently write and execute Bash scripts
- Understand script execution flow and shell behaviour
- Use variables, parameters, and control structures correctly
- Handle errors and unexpected input safely
- Work with files, processes, and environment variables in scripts
- Apply Bash fundamentals through structured challenges and scripting exercises

---

## Topics Covered

- [Introduction to Bash](./fundamentals/introduction.md)  
  What Bash is, how it fits into Linux, and why it matters in DevOps.

- [Writing Your First Script](./fundamentals/writing-first-script.md)  
  Script structure, execution order, and basic automation.

- [The Shebang Line](./fundamentals/shebang.md)  
  How Linux chooses interpreters and why the shebang matters.

- [Comments](./fundamentals/comments.md)  
  Documenting intent and improving script maintainability.

- [Running Scripts](./fundamentals/running-scripts.md)  
  Executable permissions, PATH, and running scripts from anywhere.

- [Variables](./fundamentals/variables.md)  
  Assignment, expansion, quoting, and common pitfalls.

- [Script Parameters](./fundamentals/parameters.md)  
  Positional parameters, argument handling, and validation.

- [Arithmetic Expansion](./fundamentals/arithmetic-expansion.md)  
  Performing calculations safely in Bash.

- [Conditionals](./fundamentals/conditionals.md)  
  Decision-making using exit codes and test expressions.

- [Loops](./fundamentals/loops.md)  
  Repeating operations with `for` and `while` loops.

- [Functions](./fundamentals/functions.md)  
  Structuring scripts and reducing duplication.

- [User Input](./fundamentals/user-input.md)  
  Reading and validating input from users.

- [Piping and Redirection](./fundamentals/piping-and-redirection.md)  
  `stdin`, `stdout`, `stderr`, pipes, and data flow.

- [Exit Codes](./fundamentals/exit-codes.md)  
  Signalling success and failure in scripts and pipelines.

- [Shell Options (`set`)](./fundamentals/set-options.md)  
  Writing safer scripts with strict execution modes.

- [Environment Variables & PATH](./fundamentals/environment-and-path.md)  
  Environment inheritance and command discovery.

- [Working with Files](./fundamentals/working-with-files.md)  
  File checks, safe reads/writes, and defensive scripting.

---

## Learning Approach

This repository reflects how I learn, not just what I learned.

- Hands-on scripting in real Linux environments
- Writing and breaking scripts to understand failure modes
- Documenting why Bash behaves the way it does
- Revisiting concepts through structured challenges
- Treating confusion and mistakes as part of the learning process

The goal is long-term understanding that transfers directly to production systems.

---

## Folder Purpose

### `fundamentals/`
Core Bash concepts explained with examples and reasoning  
➡️ [Open fundamentals](./fundamentals)

### `bashbattlearena/`
Hands-on Bash scripting challenges organised by difficulty (Levels 1–3)  
➡️ [Open Bash Battle Arena](./bashbattlearena)

---

## Fundamentals

The Fundamentals section focuses on building a strong understanding of **Bash scripting** through hands-on command-line usage and core shell concepts.

Rather than memorising syntax, the emphasis is on learning how **Bash behaves and executes**, and how small mistakes can lead to large failures in automation.

Each topic covers:

- Core Bash concepts and shell behaviour
- Common syntax and how Bash evaluates commands
- Practical examples based on real-world scripting usage
- Key takeaways that reinforce long-term understanding

These notes help build a solid foundation for Dockerfiles, CI/CD pipelines, infrastructure automation, and cloud platforms.

➡️ [View Fundamentals](./fundamentals)

---

## Bash Battle Arena (Levels 1–3)

Bash Battle Arena is used to reinforce Bash fundamentals through progressively harder scripting challenges.

Each level documents:

- The challenge goal
- Bash concepts being tested
- Commands and patterns used
- A brief explanation of why the solution works
- A key learning takeaway

Bash Battle Arena is treated as a learning exercise, not a puzzle to brute-force.  
The emphasis is on understanding **shell behaviour and execution flow**, rather than memorising syntax.

These exercises help develop production-grade scripting and operational thinking.

➡️ [View Bash Battle Arena](./bashbattlearena)
