# Git is Not a File Tracker

## Overview

Git is often misunderstood as a tool that tracks files line by line like a document editor with version history. In reality, **Git does not track files in that way**. Instead of recording individual changes to files, Git records **snapshots of the entire project** at specific points in time. Every time a commit is created, Git captures the state of the repository as it exists at that moment, allowing the full history of the project to be reconstructed later.

This snapshot-based model makes Git extremely efficient. Rather than storing duplicate copies of unchanged data, Git uses **content-addressed storage** with **SHA-1 hashes** to identify file contents and reuse existing objects when possible. Because of this design, Git can manage large repositories and frequent changes reliably, which is one of the reasons it works so well for modern **DevOps workflows** involving infrastructure files, configuration management, and rapidly evolving codebases.

---

## Key Concepts

- **Snapshots, not diffs**  
  Each commit represents a snapshot of the repository at a specific point in time.

- **SHA-1 hashing**  
  Git stores data using a key-value system based on **SHA-1 hashes**, which uniquely represent file content.

- **Git objects**  
  Data inside Git is stored as objects such as **blobs** (file contents), **trees** (directories), and **commits**.

- **Content-addressed storage**  
  Git identifies data by its **content hash**, not by the file name.

- **Efficient storage**  
  If two files contain identical content, Git stores the object once and reuses it.

---

## Key Takeaways

- Git stores **snapshots of project states**, not individual file changes
- Every commit represents the **state of the entire repository**
- Git uses **SHA-1 hashes** to uniquely identify content
- Files and directories are stored as **objects** inside Git
- This design makes Git **fast, reliable, and efficient**

---

## Reflection

Understanding that **Git tracks snapshots rather than individual file changes** helps explain why it performs so well in large projects. By using **content-addressed storage** and **hash-based objects**, Git can manage huge repositories efficiently while preserving the full history of the project. This design makes Git especially powerful in **DevOps environments**, where many configuration files, infrastructure definitions, and automation scripts change frequently.
