# Pre-Commit Hooks

## Overview

**Pre-commit hooks** are automated checks that run before a commit is created. They help catch formatting issues, syntax errors, large files, and configuration problems before changes enter the repository.

In DevOps workflows, pre-commit is commonly used through a YAML configuration file to enforce quality checks across scripts, Terraform files, YAML files, and other project files. This helps teams maintain cleaner code, reduce mistakes, and improve consistency before changes reach **GitHub**, **pull requests**, or **CI/CD pipelines**.

---

## Key Concepts

- **Pre-Commit Hook** – A script that runs before a commit is created.
- **Hook** – An automated Git action triggered by an event.
- **YAML Config** – Defines which checks should run.
- **Linting** – Checks files for formatting or syntax issues.
- **Validation** – Confirms files follow expected rules.
- **Commit Quality** – Ensures code is checked before being committed.
- **Automation** – Runs checks automatically instead of manually.

---

## Commands

### Check Pre-Commit Version

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt1.png">

```bash
pre-commit --version
```

This confirms that **pre-commit** is installed and available in the terminal.

---

### Install Pre-Commit

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt2.png">

```bash
pip install pre-commit
```

This installs **pre-commit** using Python’s package manager.

> [!NOTE]
> You can install **pre-commit** using:
>
> ```bash
> pip install pre-commit
> ```
>
> Or on macOS:
>
> ```bash
> brew install pre-commit
> ```

> [!IMPORTANT]
> If `pip` or Python packages are not installed, install Python and pip first before running this command.

---

### View Git Hook Sample

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt3.png">

```bash
cat .git/hooks/pre-commit.sample
```

This displays the default Git sample hook that explains how pre-commit hooks work.

---

### List Git Hooks

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt4.png">

```bash
ls .git/hooks
```

This shows the available Git hook samples inside the `.git/hooks` directory.

---

### Show Hidden Git Directory

<img width="350" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt5.png">

```bash
ls -la
```

This confirms that the hidden `.git` directory exists in the repository.

---

### Create Pre-Commit Config File

<img width="500" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt6.png">

```bash
vi ./.pre-commit-config.yaml
```

This creates the `.pre-commit-config.yaml` file where pre-commit hooks are defined.

---

### Add ShellCheck Hook

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt7.png">

```yaml
repos:
  - repo: https://github.com/koalaman/shellcheck-precommit
    rev: v0.9.0
    hooks:
      - id: shellcheck
```

This adds a **ShellCheck** hook to the pre-commit configuration.

> [!NOTE]
> After editing the file in **VS Code**, press `Ctrl + S` to save the changes.

---

### Install the Hook

<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt8.png">

```bash
pre-commit install
```

This installs pre-commit into `.git/hooks/pre-commit` so checks run automatically before commits.

---

### Fix YAML Formatting

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt9.png">

Remove the extra final line shown in the YAML file and save the file.

> [!NOTE]
> Remove the last empty line if it causes formatting issues, then press `Ctrl + S` in **VS Code** to save.

---

### Commit Pre-Commit Config

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt10.png">

```bash
git add .pre-commit-config.yaml
git commit -m "Update pre-commit config"
```

This runs the configured hook before the commit is created and blocks the commit if checks fail.

---

### Remove Extra Line in File

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt11.png">

Remove the last empty line from the file to fix the formatting issue.

> [!NOTE]
> Pre-commit can fail when formatting rules are not followed. Fix the file, save it, and commit again.


---

### Create Terraform File with Formatting Issues

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt12.png">

Create a `main.tf` file with spacing issues to test Terraform formatting checks.

```hcl
resource "aws_s3_bucket" "this" {
  bucket = "my-bucket"
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
}
```

This demonstrates how pre-commit can detect formatting or validation issues before a commit is accepted.

---

### Pre-Commit Fails and Shows Errors

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/pre_commit_pt14.png">

```bash
git add .
git commit -m "add s3 bucket tf"
```

This shows **pre-commit** failing because some checks detected problems before the commit could continue.

> [!IMPORTANT]
> Pre-commit hooks protect the repository by blocking commits that fail checks.
>
> In this example, issues were detected in:
>
> - YAML formatting  
> - Large file checks  
> - Terraform formatting  
> - Terraform validation  
>
> Fix the errors, stage the files again, and rerun the commit.

---

## Key Takeaways

- Pre-commit hooks run checks before a commit is created.  
- They help catch errors early in the development workflow.  
- `.pre-commit-config.yaml` defines which hooks should run.  
- Hooks can check YAML, Terraform, shell scripts, large files, and formatting.  
- Failed hooks stop bad changes from entering the repository.  
- Pre-commit improves code quality before pull requests and CI/CD pipelines.  

---

## Reflection

Using pre-commit hooks helped me understand how automated checks can improve commit quality before changes enter a repository. It showed that issues such as formatting errors, invalid configuration, and large files can be caught early instead of later in the pipeline.

I also learned that pre-commit is an important DevOps practice because it encourages consistency and prevents avoidable mistakes. This reinforces the importance of **automation and code quality** when working with Git, especially in real-world projects where clean commits and reliable workflows matter.
