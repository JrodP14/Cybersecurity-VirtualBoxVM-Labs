# Network Configuration — Metasploitable2 VM

## Overview

This document outlines the network configuration, interface settings, IP addressing, and communication structure for the Metasploitable2 virtual machine used within the NCSA Cybersecurity Home Lab environment.

Metasploitable2 functions as the primary vulnerable target for exploitation, enumeration, vulnerability scanning, and post-exploitation exercises.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Metasploitable2 Linux |
| VM Role | Vulnerable Target |
| IP Address | 10.0.2.4 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |
| Gateway | 10.0.2.1 |

---

# Network Interfaces

| Interface | Purpose |
|---|---|
| eth0 | Primary network interface |

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

## Display Interface Information

```bash
ifconfig
```

Alternative:

```bash
ip a
```

---

# Verify Connectivity

## Ping Kali Linux

```bash
ping 10.0.2.3
```

## Ping Gateway

```bash
ping 10.0.2.1
```

---

# Verify Running Services

```bash
netstat -tunap
```

---

# Common Exposed Ports

| Port | Service |
|---|---|
| 21 | FTP |
| 22 | SSH |
| 23 | Telnet |
| 25 | SMTP |
| 80 | HTTP |
| 139 | NetBIOS |
| 445 | SMB |
| 3306 | MySQL |

---

# Service Enumeration Workflow

## Basic Scan

```bash
nmap 10.0.2.4
```

## Version Detection

```bash
nmap -sV 10.0.2.4
```

## Aggressive Scan

```bash
sudo nmap -A 10.0.2.4
```

---

# Vulnerability Assessment Workflow

Typical workflow:
1. Host discovery
2. Service enumeration
3. Vulnerability scanning
4. Exploitation
5. Post-exploitation analysis

---

# Common Network Workflows

## Exploitation Testing

Tools:
- Metasploit Framework
- Netcat

---

## Vulnerability Scanning

Tools:
- OpenVAS
- Nmap NSE scripts

---

## Packet Analysis

Tools:
- Wireshark
- tcpdump

---

# Common Troubleshooting

## No Network Connectivity

### Verify:
- VirtualBox NAT Network configuration
- adapter enabled
- subnet consistency

---

## Service Not Responding

### Verify:
- target service running
- VM operational
- firewall configuration

---

## Host Appears Down

### Resolution

Use no-ping scan:

```bash
nmap -Pn 10.0.2.4
```

---

# Notes

- Metasploitable2 intentionally exposes vulnerable services.
- The system should remain isolated from external networks.
- Packet captures may contain intentionally insecure traffic.

---

# Ethical Use Notice

This vulnerable virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.