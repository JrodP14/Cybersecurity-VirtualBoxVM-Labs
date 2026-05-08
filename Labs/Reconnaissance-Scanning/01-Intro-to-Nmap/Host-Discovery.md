# Host Discovery

## Overview

This document covers host discovery techniques used to identify active systems within the isolated lab network using Nmap and related tools.

Host discovery is commonly used during:
- penetration testing
- vulnerability assessments
- network mapping
- reconnaissance operations

---

# Ping Sweep

## Discover Live Hosts

```bash
nmap -sn 10.0.2.0/24
```

Purpose:
- identify active systems on subnet

---

# ARP Discovery

## ARP-Based Host Discovery

```bash
sudo netdiscover
```

Purpose:
- discover hosts using ARP requests

---

# Ping Testing

## Verify Connectivity

```bash
ping 10.0.2.4
```

Purpose:
- confirm target accessibility

---

# Identified Lab Systems

| System | IP Address |
|---|---|
| Kali Linux | 10.0.2.3 |
| Metasploitable2 | 10.0.2.4 |
| Windows 7 VM | 10.0.2.5 |
| Windows 10 VM | 10.0.2.6 |
| OpenVAS VM | 10.0.2.7 |

---

# Verification Tasks

- performed ping sweeps
- identified active hosts
- verified connectivity
- mapped lab subnet

---

# Recommended Screenshots

- ping sweep output
- netdiscover results
- live host identification
- subnet discovery

---

# Notes

- Host discovery identifies systems before deeper enumeration.
- ARP discovery is highly effective on local networks.
- ICMP filtering may impact ping-based discovery.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.