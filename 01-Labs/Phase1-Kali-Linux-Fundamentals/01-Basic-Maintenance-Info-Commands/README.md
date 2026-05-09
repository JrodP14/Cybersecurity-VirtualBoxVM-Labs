# Basic Maintenance & Informational Commands

## Overview

This lab focused on foundational Linux system administration and command-line operations within the Kali Linux virtual machine environment.

The purpose of this lab was to develop familiarity with essential Linux informational commands, system maintenance tasks, package management, and troubleshooting workflows commonly used in cybersecurity operations.

---

# Lab Objectives

The primary objectives of this lab were:

- Learn basic Linux command-line navigation
- Gather system and hardware information
- Verify network connectivity
- Understand package management
- Practice system maintenance procedures
- Familiarize with common Linux administrative commands

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

- Linux command-line usage
- system information gathering
- package management
- network verification
- service management
- process inspection
- troubleshooting basics

---

# Commands Practiced

## System Information

### Display Current User

```bash
whoami
```

---

### Display Hostname

```bash
hostname
```

---

### Display Kernel Information

```bash
uname -a
```

---

### Display Operating System Information

```bash
cat /etc/os-release
```

---

# File System Navigation

## Show Current Directory

```bash
pwd
```

---

## List Files and Directories

```bash
ls -la
```

---

## Change Directory

```bash
cd /path/to/directory
```

---

# Network Information

## Display IP Address Information

```bash
ip a
```

Alternative:

```bash
ifconfig
```

---

## Test Connectivity

```bash
ping 10.0.2.1
```

---

## Display Routing Table

```bash
ip route
```

---

## DNS Resolution Test

```bash
nslookup google.com
```

---

# Process Management

## View Running Processes

```bash
ps aux
```

---

## Display Active Network Connections

```bash
netstat -tunap
```

---

# Package Management

## Update Package Repositories

```bash
sudo apt update
```

---

## Upgrade Installed Packages

```bash
sudo apt upgrade -y
```

---

## Install Packages

```bash
sudo apt install <package-name>
```

---

# Service Management

## Check Service Status

```bash
systemctl status <service>
```

---

## Restart Service

```bash
sudo systemctl restart <service>
```

---

# File Operations

## Create File

```bash
touch file.txt
```

---

## Copy File

```bash
cp source.txt destination.txt
```

---

## Move File

```bash
mv file.txt /destination/
```

---

## Remove File

```bash
rm file.txt
```

---

# Permissions Management

## Change File Permissions

```bash
chmod 755 script.sh
```

---

## Change File Ownership

```bash
sudo chown user:user file.txt
```

---

# Verification Tasks

The following tasks were completed during this lab:

- verified network connectivity
- confirmed IP addressing
- updated package repositories
- upgraded installed packages
- inspected running processes
- verified active network connections
- practiced file management commands

---

# Recommended Screenshots

Recommended screenshots for documentation:
- `ip a` output
- `uname -a` output
- `ls -la` output
- successful `ping` test
- `apt update` completion
- `ps aux` output
- `netstat -tunap` output

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| No internet access | Verify NAT Network configuration |
| Command not found | Install missing package |
| Permission denied | Use sudo or modify permissions |
| Package update failure | Verify network connectivity |

---

# Lessons Learned

- Linux command-line proficiency is essential for cybersecurity operations.
- System information gathering supports troubleshooting and enumeration workflows.
- Package management is critical for maintaining updated security tools.
- Networking commands help validate lab communication and connectivity.

---

# Related Labs

- Navigation & File Management
- File Permissions & Process Management
- grep & cut Usage
- Introduction to Nmap
- Wireshark Traffic Analysis

---

# Notes

- All commands were executed within the Kali Linux virtual machine.
- Administrative commands often require elevated privileges using `sudo`.
- Consistent system maintenance improves lab stability and performance.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.