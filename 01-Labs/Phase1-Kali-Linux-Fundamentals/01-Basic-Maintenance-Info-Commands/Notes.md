# Notes

## Overview

This document contains additional notes, observations, troubleshooting reminders, lessons learned, and operational considerations gathered throughout the **Basic Maintenance & Informational Commands** lab.

The purpose of these notes is to reinforce foundational Linux administration concepts used throughout the cybersecurity home lab environment.

---

# General Linux Observations

- Linux command-line proficiency is essential for cybersecurity operations.
- Most security tools rely heavily on terminal-based workflows.
- Administrative privileges are commonly required for networking and system-level commands.
- Kali Linux includes many preinstalled cybersecurity tools by default.

---

# Networking Notes

## IP Addressing

The Kali Linux VM was configured within the isolated VirtualBox NAT Network:

| System | IP Address |
|---|---|
| Kali Linux | 10.0.2.3 |
| Gateway | 10.0.2.1 |

---

## Connectivity Testing

Basic connectivity testing was performed using:

```bash
ping 10.0.2.1
```

Successful replies confirmed:
- proper VM networking
- NAT Network communication
- internet routing functionality

---

## DNS Resolution

DNS resolution was tested using:

```bash
nslookup google.com
```

Purpose:
- verify internet name resolution
- validate DNS functionality

---

# Package Management Notes

## Repository Updates

Repositories were updated before installing or upgrading packages:

```bash
sudo apt update
```

Purpose:
- refresh available package information
- synchronize repository indexes

---

## Package Upgrades

Installed packages were upgraded using:

```bash
sudo apt upgrade -y
```

Purpose:
- maintain updated software
- apply security patches
- improve tool stability

---

# File System Notes

## Hidden Files

The `-a` flag in `ls -la` displays hidden files beginning with a period (`.`).

Example:

```bash
ls -la
```

---

## Linux File Permissions

Linux permissions consist of:
- read (`r`)
- write (`w`)
- execute (`x`)

Example permission format:

```text
-rwxr-xr-x
```

---

# Process Management Notes

## Process Inspection

Running processes were reviewed using:

```bash
ps aux
```

Purpose:
- identify active processes
- monitor system activity
- troubleshoot applications

---

## Active Connections

Network connections and listening services were reviewed using:

```bash
netstat -tunap
```

Purpose:
- inspect open ports
- identify active network sessions
- review listening services

---

# Common Linux Directory Locations

| Directory | Purpose |
|---|---|
| /home | User directories |
| /etc | Configuration files |
| /var | Logs and variable data |
| /tmp | Temporary files |
| /usr | Installed applications |
| /bin | Essential binaries |

---

# Common Administrative Notes

## Sudo Usage

Commands requiring elevated privileges were executed using:

```bash
sudo
```

Purpose:
- temporarily execute commands as root

---

## Root Access Considerations

Running commands as root can:
- modify critical system files
- impact networking
- affect security configurations

Care should be taken when using elevated privileges.

---

# Troubleshooting Reminders

## No Internet Access

Verify:
- NAT Network configuration
- VM adapter attachment
- gateway connectivity

---

## Permission Denied Errors

Possible resolutions:
- use `sudo`
- modify file permissions
- verify file ownership

---

## Command Not Found

Possible resolutions:
- verify package installation
- update PATH
- install missing utility

---

# Lessons Learned

- Linux administration skills support both offensive and defensive cybersecurity operations.
- Networking verification is critical before running security tools.
- Package management ensures security tools remain updated and functional.
- Basic Linux troubleshooting improves overall lab stability.

---

# Skills Reinforced

- Linux navigation
- command-line operations
- networking fundamentals
- package management
- process inspection
- permissions management
- troubleshooting workflows

---

# Future Applications

The concepts practiced in this lab support future activities involving:
- Nmap scanning
- Metasploit exploitation
- packet analysis
- wireless security testing
- vulnerability scanning
- log analysis
- malware investigation

---

# Notes

- All activities were performed inside an isolated Kali Linux virtual machine.
- Commands and workflows may vary slightly depending on Linux distribution versions.
- Screenshots and outputs should be stored for documentation and portfolio purposes.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.