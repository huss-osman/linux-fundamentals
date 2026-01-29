# SadServers — Medium: Manhattan

## Problem
The PostgreSQL database is running but cannot accept write operations.
Attempting to insert data into the database fails, preventing normal application functionality.

## Goal
Restore database write capability so the following command succeeds:

<img width="1251" height="47" alt="Sadservers Manhattan pt1" src="https://github.com/user-attachments/assets/dea4be33-87f9-4338-83fe-08c504765f1f" />

```
sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt
```

Expected result:

```
INSERT 0 1
```

## Symptoms

• PostgreSQL service appears to start but database connections fail

• `psql` cannot connect to the local socket

• PostgreSQL cluster fails during startup

• Database cannot write data to disk

## Step 1: Check PostgreSQL service and cluster status

<img width="1003" height="205" alt="Sadservers Manhattan pt2" src="https://github.com/user-attachments/assets/fa1cd047-f667-45fc-bf79-5f54854019e4" />

```
systemctl status postgresql
```

<img width="1313" height="95" alt="Sadservers Manhattan pt3" src="https://github.com/user-attachments/assets/e799a39d-4ec9-4987-b23a-0409db0f6c48" />

```
systemctl status postgresql@14-main
```

Result:

• The main service shows **active (exited)**

• The cluster unit fails to start properly

This indicates PostgreSQL is being invoked, but the database itself is failing during initialization.

## Step 2: Inspect PostgreSQL logs

<img width="808" height="19" alt="Sadservers Manhattan -n 100" src="https://github.com/user-attachments/assets/1cb4e732-3fba-4d5a-8e35-d5e86548ec77" />

```
journalctl -u postgresql@14-main --no-pager -n 100
```

Critical error observed:

<img width="1893" height="254" alt="Sadservers Manhattan pt4" src="https://github.com/user-attachments/assets/85351dd1-2385-4717-ac02-fcfb04345ff9" />

```
FATAL: could not create lock file "postmaster.pid": No space left on device
```

This confirms PostgreSQL is unable to write required startup files.

## Step 3: Identify the PostgreSQL data directory

<img width="971" height="22" alt="Sadservers Manhattan pt5" src="https://github.com/user-attachments/assets/04e41d11-704e-4b66-9747-d5bb8cb59975" />

```
cat /etc/postgresql/14/main/postgresql.conf | grep data_directory
```

Result:

<img width="969" height="51" alt="Sadservers Manhattan pt6" src="https://github.com/user-attachments/assets/0997bcd5-409d-4506-a215-f4d4dcfbd11c" />

```
data_directory = '/opt/pgdata/main'
```

PostgreSQL is configured to store all database files under `/opt/pgdata`.

## Step 4: Check disk usage

<img width="320" height="23" alt="Sadservers Manhattan pt7" src="https://github.com/user-attachments/assets/4924d5be-df4c-4dd2-91d5-6938c6a73431" />

```
df -h
```

Result:

<img width="598" height="212" alt="Sadservers Manhattan pt9" src="https://github.com/user-attachments/assets/2ab0e98f-9454-4024-985d-e89421238875" />

```
/dev/nvme0n1   8.0G   8.0G   28K   100%   /opt/pgdata
```

The filesystem backing PostgreSQL’s data directory is completely full.

## Step 5: Inspect contents of the full volume

<img width="417" height="21" alt="Sadservers Manhattan pt10" src="https://github.com/user-attachments/assets/b059b29d-5368-46b3-898c-82a0880061ee" />

```
cd /opt/pgdata
```

<img width="651" height="207" alt="Sadservers Manhattan pt11" src="https://github.com/user-attachments/assets/eae81081-b48b-47e9-b65e-dd1aba6902e6" />

```
ls -lah
```

Result:

• Large backup and test files present

• Non-essential files consuming disk space

## Step 6: Free disk space safely
Remove or relocate unnecessary files:

<img width="575" height="47" alt="Sadservers Manhattan pt12" src="https://github.com/user-attachments/assets/f1f5bac1-4aee-454c-8734-3ba88c68fc02" />

```
mv deleteme /root/
mv file2.bk /root/
```

Re-check disk usage:

<img width="586" height="229" alt="Sadservers Manhattan pt13" src="https://github.com/user-attachments/assets/db6d3e00-ffe7-4854-b753-888f2a3a4426" />

```
df -h
```

Result:

```
/dev/nvme0n1   8.0G   7.1G   923M   89%   /opt/pgdata
```

Sufficient space is now available.

## Step 7: Restart PostgreSQL
service postgresql restart


Verify service state:

<img width="1405" height="374" alt="Sadservers Manhattan pt15" src="https://github.com/user-attachments/assets/c480c442-edb6-40db-a57e-4b92372235a6" />

```
systemctl status postgresql@14-main
```

PostgreSQL now starts successfully.

## Step 8: Confirm PostgreSQL is listening

<img width="1892" height="72" alt="Sadservers Manhattan pt16" src="https://github.com/user-attachments/assets/0893c3f6-5c25-4483-8bac-05eb4773e6d4" />

```
ss -putana | grep 5432
```

Result:
• PostgreSQL is listening on `127.0.0.1:5432`

## Step 9: Validate database write access

<img width="1275" height="46" alt="Sadservers Manhattan pt17" src="https://github.com/user-attachments/assets/4af81319-1460-4521-95de-fc878fd3c2b6" />

```
sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt
```

Result:

```
INSERT 0 1
```

## Root Cause
The PostgreSQL data directory (`/opt/pgdata`) was mounted on a filesystem that had reached **100% disk usage.**
PostgreSQL failed to create the mandatory `postmaster.pid` lock file, causing the cluster to abort startup.

## Fix
Free disk space on the PostgreSQL data volume and restart the service.

## Key Commands Used

• `systemctl status postgresql`

• `journalctl -u postgresql@14-main`

• `df -h`

• `cat /etc/postgresql/14/main/postgresql.conf`

• `ls -lah /opt/pgdata`

• `mv`

• `service postgresql restart`

• `ss -putana`

• `psql`

## What I Learned

• Database failures often stem from **filesystem constraints**, not application bugs

• PostgreSQL startup failures should always be investigated via logs

• `No space left on device` errors can cause misleading secondary failures

• Verifying disk usage is a critical early step in production troubleshooting
