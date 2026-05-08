# Wireshark Traffic Analysis

## Overview

This lab focused on packet capturing, protocol analysis, traffic filtering, and network traffic investigation using Wireshark within the isolated cybersecurity home lab environment.

The purpose of this lab was to develop foundational packet-analysis and traffic-investigation skills commonly used in:
- SOC operations
- incident response
- DFIR investigations
- network troubleshooting
- malware analysis
- protocol analysis

---

# Lab Objectives

The primary objectives of this lab were:

- Capture live network traffic
- Analyze common network protocols
- Apply Wireshark display filters
- Inspect packet details
- Reconstruct TCP conversations
- Investigate network traffic patterns
- Understand protocol communications

---

# Lab Environment

| System | IP Address |
|---|---|
| Kali Linux | 10.0.2.3 |
| Metasploitable2 | 10.0.2.4 |
| Windows 7 VM | 10.0.2.5 |
| Windows 10 VM | 10.0.2.6 |
| OpenVAS VM | 10.0.2.7 |

---

# Skills Developed

- packet capturing
- traffic filtering
- protocol analysis
- TCP stream analysis
- DNS analysis
- HTTP inspection
- network troubleshooting

---

# Topics Covered

- Packet Capturing
- Display Filters
- Protocol Analysis
- Traffic Investigation
- TCP Stream Analysis
- Packet Inspection

---

# Common Protocols Analyzed

| Protocol | Purpose |
|---|---|
| TCP | Reliable transport |
| UDP | Connectionless transport |
| DNS | Name resolution |
| HTTP | Web traffic |
| ICMP | Connectivity testing |
| ARP | Address resolution |

---

# Common Display Filters

## DNS Traffic

```text
dns
```

---

## HTTP Traffic

```text
http
```

---

## TCP Traffic

```text
tcp
```

---

## Filter by IP Address

```text
ip.addr == 10.0.2.4
```

---

# Verification Tasks

The following tasks were completed during this lab:

- captured live traffic
- filtered protocols
- analyzed packet details
- reconstructed TCP streams
- investigated DNS traffic
- inspected HTTP requests
- reviewed packet hierarchies

---

# Recommended Screenshots

Recommended screenshots for documentation:
- packet capture interface
- DNS filtering
- HTTP traffic
- packet details pane
- protocol hierarchy
- Follow TCP Stream
- filtered traffic output

---

# Related Labs

- Intro to Nmap
- OpenVAS Vulnerability Scanning
- Netcat Usage
- Ettercap Analysis
- Metasploit Exploitation

---

# Notes

- Packet analysis is critical for cybersecurity investigations.
- Wireshark improves visibility into network communications.
- Display filters improve investigation efficiency.
- Packet captures may contain sensitive information.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.