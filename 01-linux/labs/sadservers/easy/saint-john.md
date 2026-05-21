# SadServers — Easy: Saint John

## Problem

Figure out what is writing to a log file (e.g. `/var/log/bad.log`) and stop it.

> [!NOTE]
> Log files are often symptoms of a running process or service.  
> Instead of focusing only on the file itself, the real goal is identifying *what process is generating the activity*.

---

## Step 1: Confirm something is running and check processes

Start by listing running processes:

<p align="center">
<img width="935" height="275" alt="Sadservers pt1 Solution" src="https://github.com/user-attachments/assets/e9242b73-f750-4986-a48b-5273b2343616" />
</p>

```bash
ps aux
```

### Why?

If a file is being written repeatedly, there’s usually a running process responsible.  
`ps aux` shows everything running, including background scripts and services.

> [!TIP]
> `ps aux` is commonly used during troubleshooting to inspect active processes, CPU usage, memory usage, and suspicious background jobs.

---

## Step 2: Identify which process has the log file open

Next, check which process is actively using the log file:

<p align="center">
<img width="795" height="70" alt="Sadservers pt2 Solution" src="https://github.com/user-attachments/assets/10514412-dd87-40f0-ae00-12d1e141ca2d" />
</p>

```bash
lsof /var/log/bad.log
```

You’ll see output like:

- `COMMAND` → the program writing (example: `badlog.py`)  
- `PID` → the process ID (example: `593`)  
- `USER` → who owns it (example: `admin`)  
- `NAME` → the file being written (`/var/log/bad.log`)  

### Why?

This is the fastest way to answer the real question:

> “Which process is writing to this file?”

> [!IMPORTANT]
> `lsof` (List Open Files) maps files back to running processes.  
> In Linux, almost everything is treated like a file, making `lsof` extremely powerful for debugging system activity.

---

## Step 3: Stop the process (force if needed)

If it’s not a system service you want running, stop it.  
In this case, the process was forcefully terminated using:

<p align="center">
<img width="410" height="35" alt="Sadservers pt3 Solution" src="https://github.com/user-attachments/assets/23d74ac5-5c29-40ff-96ce-4ce86149ff2d" />
</p>

```bash
kill -9 593
```

### Why `-9`?

- `kill` (default) sends `SIGTERM (15)` which asks a process to exit cleanly  
- `kill -9` sends `SIGKILL (9)` which immediately terminates the process with no cleanup  

Use `kill -9` when the process ignores normal termination or continually restarts.

> [!IMPORTANT]
> `kill -9` should generally be a last resort because the process cannot clean up resources or save state before termination.

---

## Step 4: Verify the log stopped changing

To confirm the file is no longer being modified:

<p align="center">
<img width="629" height="56" alt="Sadservers pt4 Solution" src="https://github.com/user-attachments/assets/745faab2-ae60-42b6-ba8e-c2d45409bdc7" />
</p>

```bash
find /var/log/bad.log -mmin -0.1
```

### What it means

- `-mmin -0.1` → modified within the last ~6 seconds  
- If it returns the file path, it’s still being written to  
- If it returns nothing, the file has stopped changing  

> [!TIP]
> Validation is an important part of troubleshooting.  
> Always confirm the issue actually stopped after applying a fix.

---

## Key Commands Used

- `ps aux`  
- `lsof /var/log/bad.log`  
- `grep`  
- `systemctl status`  
- `kill` / `kill -9`  

---

## Why These Commands

### `ps` / `ps aux`

Identifies running processes.

- Confirms which services or background jobs are active on the system  
- Useful for detecting suspicious or resource-heavy processes  

---

### `lsof`

Identifies which process is writing to the log file.

- Maps open file descriptors back to a specific PID  
- Extremely useful for diagnosing file locks and active log writers  

---

### `grep`

Filters process and log output.

- Helps narrow results to relevant services, logs, or process names  
- Commonly combined with pipes during troubleshooting  

---

### `systemctl`

Checks and manages system services.

- Confirms whether a service is running, stopped, enabled, or failing  
- Used heavily on modern Linux systems using `systemd`  

---

### `kill -9`

Forcefully terminates a process.

- Used only when the process does not respond to graceful termination  
- Immediately stops the offending PID  

---

## What I Learned

- Logs are effects, not causes — trace them back to the responsible process  
- `lsof` is one of the best tools for mapping “file activity → process”  
- `kill -9` works, but should be treated as a last resort  
- Always validate fixes by checking whether the file is still updating
