# SSH Key Setup

## Overview

Using **SSH authentication** with **Git** allows developers to securely connect to remote repositories without repeatedly entering usernames and passwords. Instead of using HTTPS credentials or personal access tokens, SSH uses cryptographic keys to authenticate your machine with **GitHub**.

Setting up an SSH key improves security and simplifies workflows by allowing seamless pushes and pulls from repositories. Once configured, **Git** will authenticate automatically whenever communicating with **GitHub**.

---

## Key Concepts

- **SSH (Secure Shell)** – A secure protocol used for authenticating connections between machines.
- **Public Key** – The key uploaded to **GitHub** that allows access to your repositories.
- **Private Key** – Stored locally on your machine and used to authenticate securely.
- **SSH Agent** – A background process that manages SSH keys for authentication.
- **Remote URL** – The connection address used by **Git** to interact with repositories (HTTPS or SSH).

---

## Commands

### Generate SSH Key

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/demo_ssh_config.png">

```bash
ssh-keygen -t ed25519 -C "your_email@example.com" -f ~/.ssh/demo_key
```

This command generates a new **ED25519 SSH key pair**.

- `-t ed25519` specifies the modern SSH key algorithm.

- `-C` adds a comment (usually your email).

- `-f` defines a custom filename for the key.

After running the command, you will be prompted to enter a **passphrase**. This step is optional and can be skipped by pressing **Enter**.

---

### Verify SSH Key Files

<img width="700" src="https://github.com/huss-osman/devops-learning/blob/main/images/demo_ssh_config.png">
