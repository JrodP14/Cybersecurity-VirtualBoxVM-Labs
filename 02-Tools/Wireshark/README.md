# Wireshark

## Overview

Wireshark is a network protocol analyzer used for packet capture, traffic inspection, protocol analysis, and network troubleshooting.

This tool was used within the NCSA Cybersecurity Home Lab environment to capture and analyze network traffic generated during reconnaissance, exploitation, MITM attacks, DNS poisoning, and general network communication between virtual machines.

---

# Objectives

The primary objectives of using Wireshark in this lab environment were:

- Capture and inspect network traffic
- Analyze network protocols
- Observe TCP/IP communications
- Investigate DNS traffic
- Analyze HTTP requests and responses
- Observe MITM attack traffic
- Identify suspicious network behavior
- Practice packet-level traffic analysis

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Tool | Wireshark |
| Primary Targets | Metasploitable2, Windows 7, Windows 10 |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Features

- Packet capture
- Protocol analysis
- Traffic filtering
- Stream reconstruction
- DNS analysis
- HTTP analysis
- TCP session analysis
- Packet export

---

# Installation

## Verify Existing Installation

```bash
wireshark --version
```

## Install on Kali Linux

```bash
sudo apt update
sudo apt install wireshark
```

---

# Launch Wireshark

## Start Wireshark

```bash
wireshark
```

---

# Packet Capture

Packet captures were performed against lab traffic generated between virtual machines.

## Common Interfaces

| Interface | Purpose |
|---|---|
| eth0 | Wired network traffic |
| wlan0 | Wireless traffic |
| wlan0mon | Wireless monitor mode traffic |

---

# Start Packet Capture

1. Select interface
2. Start capture
3. Generate traffic
4. Apply filters
5. Analyze packets

---

# Display Filters

Display filters isolate specific traffic types for analysis.

## HTTP Traffic

```text
http
```

## DNS Traffic

```text
dns
```

## TCP Traffic

```text
tcp
```

## Filter by IP Address

```text
ip.addr == 10.0.2.4
```

## Filter by Port

```text
tcp.port == 80
```

---

# Capture Filters

Capture filters reduce traffic during packet collection.

## Capture HTTP Traffic

```text
port 80
```

## Capture DNS Traffic

```text
port 53
```

---

# TCP Stream Analysis

TCP stream reconstruction allows review of communication sessions.

## Follow TCP Stream

Wireshark Navigation:
- Right-click packet
- Follow
- TCP Stream

---

# DNS Analysis

DNS analysis was used during:
- DNS poisoning demonstrations
- MITM attacks
- hostname resolution analysis

Key observations:
- DNS requests
- DNS responses
- spoofed DNS records

---

# HTTP Analysis

HTTP traffic analysis included:
- GET requests
- POST requests
- headers
- user agents
- unencrypted traffic visibility

---

# Packet Export

Packet captures can be exported for:
- forensic analysis
- reporting
- offline review

Common formats:
- `.pcap`
- `.pcapng`

---

# Related Labs

- Wireshark Traffic Analysis
- DNS Poisoning
- MITM Attacks
- Network Reconnaissance
- Packet Capture Analysis

---

# Recommended Screenshots

Recommended screenshots for documentation:
- packet captures
- DNS traffic analysis
- HTTP request analysis
- TCP stream reconstruction
- MITM attack traffic
- packet filtering examples
- suspicious traffic indicators

---

# Common Filters

| Filter | Purpose |
|---|---|
| http | HTTP traffic |
| dns | DNS traffic |
| tcp | TCP packets |
| udp | UDP packets |
| ip.addr == x.x.x.x | Filter by IP |
| tcp.port == 80 | Filter by port |

---

# Common Troubleshooting

## No Packets Captured

### Possible Causes
- incorrect interface selected
- no traffic generated
- permission issues

### Resolution
- verify active interface
- generate network traffic
- run with elevated privileges if necessary

---

## Excessive Packet Volume

### Resolution
- apply display filters
- use capture filters
- narrow capture scope

---

## Missing DNS Traffic

### Resolution
- verify DNS queries are generated
- confirm traffic is not encrypted
- inspect correct interface

---

# Lessons Learned

- Packet analysis provides visibility into network communications.
- Unencrypted protocols expose sensitive information.
- Filtering improves analysis efficiency.
- Packet captures are valuable for forensic investigations and troubleshooting.

---

# Ethical Use Notice

All packet captures and traffic analysis documented in this repository were conducted in a controlled educational environment for cybersecurity training purposes only.

Do not capture or inspect network traffic without proper authorization.