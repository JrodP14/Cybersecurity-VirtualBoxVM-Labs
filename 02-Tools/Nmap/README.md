# Nmap

## Overview

Nmap (Network Mapper) is a network discovery and security auditing tool used for host discovery, port scanning, service enumeration, operating system detection, and vulnerability reconnaissance.

This tool was used within the NCSA Cybersecurity Home Lab environment to identify active hosts, enumerate open ports and services, analyze network exposure, and perform reconnaissance against lab systems including Metasploitable2 and Windows virtual machines.

---

# Objectives

The primary objectives of using Nmap in this lab environment were:

- Discover active systems on the network
- Identify open ports and services
- Detect service versions
- Perform operating system fingerprinting
- Conduct network reconnaissance
- Understand attack surface enumeration
- Analyze exposed network services

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Tool | Nmap |
| Primary Targets | Metasploitable2, Windows 7, Windows 10 |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Features

- Host discovery
- Port scanning
- Service enumeration
- Version detection
- Operating system detection
- NSE scripting
- Network mapping
- Vulnerability reconnaissance

---

# Installation

## Verify Existing Installation

```bash
nmap --version
```

## Install on Kali Linux

```bash
sudo apt update
sudo apt install nmap
```

---

# Host Discovery

Host discovery identifies active systems on the network.

## Ping Sweep

```bash
nmap -sn 10.0.2.0/24
```

Purpose:
- identify active hosts
- map network devices

---

# Basic Port Scanning

## Scan Common Ports

```bash
nmap 10.0.2.4
```

---

# Service Version Detection

Service detection identifies running services and software versions.

## Service Enumeration

```bash
nmap -sV 10.0.2.4
```

---

# Operating System Detection

Operating system fingerprinting attempts to identify the target operating system.

## OS Detection

```bash
sudo nmap -O 10.0.2.4
```

---

# Aggressive Scanning

Aggressive scanning combines multiple detection techniques.

## Aggressive Scan

```bash
sudo nmap -A 10.0.2.4
```

Features:
- OS detection
- version detection
- traceroute
- NSE scripts

---

# Full Port Scanning

## Scan All TCP Ports

```bash
nmap -p- 10.0.2.4
```

---

# UDP Scanning

UDP scans identify UDP-based services.

## UDP Scan

```bash
sudo nmap -sU 10.0.2.4
```

---

# NSE Scripts

Nmap Scripting Engine (NSE) scripts automate service enumeration and vulnerability checks.

## SMB Enumeration

```bash
nmap --script smb-enum-shares 10.0.2.4
```

## Vulnerability Scan

```bash
nmap --script vuln 10.0.2.4
```

---

# Output Formats

Nmap supports multiple output formats for reporting and analysis.

## Save Normal Output

```bash
nmap -oN scan.txt 10.0.2.4
```

## Save XML Output

```bash
nmap -oX scan.xml 10.0.2.4
```

---

# Related Labs

- Introduction to Nmap
- Network Reconnaissance
- Service Enumeration
- Vulnerability Scanning
- OpenVAS Scanning

---

# Recommended Screenshots

Recommended screenshots for documentation:
- successful host discovery
- service version detection
- aggressive scan results
- operating system detection
- NSE script results
- vulnerability scan findings
- full port scan results

---

# Common Commands

| Command | Purpose |
|---|---|
| nmap -sn | Host discovery |
| nmap -sV | Service detection |
| nmap -O | OS detection |
| nmap -A | Aggressive scan |
| nmap -p- | Full port scan |
| nmap --script | Run NSE scripts |

---

# Common Troubleshooting

## Host Appears Down

### Possible Causes
- ICMP blocked
- firewall filtering
- incorrect IP address

### Resolution

Use no-ping scan:

```bash
nmap -Pn 10.0.2.4
```

---

## OS Detection Failed

### Resolution
- run scan with sudo privileges
- ensure sufficient open ports exist
- reduce firewall filtering

---

## Slow Scanning

### Resolution
- reduce port range
- avoid UDP scans when unnecessary
- adjust timing options

---

# Lessons Learned

- Network reconnaissance reveals exposed services and attack surfaces.
- Accurate service enumeration improves vulnerability analysis.
- Full port scans provide more complete visibility than default scans.
- NSE scripts automate many common reconnaissance tasks.

---

# Ethical Use Notice

All scanning activities documented in this repository were conducted in a controlled educational environment for cybersecurity training purposes only.

Do not perform unauthorized network scanning or reconnaissance against systems without explicit authorization.