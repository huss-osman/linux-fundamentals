# Forks & Pull Requests

## Overview

In collaborative development, especially in open source projects, contributors often do not have direct write access to the main repository. Instead of committing directly to the project, developers work through a process involving **forks** and **pull requests** to propose their changes safely.

A **fork** creates your own copy of another repository on GitHub, allowing you to experiment, make changes, and **push** updates without affecting the original project. Once your changes are ready, you open a **Pull Request (PR)** so the repository maintainers can review, discuss, and potentially merge your contributions into the main codebase.

---

## Key Concepts

### Forking a repository

A **fork** is your personal copy of someone else’s repository on GitHub.

If you do not have write access to a repository, GitHub requires you to fork it before proposing changes.

<p align="center">
<img width="541" height="124" alt="image" src="https://github.com/user-attachments/assets/3eac4797-ce00-4752-9401-b813233d7ab6" />
</p>

Forking allows you to:

- experiment with changes safely
- contribute to open source projects
- develop features independently

Typical flow:

1. Fork the repository on GitHub  
2. Clone your fork locally  
3. Make changes and commit them  
4. Push changes to your fork  
5. Open a Pull Request to the original repository

---

### **Cloning your fork**

After forking a repository, you clone your fork to your local machine so you can work on it.

```bash
git clone https://github.com/your-username/repository-name.git
```

This creates a local copy of your fork.

---

### **Making changes and pushing to your fork**

Once the repository is cloned, you can create branches, make changes, and push them to your fork.

```bash
git add .
git commit -m "Add new feature"
git push origin feature-branch
```

The changes are pushed to **your fork**, not the original repository.

---

### **Opening a Pull Request (PR)**

A **Pull Request** proposes your changes to the original repository.

Repository maintainers can:

- review the code
- request changes
- comment on the implementation
- merge the changes into the main project

Pull Requests are the standard way to contribute to shared repositories.

---

## Commands

```bash
git clone https://github.com/your-username/repository.git
git checkout -b feature-branch
git add .
git commit -m "Add feature"
git push origin feature-branch
```

---

## Key Takeaways

- A **fork** is your personal copy of another repository on GitHub
- Forking allows you to contribute without direct access to the main project
- You **clone your fork locally**, make changes, and push them back to your fork
- A **Pull Request (PR)** proposes those changes to the original repository
- Maintainers review and merge approved contributions

---

## Reflection

Forks and Pull Requests form the foundation of **collaborative Git workflows**, especially in open source projects. This model allows developers from anywhere to contribute improvements while maintainers retain control over what gets merged into the main codebase.
