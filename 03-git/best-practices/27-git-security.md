## Overview

Maintaining strong **Git security practices** is essential for protecting sensitive information within a repository. Developers must ensure that secrets such as **API keys**, **passwords**, and **tokens** are never accidentally committed to version control.

To reduce the risk of leaks, teams use tools that detect secrets before commits are made and regularly audit repository history. By combining **secret scanning**, **repository auditing**, and proper use of `.gitignore`, teams can maintain secure and reliable repositories.

---

## Key Concepts

### Preventing Secret Leaks

Sensitive information should never be committed to a **Git repository**. Secrets such as **API keys**, **database credentials**, or **private tokens** must be stored securely using environment variables or secret management systems.

---

### Secret Scanning Tools

Tools like **git-secrets** and **TruffleHog** scan repositories for exposed secrets. These tools help detect sensitive information before it becomes part of the **Git history**.

---

### Cleaning Secrets from History

If secrets are accidentally committed, they must be removed from the **repository history** using tools such as `git filter-repo`. Simply deleting the file is not enough because Git keeps historical snapshots.

---

### Auditing Contributors and Logs

Regularly reviewing **commit history**, contributors, and repository logs helps identify suspicious activity or accidental exposures.

---

## Commands

```bash
git secrets --install

git secrets --scan

trufflehog https://github.com/example/repository

git filter-repo --path secrets.txt --invert-paths
```

---

## Key Takeaways

- Never commit **secrets** or **credentials** to a **Git repository**.

- Tools like **git-secrets** and **TruffleHog** help detect exposed secrets.

- Removing secrets requires rewriting **Git history**, not just deleting files.

- Use `.gitignore` to prevent sensitive files from being tracked.

- Regular **repository audits** help maintain **security** and accountability.

---

## Reflection

Maintaining strong **Git security hygiene** is critical for protecting sensitive information and maintaining trust within development teams. Accidental leaks of **API keys**, **tokens**, or **credentials** can expose systems to serious **security risks** if not detected quickly.

By using **secret scanning tools**, enforcing good **repository practices**, and auditing **Git history**, teams can significantly reduce the risk of **security breaches** and ensure that repositories remain safe for collaboration and deployment workflows.
