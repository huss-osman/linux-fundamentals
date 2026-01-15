# Users and Groups

## Overview
Linux is a multi-user operating system.  
Understanding users and groups is essential for managing permissions and system security.

## Key Concepts

### Users
- Each user has a unique ID (UID)
- Users can own files and run processes

### Groups
- Groups are collections of users
- Permissions can be assigned to groups instead of individuals

## Common Commands

- `whoami` – shows the current user
- `id` – displays user and group IDs
- `groups` – shows groups the user belongs to
- `sudo` – run commands with elevated privileges
- `adduser username` – create a new user
- `groupadd groupname` – create a new group
- `usermod -aG group user` – add user to a group

## Reflection
Understanding users and groups helped clarify how permissions work and why access is restricted on shared systems.
