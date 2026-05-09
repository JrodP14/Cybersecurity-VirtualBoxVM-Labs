# Scan Types

## Overview

This document covers common Nmap scan types used during reconnaissance and enumeration activities within the isolated lab environment.

Different scan types provide varying levels of:
- stealth
- speed
- detail
- reliability

---

# TCP SYN Scan

## Stealth Scan

```bash
sudo nmap -sS 10.0.2.4
```

Purpose:
- stealthy TCP scanning

---

# TCP Connect Scan

## Full TCP Connection

```bash
nmap -sT 10.0.2.4
```

Purpose:
- establish full TCP connection

---

# UDP Scan

## UDP Service Enumeration

```bash
sudo nmap -sU 10.0.2.4
```

Purpose:
- identify UDP services

---

# Service Version Scan

## Detect Service Versions

```bash
nmap -sV 10.0.2.4
```

Purpose:
- identify application versions

---

# Aggressive Scan

## Full Enumeration Scan

```bash
sudo nmap -A 10.0.2.4
```

Purpose:
- OS detection
- version detection
- script scanning
- traceroute

---

# Operating System Detection

## OS Fingerprinting

```bash
sudo nmap -O 10.0.2.4
```

Purpose:
- identify operating system

---

# Common Open Ports

| Port | Service |
|---|---|
| 21 | FTP |
| 22 | SSH |
| 23 | Telnet |
| 80 | HTTP |
| 139 | NetBIOS |
| 445 | SMB |

---

# Verification Tasks

- performed SYN scans
- performed TCP scans
- enumerated UDP services
- identified operating systems
- analyzed exposed ports

---

# Recommended Screenshots

- SYN scan results
- service version scans
- OS detection output
- aggressive scans
- UDP scan results

---

# Notes

- Different scan types produce different detection footprints.
- UDP scans are slower than TCP scans.
- Aggressive scans provide extensive enumeration detail.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.