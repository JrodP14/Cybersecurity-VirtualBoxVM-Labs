# Process Management

## Overview

This document contains Linux process management commands, monitoring workflows, service management procedures, and troubleshooting concepts practiced throughout the **File Permissions & Process Management** lab within the Kali Linux virtual machine environment.

The commands documented here support:
- process monitoring
- service management
- process termination
- resource analysis
- network connection analysis
- Linux administration
- cybersecurity investigations

---

# Linux Processes

A process is an active running instance of a program or command.

Each process includes:
- Process ID (PID)
- owner
- resource usage
- execution state

---

# Viewing Running Processes

## Display All Running Processes

```bash
ps aux
```

Purpose:
- display active processes
- inspect running applications
- review process ownership

---

## Interactive Process Viewer

```bash
top
```

Purpose:
- monitor real-time system activity
- analyze CPU and memory usage

---

## Enhanced Interactive Process Viewer

```bash
htop
```

Purpose:
- improved process visualization

Note:
- may require installation

---

# Searching for Processes

## Filter Running Processes

```bash
ps aux | grep apache
```

Purpose:
- locate specific processes

---

## Search for SSH Processes

```bash
ps aux | grep ssh
```

Purpose:
- identify SSH-related services

---

# Process Identification

## Display Current Shell PID

```bash
echo $$
```

Purpose:
- identify active shell process

---

## Display Process Tree

```bash
pstree
```

Purpose:
- visualize parent-child process relationships

---

# Process Termination

## Terminate Process by PID

```bash
kill PID
```

Purpose:
- stop process gracefully

---

## Force Kill Process

```bash
kill -9 PID
```

Purpose:
- terminate unresponsive process

---

## Kill Process by Name

```bash
pkill processname
```

Purpose:
- terminate processes by name

---

# Background Processes

## Run Process in Background

```bash
command &
```

Purpose:
- run process asynchronously

---

## View Background Jobs

```bash
jobs
```

Purpose:
- display active background tasks

---

## Bring Background Job to Foreground

```bash
fg
```

Purpose:
- resume interactive control

---

# Service Management

## Check Service Status

```bash
systemctl status <service>
```

Purpose:
- verify service operational status

---

## Start Service

```bash
sudo systemctl start <service>
```

Purpose:
- launch service

---

## Restart Service

```bash
sudo systemctl restart <service>
```

Purpose:
- reload or restart service

---

## Stop Service

```bash
sudo systemctl stop <service>
```

Purpose:
- terminate service

---

## Enable Service at Boot

```bash
sudo systemctl enable <service>
```

Purpose:
- start service automatically at boot

---

# Network Connection Monitoring

## Display Active Connections

```bash
netstat -tunap
```

Purpose:
- inspect listening ports
- review active network sessions

---

## Filter Listening Services

```bash
netstat -tunap | grep LISTEN
```

Purpose:
- identify listening services

---

# Resource Monitoring

## Display Memory Usage

```bash
free -h
```

Purpose:
- inspect RAM usage

---

## Display Disk Usage

```bash
df -h
```

Purpose:
- inspect storage utilization

---

# Process Investigation Workflow

Typical process investigation steps:
1. Identify suspicious process
2. Verify process owner
3. Review resource usage
4. Inspect network connections
5. Analyze parent-child relationships
6. Terminate if necessary

---

# Verification Tasks

The following tasks were completed during this lab:

- viewed running processes
- monitored system resources
- filtered processes using grep
- terminated processes
- managed services
- monitored active network connections
- reviewed process hierarchy
- analyzed listening ports

---

# Recommended Screenshots

Recommended screenshots for documentation:
- `ps aux` output
- `top` monitoring
- process filtering examples
- service status checks
- active network connections
- process termination examples
- `pstree` output
- memory and disk usage

---

# Common Troubleshooting

## Process Will Not Stop

### Resolution

Force terminate process:

```bash
kill -9 PID
```

---

## Service Failed to Start

### Verify:
- configuration files
- permissions
- service dependencies

---

## High CPU Usage

### Investigate:
- runaway processes
- infinite loops
- background services

---

## Port Already in Use

### Identify Process

```bash
netstat -tunap
```

---

# Useful Notes

- Every running process has a unique PID.
- Root-owned processes may require elevated privileges to terminate.
- Service monitoring is critical for cybersecurity investigations.
- Suspicious processes often reveal malicious activity or persistence.

---

# Lessons Learned

- Process monitoring is essential for Linux administration and security analysis.
- Active network connection analysis supports incident response workflows.
- Proper service management improves system stability.
- Parent-child process relationships assist with forensic investigations.

---

# Notes

- Administrative privileges may be required for process and service management.
- Improper termination of critical processes can impact system stability.
- Continuous monitoring improves operational awareness.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.