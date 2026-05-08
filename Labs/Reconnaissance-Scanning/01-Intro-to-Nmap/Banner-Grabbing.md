# Banner Grabbing

## Overview

This document covers banner grabbing techniques used to identify running services, software versions, and exposed applications within the isolated lab environment.

Banner grabbing assists with:
- service identification
- version detection
- vulnerability research
- reconnaissance operations

---

# Netcat Banner Grabbing

## FTP Banner

```bash
nc 10.0.2.4 21
```

Purpose:
- capture FTP service banner

---

## HTTP Banner

```bash
nc 10.0.2.4 80
```

Purpose:
- identify web server information

---

# Telnet Banner Grabbing

## Connect to Service

```bash
telnet 10.0.2.4 23
```

Purpose:
- identify Telnet service information

---

# Nmap Banner Script

## NSE Banner Detection

```bash
nmap --script banner 10.0.2.4
```

Purpose:
- automate banner identification

---

# Common Banner Information

Banner data may reveal:
- service versions
- operating systems
- server software
- application frameworks

---

# Common Identified Services

| Service | Example |
|---|---|
| FTP | vsFTPd |
| HTTP | Apache |
| SSH | OpenSSH |
| SMB | Samba |

---

# Verification Tasks

- captured service banners
- identified application versions
- analyzed exposed services
- compared banner outputs

---

# Recommended Screenshots

- FTP banner output
- HTTP banner output
- Telnet connection
- Nmap banner script results
- identified service versions

---

# Notes

- Banner grabbing improves reconnaissance accuracy.
- Some services intentionally suppress version information.
- Banner enumeration may reveal outdated or vulnerable software.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.