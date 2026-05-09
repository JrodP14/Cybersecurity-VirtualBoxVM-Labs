# Protocol Analysis

## Overview

This document covers protocol inspection and packet analysis workflows performed using Wireshark within the isolated lab environment.

Protocol analysis supports:
- traffic visibility
- troubleshooting
- malware investigations
- incident response
- service identification

---

# Protocols Analyzed

| Protocol | Purpose |
|---|---|
| TCP | Reliable transport |
| UDP | Connectionless communication |
| DNS | Name resolution |
| HTTP | Web communication |
| ICMP | Connectivity testing |
| ARP | Address resolution |

---

# Packet Structure

Wireshark displays:
- packet list pane
- packet details pane
- raw packet bytes

---

# DNS Analysis

## Example Filter

```text
dns
```

Purpose:
- inspect DNS requests and responses

---

# HTTP Analysis

## Example Filter

```text
http
```

Purpose:
- inspect HTTP requests and responses

---

# TCP Analysis

## Example Filter

```text
tcp
```

Purpose:
- analyze TCP sessions

---

# ICMP Analysis

## Example Filter

```text
icmp
```

Purpose:
- inspect ping traffic

---

# Verification Tasks

- inspected packet headers
- analyzed protocols
- reviewed packet hierarchies
- identified packet structures

---

# Recommended Screenshots

- DNS packet analysis
- HTTP requests
- TCP packets
- packet details pane
- protocol hierarchy

---

# Notes

- Protocol analysis improves network visibility.
- Packet headers reveal communication details.
- Protocol understanding supports incident investigations.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.