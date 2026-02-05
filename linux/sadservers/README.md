<p align="center">
<img width="100" height="100" alt="SaD-removebg-preview" src="https://github.com/user-attachments/assets/a98152b0-5c73-405a-a1fb-9a5e3b525436" />
<p align="center">

# SadServers Practice

![Platform](https://img.shields.io/badge/Platform-Linux-blue?logo=linux)
![Focus](https://img.shields.io/badge/Focus-Troubleshooting-critical)
![Practice](https://img.shields.io/badge/Practice-Production%20Scenarios-orange)
![Difficulty](https://img.shields.io/badge/Difficulty-Easy%20%7C%20Medium%20%7C%20Hard-lightgrey)

## SadServers (Easy, Medium, Hard)

SadServers scenarios are used to simulate real-world Linux incidents and operational failures.

Unlike Bandit, which focuses on isolated command-line challenges, SadServers emphasizes **diagnosis, reasoning, and fixing broken systems** — closely mirroring how Linux is used in production environments.

Each scenario documents:
- Observed symptoms
- Investigation steps and tools used
- Root cause identification
- Fix applied and validation
- Key operational takeaway

---

## SadServers Scenarios

### Easy — Saint John
**Issue:** Unexpected writes to a log file  
**Focus:** Process inspection and log analysis  
**Key Commands:** `ps`, `lsof`, `grep`, `systemctl`, `kill -9`  
➡️ [View Easy scenario](./easy/saint-john.md)

---

### Medium — Manhattan
**Issue:** Application unable to write data to a database  
**Focus:** Permissions, services, and dependency troubleshooting  
**Key Commands:** `systemctl`, `journalctl`, `df -h`, `ls -lah`, `mv`, `ss -putana`, `psql`  
➡️ [View Medium scenario](./medium/manhattan.md)

---

### Hard — Jakarta
**Issue:** Service failure caused by DNS misconfiguration  
**Focus:** Network resolution, configuration validation, and system dependencies  
**Key Commands:** `ping`, `cat /etc/resolv.conf`, `cat /etc/nsswitch.conf`, `vi /etc/nsswitch.conf`, `iptables -L`  
➡️ [View Hard scenario](./hard/jakarta.md)

---

## What Was Practised
- Diagnosing Linux issues with incomplete or unclear problem statements  
- Analysing logs, running processes, and service states  
- Correlating symptoms with underlying system behaviour  
- Applying and validating fixes in a controlled manner  
- Relying on system understanding instead of trial-and-error commands

---

## Key Skills Used
- Process management
- File system navigation
- Permissions
- Service troubleshooting

---

## Reflection
SadServers helped bridge the gap between theory and real-world Linux issues, improving confidence in troubleshooting production-like environments.
