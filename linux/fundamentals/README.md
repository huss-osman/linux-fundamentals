<img width="1000" height="500" alt="Fundamentals" src="https://github.com/user-attachments/assets/6a894fee-f146-4deb-b99d-7fabf1b7287c" />


# Linux Fundamentals

This section contains structured notes covering **core Linux concepts** required for DevOps, system administration, and cloud engineering.

The focus is not just on memorising commands, but on understanding **how Linux works under the hood** and *why* specific commands behave the way they do.

These fundamentals are later applied in:
- Bash scripting
- CI/CD pipelines
- Docker containers
- Kubernetes workloads
- Cloud infrastructure (AWS)

---

## Topics Covered

### Terminal & Shell Basics
- Navigating the Linux file system
- Understanding absolute vs relative paths
- Using common utilities (`ls`, `cd`, `cp`, `mv`, `rm`, `man`)
- Shell behaviour and command execution

📄 `terminal-basics.md`  
📄 `shell-basics.md`

---

### File System & Permissions
- Linux directory structure (`/etc`, `/var`, `/usr`, `/home`)
- File ownership (user, group)
- Permission bits (read, write, execute)
- Numeric vs symbolic permissions
- Real-world permission troubleshooting

📄 `file-system.md`  
📄 `permissions.md`

---

### Users & Groups
- Linux users and groups
- UID and GID concepts
- `sudo` and privilege escalation
- Managing access securely

📄 `users-and-groups.md`

---

### Environment Variables
- What environment variables are
- Scope and inheritance
- `PATH` and shell startup files
- Temporary vs persistent variables

📄 `environment-variables.md`

---

### Input / Output Redirection & Pipes
- `stdin`, `stdout`, `stderr`
- Redirecting output (`>`, `>>`, `<`)
- Pipes (`|`)
- Combining commands effectively

📄 `data-redirection.md`

---

### Bash vs Zsh
- Differences between Bash and Zsh
- Configuration files
- Aliases and shell customisation
- Why Bash is still dominant in servers and automation

📄 `bash-vs-zsh.md`

---

### Vim Basics
- Navigating Vim efficiently
- Insert, normal, and command modes
- Editing and saving files
- Why Vim is still relevant in production environments

📄 `vim-basics.md`

---

## Learning Philosophy

These notes reflect:
- Hands-on experimentation
- Learning by breaking and fixing things
- Reading error messages instead of guessing
- Building intuition for Linux behaviour

This foundation is critical for:
- Debugging containers
- Understanding CI/CD failures
- Working with Kubernetes nodes
- Troubleshooting production systems

---

## Next Steps

These fundamentals are actively applied in:
- **Bandit** (Linux wargame challenges)
- **SadServers** (real-world troubleshooting scenarios)
- **Bash scripting** and automation projects

👉 See:
- `../bandit/`
- `../sadservers/`
