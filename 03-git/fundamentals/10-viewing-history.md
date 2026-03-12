# Viewing History

## Overview

**Git** provides several commands that allow developers to inspect repository history and understand how a project has evolved over time. Instead of guessing what changed or when it changed, **Git** records every commit and allows that history to be explored in multiple ways.

These tools help developers review previous work, investigate issues, and understand how files and commits relate to each other. By examining commit history, diffs, and references, teams can trace changes across the lifecycle of a project.

---

## Key Concepts

### **View commit history**

`git log` displays the full commit history of a repository, including commit hashes, authors, timestamps, and commit messages.

<img width="940" height="313" alt="gitlog command" src="https://github.com/user-attachments/assets/6b2b88b9-536a-4ff4-b70e-8aabc7520625" />

```bash
git log
```

---

### **Visual summary of commits**

`git log --oneline --graph` provides a compact visual representation of the commit history. This format makes it easier to understand branching and commit relationships.

<img width="2000" height="493" alt="gitonelinegraphs" src="https://github.com/user-attachments/assets/758969f9-0db0-488b-9592-d2eb68d23175" />

```bash
git log --oneline --graph
```

---

### **Inspect a specific commit**

`git show <commit>` displays detailed information about a specific commit, including the changes introduced in that commit.

<img width="939" height="761" alt="gitshow" src="https://github.com/user-attachments/assets/863b3c28-46cc-418f-9903-16637d128c75" />

```bash
git show 5519ce2
```

---

### **Compare changes**

`git diff` shows the differences between file versions.

<img width="929" height="255" alt="git diff" src="https://github.com/user-attachments/assets/448d0edd-0b9c-412d-a68c-5bab7bdb26af" />

```bash
git diff
```

---

### **Compare staged changes**

`git diff --staged` shows the differences between the staged files and the last commit.

<img width="635" height="185" alt="git diff staged" src="https://github.com/user-attachments/assets/910c900f-57a9-40bd-914c-82a44f0a7672" />

```bash
git diff --staged
```

---

## Bonus Commands

### **Identify who modified each line**

`git blame <file>` shows which commit and author last modified each line of a file.

<img width="898" height="74" alt="git blame" src="https://github.com/user-attachments/assets/8cc39844-12d7-4540-8a8a-5e3bc2355f47" />

```bash
git blame demo.yaml
```

---

### **View reference history**

`git reflog` shows the history of where the **HEAD** reference has pointed locally. This includes actions such as commits, checkouts, resets, and rebases.

<img width="855" height="98" alt="git reflog" src="https://github.com/user-attachments/assets/a61f54c1-9792-4ad3-b7d1-0aa22ce1e306" />

```bash
git reflog
```

---

## Commands

```bash
git log
git log --oneline --graph
git show <commit>
git diff
git diff --staged
git blame <file>
git reflog
```

---

## Key Takeaways

- **Git** provides multiple ways to explore repository history

- `git log` shows the commit timeline

- `git show` reveals details about a specific commit

- `git diff` compares file changes

- `git blame` helps identify who modified specific lines

- `git reflog` allows recovery of recent **HEAD** movements

---

## Reflection

Understanding how to view **Git history** is essential for debugging, reviewing changes, and understanding how a project evolves over time. By using commands such as **git log, git diff**, and **git blame**, developers can trace the origin of changes and collaborate more confidently within shared repositories.
