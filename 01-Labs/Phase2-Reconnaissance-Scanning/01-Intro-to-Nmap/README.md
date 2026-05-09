# Introduction to Nmap

## Overview

This lab focused on network reconnaissance, host discovery, port scanning, service enumeration, and banner identification using Nmap within the Kali Linux virtual machine environment.

The purpose of this lab was to develop foundational reconnaissance and enumeration skills commonly used in cybersecurity operations, penetration testing, vulnerability assessments, and defensive network analysis.

---

# Lab Objectives

The primary objectives of this lab were:

- Discover active hosts on the network
- Identify open ports and services
- Perform service fingerprinting
- Conduct basic banner grabbing
- Understand common Nmap scan types
- Analyze network attack surfaces
- Practice reconnaissance workflows

---

# Lab Environment

| Component | Details |
|---|---|
| Kali Linux | 10.0.2.3 |
| Metasploitable2 | 10.0.2.4 |
| Windows 7 VM | 10.0.2.5 |
| Windows 10 VM | 10.0.2.6 |
| OpenVAS VM | 10.0.2.7 |

---

# Skills Developed

- host discovery
- network enumeration
- service detection
- port scanning
- banner grabbing
- reconnaissance workflows
- attack surface analysis

---

# Topics Covered

- Host Discovery
- Scan Types
- Service Fingerprinting
- Banner Grabbing
- Service Enumeration
- Port Analysis

---

# Common Tools Used

| Tool | Purpose |
|---|---|
| Nmap | Network scanning |
| Netcat | Banner grabbing |
| Telnet | Service testing |
| ping | Connectivity testing |

---

# Common Commands

## Host Discovery

```bash
nmap -sn 10.0.2.0/24
```

---

## Service Enumeration

```bash
nmap -sV 10.0.2.4
```

---

## Aggressive Scan

```bash
sudo nmap -A 10.0.2.4
```

---

# Verification Tasks

The following tasks were completed during this lab:

- discovered active hosts
- identified open ports
- enumerated services
- performed service fingerprinting
- captured service banners
- analyzed exposed services

---

# Recommended Screenshots

Recommended screenshots for documentation:
- ping sweep results
- service version scans
- aggressive scan output
- banner grabbing examples
- metasploitable enumeration
- open ports output

---

# Related Labs

- OpenVAS Vulnerability Scanning
- Wireshark Traffic Analysis
- Metasploit Exploitation
- Netcat Usage
- Ettercap Analysis

---

# Notes

- Reconnaissance is a foundational cybersecurity skill.
- Enumeration improves vulnerability identification accuracy.
- Banner grabbing assists with version identification.
- Nmap remains one of the most widely used security tools.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.