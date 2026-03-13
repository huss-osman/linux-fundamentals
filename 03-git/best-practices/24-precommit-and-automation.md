# Pre-Commit & Automation

## Overview

**Pre-commit hooks** are automated checks that run before a commit is created in **Git**. These checks help ensure that code meets quality standards before it enters the repository.

By integrating tools such as **linters**, **formatters**, and **security scanners**, teams can prevent broken or poorly formatted code from being committed. Pre-commit hooks also integrate well with **CI/CD pipelines**, helping maintain consistent code quality across teams.

---

## Key Concepts

### Pre-Commit Hooks

A **pre-commit hook** is a script that runs automatically before a commit is created. These hooks can run tasks such as linting code, formatting files, or running quick tests.

This helps catch problems early before code reaches the shared repository.

---

### Code Quality Automation

Tools such as **pre-commit**, **Husky**, or language-specific linters can automatically enforce coding standards. These tools help maintain consistency across the codebase and reduce manual review effort.

---

### Preventing Broken Code

Automated checks help stop commits that fail tests or break formatting rules. This prevents unstable code from entering the repository and improves overall code reliability.

---

### Integration with CI Pipelines

Pre-commit checks often work alongside **CI pipelines**. While pre-commit hooks run locally before commits, CI pipelines run additional tests and scans after code is pushed to the repository.

---

## Commands

```bash
pip install pre-commit

pre-commit install

pre-commit run --all-files
```

---

## Key Takeaways

- **Pre-commit hooks** run automated checks before commits are created.

- Tools like **pre-commit**, **Husky**, and **linters** help enforce coding standards.

- Automated checks help prevent **broken or poorly formatted code** from entering the repository.

- **Pre-commit hooks** improve **code quality** and reduce manual review effort.

- These checks integrate well with **CI/CD pipelines** for stronger automation.

---

## Reflection

Using **pre-commit hooks** introduces an automated layer of **quality control** before code enters a repository. By running **linters**, **formatters**, and **tests** automatically, teams can prevent common mistakes and maintain consistent **code quality**. Combined with **CI/CD pipelines**, **pre-commit automation** helps ensure that software remains reliable, maintainable, and easier for teams to collaborate on.
