# Installed Tools — OpenVAS VM

## Overview

This document tracks the vulnerability management tools, supporting utilities, and networking tools installed on the OpenVAS virtual machine used within the NCSA Cybersecurity Home Lab environment.

The OpenVAS VM functions as the dedicated vulnerability scanning and assessment platform within the isolated lab network.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Linux |
| VM Role | Vulnerability Scanner |
| IP Address | 10.0.2.7 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |

---

# Vulnerability Management Tools

| Tool | Purpose |
|---|---|
| OpenVAS / GVM | Vulnerability scanning |
| Greenbone Security Assistant | Web management interface |
| gvmd | Vulnerability management daemon |
| greenbone-feed-sync | Vulnerability feed updates |

---

# Network Reconnaissance Tools

| Tool | Purpose |
|---|---|
| Nmap | Service enumeration and host discovery |
| ping | Connectivity testing |
| traceroute | Network path analysis |

---

# Linux Administration Utilities

| Utility | Purpose |
|---|---|
| ip a | Interface management |
| ifconfig | Network configuration |
| netstat | Network connection analysis |
| systemctl | Service management |
| nano | File editing |
| grep | Text searching |
| ps | Process monitoring |

---

# Reporting & Export Features

| Export Type | Purpose |
|---|---|
| PDF | Vulnerability reports |
| CSV | Data exports |
| XML | Structured scan data |

---

# Primary Scan Targets

| System | IP Address |
|---|---|
| Metasploitable2 | 10.0.2.4 |
| Windows 7 VM | 10.0.2.5 |
| Windows 10 VM | 10.0.2.6 |

---

# Verification Commands

## Verify GVM Installation

```bash
gvm-check-setup
```

---

## Start Services

```bash
sudo gvm-start
```

---

## Update Vulnerability Feeds

```bash
sudo greenbone-feed-sync
```

---

# Common Scan Configurations

| Scan Type | Purpose |
|---|---|
| Full and Fast | Standard vulnerability assessment |
| Discovery | Service and host discovery |
| Host Discovery | Identify active hosts |
| System Discovery | Enumerate services |

---

# Planned Future Additions

Future planned additions:
- Wazuh Agent
- Zeek
- Suricata
- Splunk Forwarder

---

# Notes

- Vulnerability feeds must remain updated for accurate scan results.
- Scans are performed only against authorized lab systems.
- Large assessments may require additional system resources.

---

# Ethical Use Notice

This OpenVAS virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.