# Commands

## Overview

This document contains the primary Linux maintenance, informational, networking, package management, and troubleshooting commands used throughout the **Basic Maintenance & Informational Commands** lab.

The commands documented here were executed within the Kali Linux virtual machine environment.

---

# User & System Information

## Display Current User

```bash
whoami
```

Purpose:
- identify currently logged-in user

---

## Display Hostname

```bash
hostname
```

Purpose:
- display system hostname

---

## Display Kernel Information

```bash
uname -a
```

Purpose:
- display Linux kernel and architecture information

---

## Display Operating System Information

```bash
cat /etc/os-release
```

Purpose:
- identify Linux distribution version

---

# File System Navigation

## Show Current Directory

```bash
pwd
```

Purpose:
- display current working directory

---

## List Files and Directories

```bash
ls -la
```

Purpose:
- display directory contents with permissions and hidden files

---

## Change Directory

```bash
cd /path/to/directory
```

Purpose:
- navigate file system

---

# File Operations

## Create File

```bash
touch file.txt
```

Purpose:
- create empty file

---

## Copy File

```bash
cp source.txt destination.txt
```

Purpose:
- copy files

---

## Move or Rename File

```bash
mv file.txt newfile.txt
```

Purpose:
- move or rename files

---

## Remove File

```bash
rm file.txt
```

Purpose:
- delete files

---

# Network Information

## Display IP Configuration

```bash
ip a
```

Alternative:

```bash
ifconfig
```

Purpose:
- display network interface information

---

## Display Routing Table

```bash
ip route
```

Purpose:
- display routing information

---

## Test Connectivity

```bash
ping 10.0.2.1
```

Purpose:
- verify network connectivity

---

## DNS Lookup

```bash
nslookup google.com
```

Alternative:

```bash
dig google.com
```

Purpose:
- verify DNS resolution

---

# Process & Service Management

## Display Running Processes

```bash
ps aux
```

Purpose:
- view active processes

---

## Display Active Network Connections

```bash
netstat -tunap
```

Purpose:
- inspect active network connections and listening services

---

## Check Service Status

```bash
systemctl status <service>
```

Purpose:
- verify service status

---

## Restart Service

```bash
sudo systemctl restart <service>
```

Purpose:
- restart system service

---

# Package Management

## Update Package Repositories

```bash
sudo apt update
```

Purpose:
- refresh package repository information

---

## Upgrade Installed Packages

```bash
sudo apt upgrade -y
```

Purpose:
- update installed packages

---

## Install Package

```bash
sudo apt install <package-name>
```

Purpose:
- install software packages

---

## Remove Package

```bash
sudo apt remove <package-name>
```

Purpose:
- uninstall software package

---

# Permissions Management

## Change File Permissions

```bash
chmod 755 script.sh
```

Purpose:
- modify file permissions

---

## Change Ownership

```bash
sudo chown user:user file.txt
```

Purpose:
- modify file ownership

---

# Text Processing

## Search Text

```bash
grep "text" file.txt
```

Purpose:
- search for matching text

---

## Extract Columns

```bash
cut -d ":" -f 1 file.txt
```

Purpose:
- extract delimited text fields

---

# Helpful Verification Commands

## Verify Internet Access

```bash
ping 8.8.8.8
```

---

## Verify Installed Packages

```bash
dpkg -l
```

---

## Verify Logged-In Users

```bash
who
```

---

# Common Troubleshooting Commands

## Restart Networking

```bash
sudo systemctl restart NetworkManager
```

---

## Display Disk Usage

```bash
df -h
```

---

## Display Memory Usage

```bash
free -h
```

---

## Kill Process

```bash
kill -9 PID
```

---

# Notes

- Administrative commands typically require `sudo`.
- Commands were executed within the Kali Linux VM environment.
- Some commands may vary slightly depending on Linux distribution version.

---

# Ethical Use Notice

All commands documented in this repository were executed within authorized educational cybersecurity lab environments for training and research purposes only.