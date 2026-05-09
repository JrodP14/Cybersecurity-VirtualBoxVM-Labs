# Network Configuration — Windows 10 VM

## Overview

This document outlines the network configuration, IP addressing, interface settings, and communication structure for the Windows 10 virtual machine used within the NCSA Cybersecurity Home Lab environment.

The Windows 10 VM functions as a modern Windows endpoint used for endpoint analysis, traffic observation, process monitoring, and connectivity testing.

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
| Gateway | 10.0.2.1 |

---

# Network Interfaces

| Interface | Purpose |
|---|---|
| Ethernet Adapter | Primary VM network interface |

---

# Lab Systems

| System | IP Address | Role |
|---|---|---|
| Kali Linux | 10.0.2.3 | Attacker VM |
| Metasploitable2 | 10.0.2.4 | Vulnerable Target |
| Windows 7 VM | 10.0.2.5 | RAT Analysis |
| Windows 10 VM | 10.0.2.6 | Endpoint Analysis |
| OpenVAS VM | 10.0.2.7 | Vulnerability Scanner |

---

# Verify IP Configuration

## Display Network Information

```powershell
ipconfig
```

---

# Verify Connectivity

## Ping Kali Linux

```powershell
ping 10.0.2.3
```

## Ping Gateway

```powershell
ping 10.0.2.1
```

---

# Verify Active Connections

```powershell
netstat -ano
```

---

# Common Communication Workflows

## Endpoint Traffic Observation

Traffic monitored between:
- Windows 10 VM
- Kali Linux
- OpenVAS VM

Tools:
- Wireshark
- TCPView

---

## Vulnerability Scanning

Assessment traffic from:
- OpenVAS VM
- Nmap scans

---

# Common Network Workflows

## Connectivity Testing

Tools:
- ping
- netstat
- PowerShell networking commands

---

## Packet Analysis

Tools:
- Wireshark
- TCPView

---

# Common Troubleshooting

## No Network Connectivity

### Verify:
- NAT Network configuration
- adapter enabled
- subnet consistency

---

## No Packet Traffic Visible

### Verify:
- active traffic generation
- packet capture running
- correct interface selected

---

## Vulnerability Scan Failure

### Verify:
- target online
- firewall configuration
- subnet communication

---

# Notes

- The Windows 10 VM operates strictly within isolated educational lab environments.
- Traffic analysis may include intentionally insecure or simulated malicious traffic.
- Windows firewall settings may be adjusted temporarily for lab exercises.

---

# Ethical Use Notice

This Windows 10 virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.
