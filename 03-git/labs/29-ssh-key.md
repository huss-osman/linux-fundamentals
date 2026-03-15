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



```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
