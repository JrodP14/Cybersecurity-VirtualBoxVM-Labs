# Packet Capturing

## Overview

This document covers packet-capturing workflows, interface selection, traffic collection, and capture procedures performed using Wireshark within the isolated lab environment.

Packet capturing is essential for:
- traffic analysis
- incident response
- troubleshooting
- malware analysis
- protocol investigation

---

# Capture Interfaces

## Common Interfaces

| Interface | Purpose |
|---|---|
| eth0 | VM network traffic |
| wlan0 | Wireless traffic |
| NAT Network Adapter | Internal lab communication |

---

# Starting Packet Capture

## Launch Wireshark

```bash
wireshark
```

---

# Begin Capture

Steps:
1. Select network interface
2. Start capture
3. Generate traffic
4. Stop capture
5. Analyze packets

---

# Common Traffic Generation

## Ping Test

```bash
ping 10.0.2.4
```

---

## DNS Traffic

```bash
nslookup google.com
```

---

## HTTP Traffic

Access:
```text
http://10.0.2.4
```

---

# Capture Best Practices

- capture only required traffic
- limit unnecessary background traffic
- save captures regularly
- document traffic sources

---

# Verification Tasks

- selected capture interfaces
- captured live traffic
- generated network traffic
- saved packet captures

---

# Recommended Screenshots

- interface selection
- active packet capture
- generated traffic
- saved capture files

---

# Notes

- Packet captures may contain sensitive data.
- Interface selection impacts visibility.
- Captures should remain within authorized environments.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.