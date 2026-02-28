# Linux File Permissions

## Overview
**Linux file permissions** control who can read, write, or execute files and directories. They are a core part of **system security**, helping prevent unauthorised access or accidental changes.

Understanding permissions is essential when working with servers, applications, and shared systems in **DevOps environments**, where proper access control ensures stability and security.

---

## Key Concepts

### Permission Types
Linux permissions define what actions are allowed on a file or directory:
- **Read (r)** – view file contents or list a directory
- **Write (w)** – modify a file or create/delete files in a directory
- **Execute (x)** – run a file as a program or access a directory

### Permission Groups
Permissions are applied to three categories:
- **User** – the file owner
- **Group** – users belonging to the file’s group
- **Others** – all remaining users on the system

### Principle of Least Privilege
Users and processes should only have the minimum permissions required to perform their tasks. This reduces the risk of security issues caused by accidental or malicious changes.

---

## Commands Practised

### `ls -l`
Displays detailed file information, including permissions, ownership, and file size.

### `chmod`
Changes file or directory permissions using symbolic or numeric notation.

### `chown`
Changes the owner or group associated with a file or directory.

---

## Reflection
Learning how **Linux file permissions** work made it clear how the operating system enforces **access control** at a fundamental level. It also highlighted how misconfigured permissions can lead to **security risks** or broken applications in production environments.
