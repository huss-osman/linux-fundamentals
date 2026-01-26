# Process Management

## Overview
A process is a running instance of a program. Linux systems often run hundreds of processes simultaneously, handling system services, user applications, and background tasks.

Understanding process management is essential for monitoring system health, diagnosing performance issues, and stopping misbehaving applications in DevOps and production environments.

---

## Key Concepts

### What is a Process?
A process represents a program in execution and has:
- A unique Process ID (PID)
- An owner (user)
- Resource usage (CPU, memory)
- A lifecycle (start, run, terminate)

---

### Foreground vs Background Processes
- **Foreground processes** run interactively and block the terminal
- **Background processes** run without blocking the terminal

Background execution allows long-running tasks to continue while you work on other commands.

---

## Commands Practised

## ps
Displays a snapshot of running processes.

```bash
ps aux
```

Useful for seeing:

• All active processes

• Resource usage

• Process owners

## grep (with ps)
Filters process output by name.

```bash
ps aux | grep nginx
```

Helps quickly locate specific processes.

### top
Provides a real-time view of system processes and resource usage.

```bash
top
```

Useful for identifying:

• High CPU usage

• Memory pressure

• Unresponsive processes

### htop
An enhanced, interactive process viewer.

```bash
sudo apt install htop
htop
```

Offers better readability and easier process management than top.

### jobs
Lists background jobs started from the current shell.

```bash
jobs
```

### bg
Sends a stopped job to the background.

```bash
bg %1
```

### fg
Brings a background job to the foreground.

```bash
fg %1
```

### kill

```bash
kill <PID>
```

Attempts to stop the process gracefully.

### kill -9
Forcefully terminates a process using the SIGKILL signal.

```bash
kill -9 <PID>
```

This should be used only when a process does not respond to normal termination signals.

### killall
Terminates all processes matching a given name.

```bash
killall sleep
```

This is useful when:

• Multiple instances of the same process are running

• You want to stop a background command without finding individual PIDs

killall sends a termination signal to every matching process name, making it faster than manually killing each PID.

## Key Signals

• SIGTERM (15) – Default signal, allows graceful shutdown

• SIGKILL (9) – Immediate termination, cannot be ignored

Understanding signals helps prevent data loss and system instability.

---

## Reflection

Learning process management improved my ability to observe and control system behaviour.
Instead of restarting entire systems, I can now identify problematic processes, monitor resource usage, and apply targeted fixes — a critical skill in production Linux environments.
