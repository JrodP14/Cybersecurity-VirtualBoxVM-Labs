# VM Network Topology

## Overview

This document outlines the virtual machine architecture, IP addressing scheme, network configuration, and communication flow used within the NCSA Cybersecurity Home Lab environment.

The lab environment is designed to simulate a small isolated enterprise-style network for cybersecurity training, vulnerability analysis, exploitation, packet analysis, and security monitoring.

---

# Lab Objectives

The virtual environment supports:

- network reconnaissance
- vulnerability scanning
- exploitation testing
- malware and RAT observation
- packet analysis
- MITM attacks
- wireless security testing
- Windows process analysis
- password auditing

---

# Host and Hypervisor Configuration

| Component | Details |
|---|---|
| Host Operating System | Windows 11 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |
| Gateway | 10.0.2.1 |

The cybersecurity lab environment is hosted on a Windows 11 system using VirtualBox virtualization.

All virtual machines operate independently within the same isolated NAT network environment.

---

# Virtual Machine Topology

| Virtual Machine | IP Address | Operating System | Role |
|---|---|
| Kali Linux VM| 10.0.2.3 | Kali Linux | Attacker / Security Testing |
| Metasploitable2 VM| 10.0.2.4 | Linux | Vulnerable Target |
| Windows 7 VM| 10.0.2.5 | Windows 7 | Malware / RAT Analysis |
| Windows 10 VM| 10.0.2.6 | Windows 10 | Endpoint Analysis |
| OpenVAS VM | 10.0.2.7 | Linux | Vulnerability Scanner |

---

# Network Diagram

# Network Diagram

```text
┌────────────────────────────────────────────────────────────┐
│                    Windows 11 Host System                  │
│                         VirtualBox                         │
│                                                            │
│                NAT Network — 10.0.2.0/24                   │
│                     Gateway: 10.0.2.1                      │
│                                                            │
│  ┌─────────────────────────────────────────────────────┐   │
│  │                 Virtual Machines                    │   │
│  │                                                     │   │
│  │  ┌──────────────┐    ┌────────────────┐             │   │
│  │  │ Kali Linux   │    │ Metasploitable2│             │   │
│  │  │ 10.0.2.3     │    │ 10.0.2.4       │             │   │
│  │  │ Attacker VM  │    │ Vulnerable VM  │             │   │
│  │  └──────────────┘    └────────────────┘             │   │
│  │                                                     │   │
│  │  ┌──────────────┐    ┌──────────────┐               │   │
│  │  │ Windows 7 VM │    │ Windows 10 VM│               │   │
│  │  │ 10.0.2.5     │    │ 10.0.2.6     │               │   │
│  │  │ RAT Analysis │    │ Endpoint VM  │               │   │
│  │  └──────────────┘    └──────────────┘               │   │
│  │                                                     │   │
│  │              ┌──────────────┐                       │   │
│  │              │ OpenVAS VM   │                       │   │
│  │              │ 10.0.2.7     │                       │   │
│  │              │ Vulnerability│                       │   │
│  │              │ Scanner      │                       │   │
│  │              └──────────────┘                       │   │
│  └─────────────────────────────────────────────────────┘   │
└────────────────────────────────────────────────────────────┘
```

---

# Virtual Machine Roles

## Kali Linux — 10.0.2.3

Primary attacker and security testing platform.

### Installed Tools

- Nmap
- Metasploit Framework
- Wireshark
- Aircrack-ng
- Ettercap
- Hashcat
- Netcat
- OpenSSL

### Primary Functions

- reconnaissance
- exploitation
- packet analysis
- MITM attacks
- password auditing
- wireless security testing

---

## Metasploitable2 — 10.0.2.4

Intentionally vulnerable Linux virtual machine used for exploitation practice and vulnerability analysis.

### Primary Functions

- exploitation testing
- service enumeration
- vulnerability validation
- post-exploitation practice

### Common Services

- FTP
- SSH
- Telnet
- Apache
- MySQL
- Samba

---

## Windows 7 — 10.0.2.5

Windows 7 virtual machine hosted on the Windows 11 VirtualBox environment.

This system is used for:
- RAT observation
- suspicious process analysis
- persistence analysis
- Sysinternals investigations
- malware behavior analysis

### Installed Tools

- Sysinternals Suite
- Process Explorer
- Autoruns
- TCPView
- Process Monitor

---

## Windows 10 — 10.0.2.6

Windows 10 virtual machine hosted on the Windows 11 VirtualBox environment.

This system is used for:
- endpoint analysis
- process monitoring
- connectivity testing
- packet analysis
- Windows security testing

---

## OpenVAS VM — 10.0.2.7

Dedicated vulnerability scanning platform used for:
- vulnerability assessments
- CVE analysis
- report generation
- service enumeration

### Services

- Greenbone Vulnerability Manager (GVM)
- Greenbone Security Assistant

### Web Interface

```text
https://10.0.2.7:9392
```

---

# Network Communication Flow

## Common Traffic Paths

| Source | Destination | Purpose |
|---|---|---|
| Kali Linux | Metasploitable2 | Exploitation / Reconnaissance |
| Kali Linux | Windows 7 | RAT Analysis |
| Kali Linux | Windows 10 | Connectivity Testing |
| OpenVAS VM | All Systems | Vulnerability Scanning |
| Windows Systems | Kali Linux | Reverse Shell Testing |

---

# Typical Lab Workflows

## Reconnaissance Workflow

1. Identify active hosts
2. Enumerate services
3. Detect operating systems
4. Identify vulnerabilities

### Tools Used

- Nmap
- Netdiscover
- OpenVAS

---

## Exploitation Workflow

1. Perform service enumeration
2. Select exploit
3. Configure payload
4. Launch exploitation
5. Perform post-exploitation analysis

### Tools Used

- Metasploit Framework
- Netcat

---

## Packet Analysis Workflow

1. Start packet capture
2. Generate traffic
3. Apply filters
4. Analyze packets

### Tools Used

- Wireshark
- Ettercap

---

## Password Auditing Workflow

1. Generate or obtain hashes
2. Identify hash type
3. Perform dictionary attack
4. Analyze password strength

### Tools Used

- Hashcat
- OpenSSL

---

# Security Notes

- All systems operate within an isolated virtual lab environment.
- Vulnerable targets are intentionally configured for educational purposes.
- No production systems are connected to the lab network.
- Internet exposure is minimized where possible.

---

# Planned Future Topology Expansions

Future planned additions:

- Active Directory Domain Controller
- Wazuh SIEM
- Security Onion
- Splunk Server
- REMnux Malware Analysis VM
- Detection Engineering Infrastructure

---

# Notes

- IP addresses may change if DHCP is reconfigured.
- Snapshot backups are recommended before major lab changes.
- Additional segmentation may be added for advanced attack simulation labs.

---

# Ethical Use Notice

This virtual environment exists strictly for authorized cybersecurity education, research, and skills development within isolated lab environments.

Unauthorized exploitation, scanning, interception, or credential attacks against systems without explicit authorization may violate laws and organizational policies.