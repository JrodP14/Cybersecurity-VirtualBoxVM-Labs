# OpenVAS

## Overview

OpenVAS (Open Vulnerability Assessment Scanner), also known as Greenbone Vulnerability Manager (GVM), is a vulnerability scanning platform used to identify security weaknesses, exposed services, missing patches, and misconfigurations within networked systems.

This tool was used within the NCSA Cybersecurity Home Lab environment to perform vulnerability assessments against intentionally vulnerable systems including Metasploitable2 and Windows virtual machines in a controlled educational environment.

---

# Objectives

The primary objectives of using OpenVAS in this lab environment were:

- Perform vulnerability assessments against lab systems
- Identify exposed services and software vulnerabilities
- Analyze CVSS severity ratings
- Generate vulnerability reports
- Understand remediation recommendations
- Practice vulnerability management workflows
- Correlate findings with network reconnaissance data

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux / OpenVAS VM |
| Hypervisor | VirtualBox |
| Tool | OpenVAS / GVM |
| Primary Targets | Metasploitable2, Windows 7, Windows 10 |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Features

- Vulnerability scanning
- CVE detection
- Service enumeration
- Web interface management
- Report generation
- Severity classification
- Remediation recommendations
- Credentialed and non-credentialed scanning

---

# Installation

## Verify Installation

```bash
gvm-check-setup
```

## Install OpenVAS / GVM

```bash
sudo apt update
sudo apt install gvm -y
```

---

# Initial Setup

## Initialize GVM

```bash
sudo gvm-setup
```

This process:
- downloads vulnerability feeds
- configures services
- creates administrator credentials

---

# Start OpenVAS Services

## Start GVM Services

```bash
sudo gvm-start
```

---

# Verify Services

## Check GVM Status

```bash
gvm-check-setup
```

---

# Access Web Interface

OpenVAS is managed through the Greenbone Security Assistant web interface.

## Access URL

```text
https://127.0.0.1:9392
```

Example lab access:

```text
https://10.0.2.7:9392
```

---

# Create Target

Targets define systems to scan.

Example targets:
- 10.0.2.4 (Metasploitable2)
- 10.0.2.5 (Windows 7)
- 10.0.2.6 (Windows 10)

---

# Scan Configurations

Common scan configurations:
- Full and Fast
- Discovery
- Host Discovery
- System Discovery

---

# Launch Vulnerability Scan

Typical workflow:
1. Create target
2. Create task
3. Select scan configuration
4. Start scan
5. Review findings

---

# Vulnerability Analysis

OpenVAS findings include:
- CVE identifiers
- CVSS severity ratings
- affected services
- remediation guidance
- vulnerability descriptions

Severity levels:
- Low
- Medium
- High
- Critical

---

# Export Reports

Reports can be exported in:
- PDF
- HTML
- XML
- CSV

---

# Related Labs

- OpenVAS Vulnerability Scanning
- Network Reconnaissance
- Nmap Enumeration
- Vulnerability Analysis
- Service Enumeration

---

# Recommended Screenshots

Recommended screenshots for documentation:
- OpenVAS dashboard
- target configuration
- active scan tasks
- vulnerability findings
- CVSS severity ratings
- exported reports
- scan completion status

---

# Common Commands

| Command | Purpose |
|---|---|
| gvm-setup | Initialize OpenVAS |
| gvm-start | Start services |
| gvm-stop | Stop services |
| gvm-check-setup | Verify installation |
| greenbone-feed-sync | Update feeds |

---

# Feed Updates

OpenVAS uses vulnerability feeds for updated CVE information.

## Update Vulnerability Feeds

```bash
sudo greenbone-feed-sync
```

---

# Common Troubleshooting

## Scanner Not Running

### Symptoms
- scan tasks remain queued
- scanner unavailable
- web interface errors

### Resolution

```bash
sudo gvm-start
```

---

## Feed Synchronization Failure

### Resolution
- verify internet connectivity
- rerun feed synchronization
- confirm sufficient disk space

---

## Web Interface Unavailable

### Resolution
- verify services are running
- confirm port 9392 accessibility
- restart GVM services

---

# Lessons Learned

- Vulnerability scanners help identify exposed attack surfaces.
- Severity ratings assist with remediation prioritization.
- Accurate service enumeration improves vulnerability detection.
- Vulnerability scanning should be combined with manual analysis and validation.

---

# Ethical Use Notice

All vulnerability scanning activities documented in this repository were conducted in a controlled educational environment for cybersecurity training purposes only.

Do not perform unauthorized vulnerability scanning or assessments against systems without explicit authorization.