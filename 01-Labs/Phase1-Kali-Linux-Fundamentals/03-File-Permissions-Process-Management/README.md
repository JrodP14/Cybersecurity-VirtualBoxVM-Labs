# File Permissions & Process Management

## Overview

This lab focused on Linux file permissions, ownership management, process monitoring, service management, and process control within the Kali Linux virtual machine environment.

The purpose of this lab was to develop foundational Linux administration and cybersecurity skills related to access control, system monitoring, privilege management, and process analysis commonly used in security operations and incident investigations.

---

# Lab Objectives

The primary objectives of this lab were:

- Understand Linux file permissions
- Modify file and directory permissions
- Change file ownership
- View and analyze running processes
- Monitor active network connections
- Manage services and processes
- Practice process termination and troubleshooting

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| VM IP Address | 10.0.2.3 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |

---

# Skills Developed

- Linux permissions management
- file ownership management
- process monitoring
- service management
- network connection analysis
- privilege management
- Linux troubleshooting

---

# Linux File Permissions

Linux permissions control access to files and directories.

Permission types:
- read (`r`)
- write (`w`)
- execute (`x`)

Example permission format:

```text
-rwxr-xr-x
```

---

# Viewing Permissions

## Display File Permissions

```bash
ls -l
```

---

## Display Hidden Files and Permissions

```bash
ls -la
```

Purpose:
- display ownership
- display permissions
- display hidden files

---

# Changing Permissions

## Modify File Permissions

```bash
chmod 755 script.sh
```

Purpose:
- assign read/write/execute permissions

---

## Remove Write Permission

```bash
chmod -w file.txt
```

---

## Add Execute Permission

```bash
chmod +x script.sh
```

---

# Changing Ownership

## Change File Owner

```bash
sudo chown user:user file.txt
```

Purpose:
- modify file ownership

---

## Change Directory Ownership Recursively

```bash
sudo chown -R user:user directory/
```

---

# Process Management

## View Running Processes

```bash
ps aux
```

Purpose:
- inspect active processes

---

## Interactive Process Viewer

```bash
top
```

Purpose:
- monitor system resource usage

---

## Search for Running Process

```bash
ps aux | grep apache
```

Purpose:
- locate specific process

---

# Process Control

## Kill Process by PID

```bash
kill PID
```

---

## Force Kill Process

```bash
kill -9 PID
```

Purpose:
- terminate unresponsive process

---

# Service Management

## Check Service Status

```bash
systemctl status <service>
```

---

## Start Service

```bash
sudo systemctl start <service>
```

---

## Restart Service

```bash
sudo systemctl restart <service>
```

---

## Stop Service

```bash
sudo systemctl stop <service>
```

---

# Network Connection Analysis

## View Active Connections

```bash
netstat -tunap
```

Purpose:
- inspect listening ports
- identify active network connections

---

## Filter Listening Services

```bash
netstat -tunap | grep LISTEN
```

---

# Verification Tasks

The following tasks were completed during this lab:

- viewed Linux file permissions
- modified file permissions
- changed file ownership
- viewed running processes
- terminated processes
- restarted services
- analyzed active network connections
- filtered process output

---

# Recommended Screenshots

Recommended screenshots for documentation:
- `ls -l` output
- permission modification examples
- ownership changes
- `ps aux` output
- `top` process monitoring
- service status output
- `netstat -tunap` output
- process termination examples

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| Permission denied | Use sudo or modify permissions |
| Process will not terminate | Use force kill (`kill -9`) |
| Service failed to start | Verify configuration and logs |
| Ownership change failed | Use elevated privileges |

---

# Lessons Learned

- Linux permissions directly impact system security and accessibility.
- Process monitoring is critical for system administration and incident response.
- Active network connection analysis helps identify suspicious activity.
- Proper privilege management improves operational security.

---

# Related Labs

- Basic Maintenance & Informational Commands
- Navigation & File Management
- grep & cut Usage
- RAT Observation & Suspicious Processes
- Wireshark Traffic Analysis

---

# Notes

- Administrative privileges are commonly required for process and service management.
- Improper permission configuration may expose systems to security risks.
- Process monitoring is heavily used in SOC and incident response environments.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.