# Installed Tools — Windows 7 VM

## Overview

This document tracks the tools, utilities, and analysis software installed on the Windows 7 virtual machine used within the NCSA Cybersecurity Home Lab environment.

The Windows 7 VM functions as a Windows analysis target for:
- RAT observation
- process analysis
- persistence investigation
- network monitoring
- malware behavior analysis

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Windows 7 |
| VM Role | Malware / RAT Analysis |
| IP Address | 10.0.2.5 |
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
| Task Manager | Basic process management |
| Event Viewer | Windows event analysis |
| netstat | Network connection analysis |
| ipconfig | Network configuration |
| ping | Connectivity testing |

---

# Browser Utilities

| Tool | Purpose |
|---|---|
| Firefox Developer Tools | Web traffic inspection |
| Chrome Developer Tools | HTTP analysis |

---

# Networking & Analysis Tools

| Tool | Purpose |
|---|---|
| Wireshark | Packet analysis |
| Netcat | Connectivity testing and shell access |

---

# Common Analysis Areas

| Analysis Type | Tools Used |
|---|---|
| Process Investigation | Process Explorer |
| Persistence Analysis | Autoruns |
| Network Monitoring | TCPView |
| Event Analysis | Event Viewer |
| Packet Capture | Wireshark |

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

## Suspicious Process Analysis

Investigate:
- unusual parent-child processes
- unsigned executables
- abnormal command-line arguments

---

## Persistence Analysis

Investigate:
- Run registry keys
- scheduled tasks
- startup folders
- services

---

## Network Monitoring

Investigate:
- outbound connections
- listening ports
- suspicious remote IPs

---

# Planned Future Additions

Future planned additions:
- Sysmon
- Wazuh Agent
- Velociraptor
- Splunk Universal Forwarder

---

# Notes

- The Windows 7 VM is intentionally used for educational security analysis.
- Simulated malicious behavior is isolated within the lab environment.
- Additional monitoring tools may be added as the lab expands.

---

# Ethical Use Notice

This Windows 7 virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.