# Installed Tools — Windows 10 VM

## Overview

This document tracks the tools, utilities, and analysis software installed on the Windows 10 virtual machine used within the NCSA Cybersecurity Home Lab environment.

The Windows 10 VM functions as a modern Windows endpoint used for:
- endpoint analysis
- traffic observation
- packet analysis
- process monitoring
- Windows security testing

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Windows 10 |
| VM Role | Endpoint Analysis |
| IP Address | 10.0.2.6 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |

---

# Sysinternals Tools

| Tool | Purpose |
|---|---|
| Process Explorer | Advanced process analysis |
| Autoruns | Persistence analysis |
| TCPView | Network connection monitoring |
| Process Monitor | Real-time event monitoring |
| Sigcheck | File signature verification |

---

# Windows Utilities

| Utility | Purpose |
|---|---|
| Task Manager | Process management |
| Event Viewer | Event log analysis |
| Windows Defender | Endpoint protection |
| netstat | Network connection analysis |
| ipconfig | Network configuration |

---

# Packet Analysis Tools

| Tool | Purpose |
|---|---|
| Wireshark | Packet capture and protocol analysis |
| TCPView | Connection monitoring |

---

# Networking Utilities

| Utility | Purpose |
|---|---|
| ping | Connectivity testing |
| tracert | Route analysis |
| nslookup | DNS resolution |
| PowerShell Networking Commands | Network testing |

---

# Browser Utilities

| Tool | Purpose |
|---|---|
| Firefox Developer Tools | Web traffic inspection |
| Chrome Developer Tools | HTTP analysis |

---

# Common Analysis Areas

| Analysis Type | Tools Used |
|---|---|
| Endpoint Monitoring | Task Manager |
| Process Investigation | Process Explorer |
| Packet Analysis | Wireshark |
| Network Monitoring | TCPView |
| Event Analysis | Event Viewer |

---

# Verification Commands

## Verify IP Address

```powershell
ipconfig
```

---

## View Running Processes

```powershell
tasklist
```

---

## View Active Connections

```powershell
netstat -ano
```

---

# Common Investigation Activities

## Process Analysis

Investigate:
- suspicious processes
- unusual parent-child relationships
- unsigned executables

---

## Network Monitoring

Investigate:
- outbound connections
- listening ports
- suspicious traffic patterns

---

## Packet Analysis

Analyze:
- DNS traffic
- HTTP requests
- TCP sessions
- endpoint communications

---

# Planned Future Additions

Future planned additions:
- Sysmon
- Wazuh Agent
- Velociraptor
- Splunk Universal Forwarder

---

# Notes

- The Windows 10 VM is used strictly within isolated educational lab environments.
- Additional monitoring and defensive tooling may be added as the lab expands.
- Security testing occurs only against authorized systems.

---

# Ethical Use Notice

This Windows 10 virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.