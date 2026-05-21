# SadServers — Medium: Manhattan

## Problem

The PostgreSQL database is running but cannot accept write operations.  
Attempting to insert data into the database fails, preventing normal application functionality.

> [!NOTE]
> Database failures are not always caused by PostgreSQL itself.  
> Underlying operating system problems such as disk exhaustion, permissions, or filesystem issues can prevent databases from starting correctly.

---

## Goal

Restore database write capability so the following command succeeds:

<p align="center">
<img width="1251" height="47" alt="Sadservers Manhattan pt1" src="https://github.com/user-attachments/assets/dea4be33-87f9-4338-83fe-08c504765f1f" />
</p>

```bash
sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt
```

Expected result:

```bash
INSERT 0 1
```

---

## Symptoms

- PostgreSQL service appears to start but database connections fail  
- `psql` cannot connect to the local socket  
- PostgreSQL cluster fails during startup  
- Database cannot write data to disk  

---

## Step 1: Check PostgreSQL service and cluster status

<p align="center">
<img width="1003" height="205" alt="Sadservers Manhattan pt2" src="https://github.com/user-attachments/assets/fa1cd047-f667-45fc-bf79-5f54854019e4" />
</p>

```bash
systemctl status postgresql
```

<p align="center">
<img width="1313" height="95" alt="Sadservers Manhattan pt3" src="https://github.com/user-attachments/assets/e799a39d-4ec9-4987-b23a-0409db0f6c48" />
</p>

```bash
systemctl status postgresql@14-main
```

### Result

- The main service shows `active (exited)`  
- The cluster unit fails to start properly  

This indicates PostgreSQL is being invoked, but the database itself is failing during initialization.

> [!TIP]
> Wrapper services may appear healthy even when the actual database cluster is failing underneath.

---

## Step 2: Inspect PostgreSQL logs

<p align="center">
<img width="808" height="19" alt="Sadservers Manhattan -n 100" src="https://github.com/user-attachments/assets/1cb4e732-3fba-4d5a-8e35-d5e86548ec77" />
</p>

```bash
journalctl -u postgresql@14-main --no-pager -n 100
```

### Why?

Database logs are one of the most important troubleshooting sources when services fail during startup.

Critical error observed:

<p align="center">
<img width="1893" height="254" alt="Sadservers Manhattan pt4" src="https://github.com/user-attachments/assets/85351dd1-2385-4717-ac02-fcfb04345ff9" />
</p>

```bash
FATAL: could not create lock file "postmaster.pid": No space left on device
```

This confirms PostgreSQL is unable to write required startup files.

> [!IMPORTANT]
> PostgreSQL requires free disk space to create lock files, write WAL data, and maintain database consistency.  
> Even small write failures can prevent the entire database cluster from starting.

---

## Step 3: Identify the PostgreSQL data directory

<p align="center">
<img width="971" height="22" alt="Sadservers Manhattan pt5" src="https://github.com/user-attachments/assets/04e41d11-704e-4b66-9747-d5bb8cb59975" />
</p>

```bash
cat /etc/postgresql/14/main/postgresql.conf | grep data_directory
```

### Result

<p align="center">
<img width="969" height="51" alt="Sadservers Manhattan pt6" src="https://github.com/user-attachments/assets/0997bcd5-409d-4506-a215-f4d4dcfbd11c" />
</p>

```bash
data_directory = '/opt/pgdata/main'
```

PostgreSQL is configured to store all database files under `/opt/pgdata`.

> [!TIP]
> Identifying the database data directory is critical when diagnosing storage, permissions, or corruption issues.

---

## Step 4: Check disk usage

<p align="center">
<img width="320" height="23" alt="Sadservers Manhattan pt7" src="https://github.com/user-attachments/assets/4924d5be-df4c-4dd2-91d5-6938c6a73431" />
</p>

```bash
df -h
```

### Result

<p align="center">
<img width="598" height="212" alt="Sadservers Manhattan pt9" src="https://github.com/user-attachments/assets/2ab0e98f-9454-4024-985d-e89421238875" />
</p>

```bash
/dev/nvme0n1   8.0G   8.0G   28K   100%   /opt/pgdata
```

The filesystem backing PostgreSQL’s data directory is completely full.

> [!IMPORTANT]
> A full filesystem prevents PostgreSQL from creating lock files, writing WAL logs, and processing transactions.

> [!TIP]
> `df -h` should be one of the first commands checked whenever services suddenly fail to write data.

---

## Step 5: Inspect contents of the full volume

<p align="center">
<img width="417" height="21" alt="Sadservers Manhattan pt10" src="https://github.com/user-attachments/assets/b059b29d-5368-46b3-898c-82a0880061ee" />
</p>

```bash
cd /opt/pgdata
```

<p align="center"> 
<img width="651" height="207" alt="Sadservers Manhattan pt11" src="https://github.com/user-attachments/assets/eae81081-b48b-47e9-b65e-dd1aba6902e6" />
</p>

```bash
ls -lah
```

### Result

- Large backup and test files present  
- Non-essential files consuming disk space  

This confirms unnecessary files are exhausting the volume.

---

## Step 6: Free disk space safely

Remove or relocate unnecessary files:

<p align="center">
<img width="575" height="47" alt="Sadservers Manhattan pt12" src="https://github.com/user-attachments/assets/f1f5bac1-4aee-454c-8734-3ba88c68fc02" />
</p>

```bash
mv deleteme /root/
mv file2.bk /root/
```

> [!IMPORTANT]
> Never randomly delete files inside a database data directory.  
> Always verify files are non-essential before removing or relocating them.

Re-check disk usage:

<p align="center">
<img width="586" height="229" alt="Sadservers Manhattan pt13" src="https://github.com/user-attachments/assets/db6d3e00-ffe7-4854-b753-888f2a3a4426" />
</p>

```bash
df -h
```

### Result

```bash
/dev/nvme0n1   8.0G   7.1G   923M   89%   /opt/pgdata
```

Sufficient space is now available.

---

## Step 7: Restart PostgreSQL

```bash
service postgresql restart
```

Verify service state:

<p align="center">
<img width="1405" height="374" alt="Sadservers Manhattan pt15" src="https://github.com/user-attachments/assets/c480c442-edb6-40db-a57e-4b92372235a6" />
</p>

```bash
systemctl status postgresql@14-main
```

PostgreSQL now starts successfully.

> [!TIP]
> Restarting services after resolving filesystem issues ensures lock files and runtime state are recreated correctly.

---

## Step 8: Confirm PostgreSQL is listening

<p align="center">
<img width="1892" height="72" alt="Sadservers Manhattan pt16" src="https://github.com/user-attachments/assets/0893c3f6-5c25-4483-8bac-05eb4773e6d4" />
</p>

```bash
ss -putana | grep 5432
```

### Result

- PostgreSQL is listening on `127.0.0.1:5432`

> [!TIP]
> PostgreSQL listens on port `5432` by default.  
> Verifying listening sockets confirms the database is operational at the network layer.

---

## Step 9: Validate database write access

<p align="center">
<img width="1275" height="46" alt="Sadservers Manhattan pt17" src="https://github.com/user-attachments/assets/4af81319-1460-4521-95de-fc878fd3c2b6" />
</p>

```bash
sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt
```

### Result

```bash
INSERT 0 1
```

Database write functionality has been restored successfully.

---

## Root Cause

The PostgreSQL data directory (`/opt/pgdata`) was mounted on a filesystem that had reached **100% disk usage.**

---

## Fix

Free disk space on the PostgreSQL data volume and restart the PostgreSQL service.

---

## Key Commands Used

- `systemctl status postgresql`  
- `journalctl -u postgresql@14-main`  
- `df -h`  
- `cat /etc/postgresql/14/main/postgresql.conf`  
- `ls -lah /opt/pgdata`  
- `mv`  
- `service postgresql restart`  
- `ss -putana`  
- `psql`  

---

## Why These Commands

### `systemctl` / `journalctl`

Identifies why PostgreSQL fails to start.

- Exposes startup errors and system-level failures  
- Provides detailed service logs for troubleshooting  

---

### `df -h`

Detects disk exhaustion.

- Confirms whether the filesystem is full and preventing writes  
- Helps identify storage-related service failures  

---

### `postgresql.conf`

Confirms the data directory location.

- Identifies where PostgreSQL attempts to write its data  
- Helps locate the affected storage volume  

---

### `ls -lah` / `mv`

Locates and removes unnecessary files.

- Safely frees disk space without impacting database stability  
- Helps identify large non-essential files  

---

### `ss -putana`

Verifies PostgreSQL is listening on port `5432`.

- Confirms the service is operational  
- Verifies the database is accepting connections  

---

### `psql`

Validates database write functionality.

- Ensures inserts succeed after resolving the underlying issue  
- Confirms the application-facing problem is fixed  

---

## What I Learned

- Database failures often stem from filesystem constraints, not application bugs  
- PostgreSQL startup failures should always be investigated through logs  
- `No space left on device` errors can cause misleading secondary failures  
- Verifying disk usage is a critical early step in production troubleshooting

PostgreSQL failed to create the mandatory `postmaster.pid` lock file, causing the cluster to abort startup.
