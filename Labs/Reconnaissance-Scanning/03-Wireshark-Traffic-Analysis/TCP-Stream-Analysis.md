# TCP Stream Analysis

## Overview

This document covers TCP stream reconstruction and session analysis performed using Wireshark within the isolated lab environment.

TCP stream analysis supports:
- HTTP analysis
- session reconstruction
- payload inspection
- troubleshooting
- malware investigations

---

# Follow TCP Stream

## Workflow

1. Select TCP packet
2. Right-click packet
3. Select:
   ```text
   Follow → TCP Stream
   ```

Purpose:
- reconstruct full TCP conversation

---

# Common Analysis Areas

- HTTP requests
- HTTP responses
- session contents
- transferred data
- plaintext communications

---

# Example Traffic

## HTTP Requests

```text
GET / HTTP/1.1
```

---

## TCP Filter

```text
tcp
```

Purpose:
- isolate TCP communications

---

# Session Analysis

Reviewed:
- client requests
- server responses
- payload contents
- session timing

---

# Verification Tasks

- followed TCP streams
- reconstructed conversations
- analyzed HTTP sessions
- inspected transferred data

---

# Recommended Screenshots

- Follow TCP Stream window
- HTTP requests
- session reconstruction
- TCP conversations

---

# Notes

- TCP stream reconstruction improves visibility into communications.
- Plaintext protocols expose readable data.
- Session analysis supports troubleshooting and investigations.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.