<img width="1000" height="500" alt="imageedit_2_6245302199" src="https://github.com/user-attachments/assets/4085aa7d-12a2-485b-ac9f-04c04507280e" />

# Bash Scripting

This repository documents my hands-on learning of **Bash scripting** as part of my **DevOps training**.

Bash is the backbone of Linux automation. From CI/CD pipelines to system bootstrapping and cloud provisioning, Bash scripts are used everywhere.

This repository focuses on **understanding Bash behaviour**, not memorising syntax.

---

## Learning Objectives

By working through this repository, I aimed to:

- Understand how Bash executes commands and scripts
- Write safe, predictable automation scripts
- Use variables, parameters, and control flow correctly
- Handle errors and unexpected input defensively
- Work confidently with files, processes, and environments
- Build scripts suitable for real DevOps workflows

---

## Topics Covered

### Fundamentals
- [Introduction to Bash](./fundamentals/01-introduction.md)
- [Writing Your First Script](./fundamentals/02-writing-first-script.md)
- [The Shebang Line](./fundamentals/03-shebang.md)
- [Comments](./fundamentals/04-comments.md)
- [Running Scripts](./fundamentals/05-running-scripts.md)
- [Variables](./fundamentals/06-variables.md)
- [Script Parameters](./fundamentals/07-parameters.md)
- [Arithmetic Expansion](./fundamentals/08-arithmetic-expansion.md)
- [Conditionals](./fundamentals/09-conditionals.md)
- [Loops](./fundamentals/10-loops.md)
- [Functions](./fundamentals/11-functions.md)
- [User Input](./fundamentals/12-user-input.md)
- [Piping and Redirection](./fundamentals/13-piping-and-redirection.md)
- [Exit Codes](./fundamentals/14-exit-codes.md)
- [Shell Options (`set`)](./fundamentals/15-set-options.md)
- [Environment Variables & PATH](./fundamentals/16-environment-and-path.md)
- [Working with Files](./fundamentals/17-working-with-files.md)

---

## Folder Purpose

### `fundamentals/`
Core Bash concepts explained with examples and reasoning.  
Each topic focuses on **how Bash behaves and why**, not just syntax.

➡️ [Open fundamentals](./fundamentals)

### `bashbattlearena/`
Hands-on Bash scripting challenges organised by difficulty.

- Level 1 – Core Bash fundamentals
- Level 2 – Functions, files, and data flow
- Level 3 – Error handling and real-world automation

➡️ [Open Bash Battle Arena](./bashbattlearena)

---

## Fundamentals/

The Fundamentals section focuses on building a strong understanding of **Bash scripting** through hands-on command-line usage and core shell concepts.

Rather than memorising commands or syntax, the emphasis is on learning **how Bash behaves**, how scripts execute, and why certain patterns are considered safe or dangerous in real systems.

Each topic covers:

• Core Bash concepts and shell behaviour  
• Common syntax and how Bash evaluates commands  
• Practical examples based on real-world scripting usage  
• Key takeaways that reinforce long-term understanding  

These notes help build a solid foundation for Dockerfiles, CI/CD pipelines, infrastructure automation, and cloud tooling.

➡️ [View Fundamentals](./fundamentals)

---

## Bash Battle Arena (Levels 1–3)

Bash Battle Arena is used to reinforce Bash fundamentals through progressively harder scripting challenges.

Each level documents:

- The challenge goal  
- The Bash concepts being tested  
- Commands and patterns used  
- A brief explanation of why the solution works  
- A key learning takeaway  

Challenges are treated as **learning exercises**, not puzzles to brute-force.  
The emphasis is on understanding **shell behaviour and execution flow**, rather than memorising syntax.

Levels progress from basic scripting to real-world automation patterns.

➡️ [View Bash Battle Arena](./bashbattlearena)

---

## Learning Approach

This repository reflects how Bash is used in **real Linux systems**:

- Scripts tested in real environments
- Emphasis on failure modes and edge cases
- Defensive scripting over happy-path assumptions
- Focus on long-term maintainability

The goal is production-ready Bash knowledge that transfers directly to DevOps work.
