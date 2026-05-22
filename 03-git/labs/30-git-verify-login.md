# Git Verify Login

## Overview

After configuring an **SSH key** with **GitHub**, it is important to verify that authentication works correctly. Testing the SSH connection confirms that your local machine can securely communicate with **GitHub** without requiring a username, password, or personal access token.

By verifying the connection, developers ensure that **Git** trusts the configured SSH key and that the system is ready to perform operations such as cloning repositories, pushing commits, or pulling updates from remote repositories.

---

## Key Concepts

- **SSH Authentication** – Uses cryptographic keys to securely authenticate with GitHub.
- **SSH Agent** – A background process that stores and manages SSH keys.
- **ssh-add** – Adds an SSH key to the SSH agent for authentication.
- **SSH Test Connection** – Verifies that GitHub recognizes your machine.

---

## Commands

### Add SSH Key to SSH Agent

Before testing the connection, load the SSH key into the SSH agent.

<p align="center">
<img width="900" src="https://github.com/huss-osman/devops-learning/blob/main/images/ssh_add_ver.png">
</p>

```bash
ssh-add ~/.ssh/demo-key
```

This allows the SSH agent to use the private key for authentication.

---

### Verify SSH Authentication

Run the following command to test the SSH connection to GitHub:

<p align="center">
<img width="1000" src="https://github.com/huss-osman/devops-learning/blob/main/images/auth_ssh_demo.png">
</p>

```bash
ssh -T git@github.com
```

If authentication is successful, GitHub will respond with a confirmation message.

---

## Key Takeaways

- **SSH authentication** allows secure communication between **Git** and **GitHub** without passwords.
- The **ssh-add command** loads a private key into the SSH agent.
- Running **ssh -T git@github.com** verifies that authentication is configured correctly.
- Successful verification confirms the machine can interact with **GitHub repositories**.

---

## Reflection

Verifying SSH authentication ensures that **Git operations such as cloning, pulling, and pushing repositories work securely using SSH keys**.  
Running the connection test confirms that **GitHub recognizes the configured SSH key and trusts the local machine**.

Completing this verification step is an important part of the **Git setup process**, ensuring that developers can interact with repositories without authentication interruptions.
