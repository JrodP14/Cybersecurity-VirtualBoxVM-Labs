# Network Configuration — Windows 7 VM

## Overview

This document outlines the network configuration, IP addressing, interface settings, and communication structure for the Windows 7 virtual machine used within the NCSA Cybersecurity Home Lab environment.

The Windows 7 VM functions as a Windows analysis target for malware observation, RAT analysis, persistence analysis, and network monitoring.

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
| Gateway | 10.0.2.1 |

---

# Network Interfaces

| Interface | Purpose |
|---|---|
| Ethernet Adapter | Primary VM network interface |

---

# Lab Systems

| System | IP Address | Role |
|---|---|
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

## Reverse Shell Testing

Traffic between:
- Windows 7 VM
- Kali Linux listener

Tools:
- Netcat
- Metasploit Framework

---

## Process & RAT Analysis

Traffic monitoring using:
- TCPView
- Wireshark
- netstat

---

# Common Network Workflows

## Malware Traffic Observation

Monitor:
- outbound connections
- listening ports
- suspicious IP addresses

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

## Reverse Shell Connection Failure

### Verify:
- listener active
- correct target IP
- firewall settings

---

## Missing Network Activity

### Verify:
- active traffic generation
- correct interface selection
- packet capture running

---

# Notes

- The Windows 7 VM operates strictly within isolated lab environments.
- Network traffic may include intentionally insecure or simulated malicious activity.
- Firewall settings may be adjusted temporarily for educational testing.

---

# Ethical Use Notice

This Windows 7 virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.