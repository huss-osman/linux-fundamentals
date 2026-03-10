# Visualise Branches & Logs

## Overview

**Git provides powerful logging tools** that allow developers to inspect commit history and understand how branches evolve over time. Instead of manually tracing commits, Git can display the repository history in compact and visual formats.

These commands are especially useful when working with **multiple branches, merges, and collaborative workflows**, helping developers see how changes move through the repository and how branches relate to each other.

---

## Key Concepts

### **Compact commit history**

`git log --oneline` provides a simplified view of the commit history by showing each commit on a single line. This makes it easier to scan the history quickly.

<img width="1640" height="320" alt="💡 𝐓𝐡𝐞 𝐦𝐨𝐬𝐭 𝐢𝐦𝐩𝐨𝐫𝐭𝐚𝐧𝐭 𝐟𝐨𝐥𝐝𝐞𝐫 𝐢𝐧 𝐚 𝐆𝐢𝐭 𝐫𝐞𝐩𝐨𝐬𝐢𝐭𝐨𝐫𝐲 When you initialise a repository with Git, a hidden folder is created called  git  Most developers never look (1)" src="https://github.com/user-attachments/assets/905ce0a9-5002-4d4c-b805-d2e701187ca1" />

```bash
git log --oneline
```

---

### **Visual commit tree**

`git log --graph` displays the commit history as a visual tree structure. This is useful when working with branches and merges because it shows how commits diverge and reconnect.

<img width="941" height="312" alt="image" src="https://github.com/user-attachments/assets/139b61fa-2054-4a47-97d3-0c92089b3363" />

```bash
git log --graph
```

---

### **Combined compact visual history**

`git log --oneline --graph --all` combines multiple options to produce a compact and visual representation of the entire repository history.

This command shows:

- commit hashes
- branch relationships
- merge points
- all branches

<img width="889" height="76" alt="image" src="https://github.com/user-attachments/assets/1903b7ab-1d51-40cc-9773-104cc1e30a60" />

```bash
git log --oneline --graph --all
```

---

### **Debugging merges and branch history**

Visual commit logs help developers understand:

- where branches diverged
- how merges occurred
- which commits belong to which branches

This makes debugging and reviewing history much easier.

---

## Commands

```bash
git log --oneline
git log --graph
git log --oneline --graph --all
```

---

## Key Takeaways

- **Git log commands help visualise repository history**
- `git log --oneline` provides a compact commit view
- `git log --graph` displays the commit tree structure
- `git log --oneline --graph --all` shows a full visual history of all branches
- These tools are useful for debugging merges and understanding branch relationships

---

## Reflection

Visualising commit history helps developers understand how changes move through a repository. By using commands such as `git log --oneline --graph --all`, teams can quickly inspect branches, track merges, and debug issues within complex Git workflows.
