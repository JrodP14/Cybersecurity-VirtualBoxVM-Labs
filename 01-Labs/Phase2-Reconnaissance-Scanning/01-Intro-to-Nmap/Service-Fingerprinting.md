# Service Fingerprinting

## Overview

This document covers service fingerprinting and service enumeration techniques used to identify running applications, versions, and exposed services on target systems.

Service fingerprinting improves:
- vulnerability identification
- attack surface analysis
- service verification
- reconnaissance accuracy

---

# Version Detection

## Detect Running Services

```bash
nmap -sV 10.0.2.4
```

Purpose:
- identify service versions

---

# Aggressive Service Enumeration

## Enhanced Fingerprinting

```bash
sudo nmap -A 10.0.2.4
```

Purpose:
- identify services
- perform OS detection
- execute NSE scripts

---

# Operating System Detection

## Identify Operating System

```bash
sudo nmap -O 10.0.2.4
```

Purpose:
- fingerprint operating system

---

# NSE Service Scripts

## Banner Enumeration

```bash
nmap --script banner 10.0.2.4
```

Purpose:
- identify service banners

---

# Common Enumerated Services

| Service | Port |
|---|---|
| FTP | 21 |
| SSH | 22 |
| Telnet | 23 |
| HTTP | 80 |
| SMB | 445 |
| MySQL | 3306 |

---

# Verification Tasks

- identified service versions
- fingerprinted operating systems
- enumerated exposed services
- identified application banners

---

# Recommended Screenshots

- service version scans
- OS detection
- NSE script results
- application identification
- open service enumeration

---

# Notes

- Service fingerprinting supports vulnerability research.
- Accurate version detection improves exploitation reliability.
- NSE scripts expand reconnaissance capabilities.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.