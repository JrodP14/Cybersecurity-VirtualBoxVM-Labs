# Lab Roadmap

## Overview

This document tracks completed, in-progress, and planned cybersecurity labs within the NCSA Cybersecurity Home Lab environment.

The purpose of this roadmap is to:
- organize lab progression
- track technical skill development
- document completed objectives
- identify future learning goals
- support portfolio development

---

# Current Lab Environment   

| System | IP Address | Role |   
|---|---|---| 
| Kali Linux | 10.0.2.3 | Attacker / Security Testing |   
| Metasploitable2 | 10.0.2.4 | Vulnerable Target |     
| Windows 7 | 10.0.2.5 | Malware / RAT Analysis |   
| Windows 10 | 10.0.2.6 | Endpoint Analysis |   
| OpenVAS VM | 10.0.2.7 | Vulnerability Scanning |   

---

# Phase 1 — Linux Fundamentals

## Objective

Develop foundational Linux skills required for cybersecurity operations, navigation, permissions management, and command-line tooling.

| Lab | Status |
|---|---|   
| Basic Maintenance & Informational Commands | Complete |   
| Navigation & File Management | Complete |   
| File Permissions & Process Management | Complete |   
| grep & cut Usage | Complete |   

### Skills Developed

- Linux navigation
- file management
- permissions management
- process analysis
- text processing
- command-line operations

---

# Phase 2 — Network Reconnaissance & Scanning

## Objective

Learn host discovery, service enumeration, operating system detection, and vulnerability reconnaissance.

| Lab | Status |   
|---|---|   
| Introduction to Nmap | Complete |   
| OpenVAS Vulnerability Scanning | Complete |   
| Wireshark Traffic Analysis | Complete | 
| OSINT Reconnaissance | Complete |
| Python Port Scanner | Complete |

### Skills Developed

- Network scanning
- Host discovery
- Service enumeration
- Packet analysis
- Vulnerability assessment
- Protocol analysis
- OSINT collection
- Python socket programming
- Reconnaissance automation

---

# Phase 3 — Exploitation & Traffic Manipulation

## Objective

Understand exploitation workflows, post-exploitation activities, and network interception techniques.

| Lab | Status |   
|---|---|   
| Metasploit to Metasploitable2 | Complete |   
| RAT Observation & Suspicious Processes | Complete |   
| Ettercap MITM & DNS Poisoning | Complete |   

### Skills Developed

- exploitation workflows
- Meterpreter usage
- shell interaction
- process analysis
- MITM attacks
- DNS poisoning
- traffic interception

---

# Phase 4 — Password Security & Hash Cracking

## Objective

Understand password hashing, password auditing, and password recovery methodologies.

| Lab | Status |   
|---|---|   
| Hashing Basics | Complete |   
| Hashcat Password Cracking | Complete |   

### Skills Developed

- hashing algorithms
- password auditing
- dictionary attacks
- brute-force attacks
- password analysis

---

# Phase 5 — Wireless Security

## Objective

Learn wireless reconnaissance, WPA/WPA2 handshake capture, and wireless password auditing.

| Lab | Status |   
|---|---|   
| Aircrack-ng Wireless Attacks | Complete |   

### Skills Developed

- monitor mode
- wireless reconnaissance
- WPA handshake capture
- deauthentication attacks
- wireless password auditing

---

# Phase 6 — Digital Forensics & Recovery

## Objective

Learn foundational digital forensics techniques including file signature analysis, disk image examination, manual file carving, and automated forensic recovery workflows.

| Lab | Status |   
|---|---|   
| File Carving & Data Recovery | Complete |   

### Skills Developed

- file carving
- disk analysis
- forensic recovery
- file signatures
- offset analysis
- Scalpel usage

---

# Current Tools Used

| Tool | Purpose |   
|---|---|   
| Nmap | Network reconnaissance |   
| Metasploit Framework | Exploitation |   
| Wireshark | Packet analysis |   
| Hashcat | Password auditing |   
| Aircrack-ng | Wireless security testing |   
| Ettercap | MITM attacks |   
| OpenVAS | Vulnerability scanning |   
| Netcat | Network communication |   
| Sysinternals Suite | Windows process analysis |
| Shodan | Internet asset reconnaissance |
| Sublist3r | Subdomain enumeration |
| theHarvester | OSINT data collection | 
| Scalpel | File carving & forensic recovery |   

---

# Current Skill Areas

## Offensive Security

- reconnaissance
- exploitation
- password auditing
- wireless attacks
- MITM attacks

---

## Defensive Security

- packet analysis
- process monitoring
- vulnerability analysis
- suspicious activity identification
- digital forensics
- forensic recovery
- disk image analysis

---

## Systems & Infrastructure

- Linux administration
- Windows VM management
- virtual networking
- lab environment configuration

---

# Planned Future Labs

## Blue Team & SOC Operations

| Planned Lab | Status |   
|---|---|   
| Wazuh SIEM Deployment | Planned |   
| Security Onion Setup | Planned |   
| Splunk Log Analysis | Planned |   
| Sysmon Configuration | Planned |   
| Windows Event Log Analysis | Planned |   

---

## Active Directory & Enterprise Security

| Planned Lab | Status |   
|---|---|   
| Active Directory Deployment | Planned |   
| Domain Controller Setup | Planned |   
| Kerberos Attacks | Planned |   
| BloodHound Enumeration | Planned |   
| Group Policy Analysis | Planned |   

---

## Malware Analysis & Forensics

| Planned Lab | Status |   
|---|---|   
| REMnux Setup | Planned |   
| Volatility Memory Analysis | Planned |   
| Malware Traffic Analysis | Planned |   
| YARA Rule Development | Planned |   
| PE File Analysis | Planned |   

---

## Detection Engineering

| Planned Lab | Status |   
|---|---|   
| Sigma Rule Development | Planned |   
| Suricata Rule Analysis | Planned |   
| Zeek Network Monitoring | Planned |   
| Detection Validation | Planned |   

---

# Long-Term Goals

- Develop enterprise cybersecurity skills
- Build SOC analyst capabilities
- Improve detection and analysis workflows
- Expand malware analysis knowledge
- Develop blue team operational experience
- Build professional cybersecurity portfolio projects
- Forensic recovery results

---

# Repository Documentation Goals

The following items are maintained throughout the repository:

- screenshots
- packet captures
- scan results
- vulnerability findings
- troubleshooting documentation
- command references
- technical walkthroughs

---

# Notes

- All labs are performed in isolated virtual lab environments.
- Vulnerable systems are intentionally configured for educational testing.
- No unauthorized systems are targeted.
- Lab documentation is continuously updated as skills and tooling evolve.

---

# Ethical Use Notice

All activities documented within this repository are conducted strictly within authorized educational lab environments for cybersecurity training and research purposes.

Unauthorized scanning, exploitation, interception, or credential attacks against systems without explicit authorization may violate laws and organizational policies.
