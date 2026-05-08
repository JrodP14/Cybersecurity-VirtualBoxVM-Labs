# Setup Notes — Windows 10 VM

## Overview

This document contains setup procedures, configuration details, and operational notes for the Windows 10 virtual machine used within the NCSA Cybersecurity Home Lab environment.

The Windows 10 VM functions as a modern Windows endpoint used for endpoint analysis, connectivity testing, packet analysis, Windows security testing, and general workstation simulation within the isolated lab environment.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Windows 10 |
| VM Role | Endpoint Analysis |
| IP Address | 10.0.2.6 |
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
| RAM | 6 GB |
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

# VM Purpose

The Windows 10 VM is used for:
- endpoint analysis
- packet analysis
- process monitoring
- connectivity testing
- Windows security testing
- traffic observation
- service interaction testing

---

# Installed Security Utilities

## Common Installed Tools

- Wireshark
- Sysinternals Suite
- Windows Defender
- Event Viewer
- TCPView

---

# Verification Commands

## Verify IP Address

```powershell
ipconfig
```

---

## Verify Connectivity

```powershell
ping 10.0.2.3
```

---

## View Running Processes

```powershell
tasklist
```

---

# Common Analysis Activities

## Endpoint Monitoring

Tools:
- Task Manager
- Process Explorer
- Event Viewer

---

## Packet Analysis

Tools:
- Wireshark
- TCPView

---

## Connectivity Testing

Tools:
- ping
- netstat
- PowerShell networking commands

---

# Snapshot Recommendations

Recommended snapshots:
- fresh installation
- post-tool installation
- pre-testing state
- pre-major configuration changes

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| No network connectivity | Verify NAT Network configuration |
| Slow performance | Increase RAM allocation |
| Wireshark permissions issues | Run as administrator |
| Connectivity testing failure | Verify subnet consistency |

---

# Lessons Learned

- Modern Windows systems include additional security protections compared to legacy systems.
- Endpoint visibility improves incident investigation and troubleshooting.
- Packet analysis supports network and host-based investigations.
- Proper VM resource allocation improves analysis performance.

---

# Notes

- The Windows 10 VM operates strictly within isolated educational lab environments.
- Security testing is performed only against authorized systems.
- Additional monitoring and defensive tools may be added as the lab environment expands.

---

# Ethical Use Notice

This Windows 10 virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.