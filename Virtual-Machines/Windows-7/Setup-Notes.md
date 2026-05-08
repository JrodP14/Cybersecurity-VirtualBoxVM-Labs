# Setup Notes — Windows 7 VM

## Overview

This document contains setup procedures, configuration details, and operational notes for the Windows 7 virtual machine used within the NCSA Cybersecurity Home Lab environment.

The Windows 7 VM functions as a legacy Windows target used for malware observation, RAT analysis, suspicious process monitoring, persistence analysis, and Windows security testing.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Windows 7 |
| VM Role | Malware / RAT Analysis |
| IP Address | 10.0.2.5 |
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
| RAM | 4 GB |
| CPU Cores | 2 |
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

The Windows 7 VM is used for:
- RAT observation
- suspicious process analysis
- persistence analysis
- Windows event investigation
- network connection monitoring
- malware behavior analysis

---

# Sysinternals Installation

## Installed Sysinternals Tools

- Process Explorer
- Autoruns
- TCPView
- Process Monitor
- Sigcheck

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

## Process Analysis

Tools:
- Process Explorer
- Task Manager

---

## Persistence Analysis

Tools:
- Autoruns
- Registry inspection

---

## Network Monitoring

Tools:
- TCPView
- netstat

---

# Snapshot Recommendations

Recommended snapshots:
- fresh installation
- post-Sysinternals installation
- pre-malware simulation
- pre-major configuration changes

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| No network connectivity | Verify NAT Network configuration |
| VM performance issues | Increase RAM allocation |
| Sysinternals tools blocked | Run as administrator |
| Reverse shell failure | Verify listener configuration |

---

# Lessons Learned

- Legacy Windows systems expose unique attack surfaces.
- Process monitoring is essential during malware analysis.
- Persistence mechanisms often reveal suspicious behavior.
- Host-based analysis complements network-based analysis.

---

# Notes

- Windows 7 is intentionally used for educational analysis purposes.
- The VM remains isolated from production networks.
- Malware simulations are conducted only in controlled lab environments.

---

# Ethical Use Notice

This Windows 7 virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.