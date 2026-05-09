# Setup Notes — OpenVAS VM

## Overview

This document contains setup procedures, configuration details, and operational notes for the OpenVAS virtual machine used within the NCSA Cybersecurity Home Lab environment.

The OpenVAS VM functions as the dedicated vulnerability scanning and assessment platform within the isolated virtual lab network.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Linux |
| VM Role | Vulnerability Scanner |
| IP Address | 10.0.2.7 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |

---

# Host System Information

| Component | Details |
|---|---|
| Host Operating System | Windows 11 |
| Virtualization Platform | VirtualBox |

---

# Initial VM Configuration

## Allocated Resources

| Resource | Configuration |
|---|---|
| RAM | 8 GB |
| CPU Cores | 4 |
| Video Memory | 64 MB |
| Storage | Dynamically Allocated Virtual Disk |

---

# Network Configuration

## Adapter Settings

| Setting | Value |
|---|---|
| Adapter Type | NAT Network |
| Network Name | NATNetwork |
| Promiscuous Mode | Allow All |

---

# OpenVAS / GVM Installation

## Update Repositories

```bash
sudo apt update
```

---

## Install GVM

```bash
sudo apt install gvm -y
```

---

# Initial Setup

## Initialize GVM

```bash
sudo gvm-setup
```

This process:
- installs required components
- downloads vulnerability feeds
- configures services
- creates administrator credentials

---

# Start OpenVAS Services

## Start GVM

```bash
sudo gvm-start
```

---

# Verify Installation

## Check GVM Status

```bash
gvm-check-setup
```

---

# Web Interface Access

## Local Access

```text
https://127.0.0.1:9392
```

## Lab Network Access

```text
https://10.0.2.7:9392
```

---

# Primary Lab Targets

| System | IP Address |
|---|---|
| Metasploitable2 | 10.0.2.4 |
| Windows 7 VM | 10.0.2.5 |
| Windows 10 VM | 10.0.2.6 |

---

# Common Scan Configurations

| Scan Type | Purpose |
|---|---|
| Full and Fast | General vulnerability assessment |
| Discovery | Host and service discovery |
| Host Discovery | Active host detection |
| System Discovery | Service enumeration |

---

# Feed Synchronization

## Update Vulnerability Feeds

```bash
sudo greenbone-feed-sync
```

---

# Snapshot Recommendations

Recommended snapshots:
- fresh installation
- post-feed synchronization
- post-configuration
- pre-major updates

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| Scanner not running | Restart GVM services |
| Feed sync failure | Verify internet access |
| Web interface unavailable | Verify port 9392 |
| Slow scan performance | Increase VM resources |

---

# Verification Commands

## Verify IP Address

```bash
ip a
```

---

## Verify Connectivity

```bash
ping 10.0.2.4
```

---

## Verify Running Services

```bash
sudo systemctl status gvmd
```

---

# Lessons Learned

- Vulnerability scanners require updated feeds for accurate detection.
- Dedicated scanning systems improve assessment organization.
- Accurate enumeration improves vulnerability correlation.
- Large scans require significant CPU, RAM, and storage resources.

---

# Notes

- OpenVAS is used strictly within isolated educational lab environments.
- Vulnerability scans are performed only against authorized lab systems.
- Scan performance varies based on target size and scan configuration.

---

# Ethical Use Notice

This OpenVAS virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.