# SadServers — Medium: Manhattan

## Problem
The PostgreSQL database is running but cannot accept write operations.
Attempting to insert data into the database fails, preventing normal application functionality.

Goal
Restore database write capability so the following command succeeds:

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

```
systemctl status postgresql
```
```
systemctl status postgresql@14-main
```
Result:

• The main service shows active (exited)

• The cluster unit fails to start properly

This indicates PostgreSQL is being invoked, but the database itself is failing during initialization.

## Step 2: Inspect PostgreSQL logs

```
journalctl -u postgresql@14-main --no-pager -n 100
```

Critical error observed:

```
FATAL: could not create lock file "postmaster.pid": No space left on device
```

This confirms PostgreSQL is unable to write required startup files.

## Step 3: Identify the PostgreSQL data directory

```
cat /etc/postgresql/14/main/postgresql.conf | grep data_directory
```

Result:

```
data_directory = '/opt/pgdata/main'
```

PostgreSQL is configured to store all database files under /opt/pgdata.

## Step 4: Check disk usage

```
df -h
```

Result:

```
/dev/nvme0n1   8.0G   8.0G   28K   100%   /opt/pgdata
```

The filesystem backing PostgreSQL’s data directory is completely full.

## Step 5: Inspect contents of the full volume
```
cd /opt/pgdata
```

```
ls -lah
```

Result:

• Large backup and test files present

• Non-essential files consuming disk space

## Step 6: Free disk space safely
Remove or relocate unnecessary files:

```
mv deleteme /root/
mv file2.bk /root/
```

Re-check disk usage:

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

```
systemctl status postgresql@14-main
```

PostgreSQL now starts successfully.

## Step 8: Confirm PostgreSQL is listening

```
ss -putana | grep 5432
```

Result:

```
PostgreSQL is listening on 127.0.0.1:5432
```

## Step 9: Validate database write access

```
sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt
```

Result:

```
INSERT 0 1
```

## Root Cause
The PostgreSQL data directory (`/opt/pgdata`) was mounted on a filesystem that had reached 100% disk usage.
PostgreSQL failed to create the mandatory `postmaster.pid` lock file, causing the cluster to abort startup.

## Fix
Free disk space on the PostgreSQL data volume and restart the service.

## What I Learned

• Database failures often stem from filesystem constraints, not application bugs

• PostgreSQL startup failures should always be investigated via logs

• No space left on device errors can cause misleading secondary failures

• Verifying disk usage is a critical early step in production troubleshooting
