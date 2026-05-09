# Traffic Investigation

## Overview

This document covers traffic-investigation workflows used to analyze suspicious or interesting network activity within the isolated lab environment using Wireshark.

Traffic investigations support:
- incident response
- malware analysis
- anomaly detection
- troubleshooting
- network visibility

---

# Investigation Workflow

Typical workflow:
1. Capture traffic
2. Apply filters
3. Identify suspicious traffic
4. Analyze protocols
5. Inspect packet details
6. Reconstruct conversations

---

# Common Indicators Reviewed

- repeated DNS requests
- unusual ports
- malformed packets
- unexpected protocols
- suspicious external connections

---

# Common Filters

## DNS Investigation

```text
dns
```

---

## HTTP Investigation

```text
http
```

---

## TCP Investigation

```text
tcp
```

---

# Packet Analysis

Investigated:
- source IPs
- destination IPs
- ports
- payloads
- packet timing

---

# Verification Tasks

- identified traffic patterns
- investigated protocols
- analyzed suspicious traffic
- reviewed packet payloads

---

# Recommended Screenshots

- suspicious traffic
- filtered packets
- packet details
- protocol analysis
- traffic conversations

---

# Notes

- Traffic investigations improve detection capabilities.
- Packet visibility supports forensic analysis.
- Unexpected traffic may indicate misconfigurations or malicious activity.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.