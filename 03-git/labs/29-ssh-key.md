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

<img width="400" src="https://github.com/huss-osman/devops-learning/blob/main/images/demo_key_files.png">

```bash
ls ~/.ssh/
```

After generation, two files should appear:

- demo_key → **Private key**

- demo_key.pub → **Public key**

The **private key must remain secure and should never be shared.**

---

### View the Public Key

<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/print_publickey_demo.png">

```bash
cat ~/.ssh/demo_key.pub
```

This command prints the **public SSH key**, which will be added to **GitHub**.

---

### Copy the Public Key

<img width="600" src="https://github.com/huss-osman/devops-learning/blob/main/images/demo_publickey_copy.png">

```bash
cat ~/.ssh/demo_key.pub | pbcopy
```

This copies the **public key** to your clipboard.

---

### Add SSH Key to GitHub

1. Open **GitHub Settings**

2. Navigate to **SSH and GPG Keys**

3. Click **New SSH Key**

<img width="1699" src="https://github.com/huss-osman/devops-learning/blob/main/images/setting_ssh_github.png">

---

### Paste the SSH Key

1. Add a descriptive **title**

2. Paste the **public SSH key**

3. Click **Add SSH Key**

<img width="1699" src="https://github.com/huss-osman/devops-learning/blob/main/images/add_sshkey_demo.png">

---

### Confirm SSH Key Added

Once added, the SSH key will appear in the **SSH Keys list** associated with your GitHub account.

<img width="1699" src="https://github.com/huss-osman/devops-learning/blob/main/images/add_sshkey_demo.png">

---

## Key Takeaways

- **SSH keys** provide secure authentication for **GitHub** without requiring passwords.

- The **public key** is uploaded to GitHub while the **private key** remains on your local machine.

- Using **ED25519 keys** provides strong security and is recommended for modern SSH authentication.

- SSH authentication enables seamless interaction with repositories when pushing or pulling changes.

---

## Reflection

Setting up **SSH authentication with GitHub** improves both security and developer workflow efficiency. Instead of repeatedly entering credentials when interacting with remote repositories, SSH keys provide a secure cryptographic method for verifying identity.

By generating an SSH key pair, adding the public key to **GitHub**, and configuring repositories to use SSH, developers create a more streamlined development environment. This approach is widely used in professional **DevOps environments**, where secure automated access to repositories and infrastructure is essential.
