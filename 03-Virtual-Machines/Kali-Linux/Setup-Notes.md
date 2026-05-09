# Setup Notes — Kali Linux VM

## Overview

This document contains setup procedures, configuration notes, installation details, and operational considerations for the Kali Linux virtual machine used throughout the NCSA Cybersecurity Home Lab environment.

The Kali Linux VM serves as the primary attacker, analysis, and security testing platform within the isolated virtual lab network.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| VM Role | Attacker / Security Testing |
| IP Address | 10.0.2.3 |
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
| Video Memory | 128 MB |
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

# Kali Linux Installation

## Installation Source

Official Kali Linux ISO image downloaded from:

```text
https://www.kali.org/
```

---

# Post-Installation Updates

## Update Package Repositories

```bash
sudo apt update
```

## Upgrade Installed Packages

```bash
sudo apt upgrade -y
```

---

# Installed Toolsets

Primary installed tool categories:
- reconnaissance tools
- exploitation tools
- packet analysis tools
- wireless security tools
- vulnerability scanning tools
- password auditing tools

---

# Wireless Adapter Configuration

Wireless testing requires:
- monitor mode support
- packet injection support
- USB passthrough configuration

---

# Monitor Mode Setup

## Kill Conflicting Processes

```bash
sudo airmon-ng check kill
```

## Enable Monitor Mode

```bash
sudo airmon-ng start wlan0
```

---

# OpenVAS Setup

## Install GVM

```bash
sudo apt install gvm -y
```

## Initialize GVM

```bash
sudo gvm-setup
```

---

# Snapshot Recommendations

Recommended snapshots:
- fresh installation
- post-tool installation
- pre-exploitation testing
- pre-major configuration changes

---

# Shared Folder Configuration

Shared folders may be used for:
- transferring reports
- exporting packet captures
- moving screenshots
- storing documentation

---

# Common Verification Commands

## Verify IP Address

```bash
ip a
```

## Verify Internet Connectivity

```bash
ping 8.8.8.8
```

## Verify Installed Tools

```bash
nmap --version
```

```bash
msfconsole --version
```

```bash
wireshark --version
```

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| No internet access | Verify NAT Network configuration |
| Wireless adapter missing | Verify USB passthrough |
| Monitor mode failure | Kill conflicting processes |
| VM performance issues | Increase RAM and CPU allocation |

---

# Lessons Learned

- Snapshot management significantly reduces recovery time after failed experiments.
- Consistent network configuration improves lab stability.
- Wireless testing requires compatible hardware and USB passthrough configuration.
- Resource allocation directly impacts tool performance and responsiveness.

---

# Notes

- All testing occurs within isolated educational lab environments.
- Vulnerable systems are intentionally configured for authorized security testing.
- Additional tooling and infrastructure may be added as the lab environment expands.

---

# Ethical Use Notice

This Kali Linux virtual machine is used strictly within authorized educational cybersecurity lab environments for training, research, and skills development purposes only.