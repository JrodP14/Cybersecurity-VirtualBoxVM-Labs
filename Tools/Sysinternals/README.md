# Sysinternals Suite

## Overview

Sysinternals Suite is a collection of Windows system utilities developed by Microsoft for advanced system monitoring, troubleshooting, process analysis, persistence analysis, and forensic investigation.

This toolset was used within the NCSA Cybersecurity Home Lab environment to analyze suspicious processes, identify persistence mechanisms, monitor network activity, and investigate simulated malware and remote access tool (RAT) behavior on Windows virtual machines.

---

# Objectives

The primary objectives of using Sysinternals Suite in this lab environment were:

- Analyze suspicious processes
- Monitor system activity
- Identify persistence mechanisms
- Investigate network connections
- Examine startup entries
- Observe malware-like behavior
- Practice host-based forensic analysis

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Windows 7 / Windows 10 |
| Hypervisor | VirtualBox |
| Toolset | Sysinternals Suite |
| Analysis Tools | Process Explorer, Autoruns, TCPView, Process Monitor |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Tools

| Tool | Purpose |
|---|---|
| Process Explorer | Advanced process analysis |
| Autoruns | Startup and persistence analysis |
| TCPView | Network connection monitoring |
| Process Monitor | Real-time system monitoring |
| PsExec | Remote process execution |
| Sigcheck | File signature verification |

---

# Installation

## Download Sysinternals Suite

Official Microsoft download:

```text
https://learn.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite
```

---

# Extract Tools

Example extraction path:

```text
C:\Tools\Sysinternals\
```

---

# Process Explorer

Process Explorer provides advanced visibility into running processes, parent-child relationships, handles, and loaded DLLs.

## Launch Process Explorer

```text
procexp.exe
```

---

# Process Analysis

Key analysis areas:
- parent-child process relationships
- suspicious command-line arguments
- abnormal executable paths
- unsigned processes
- elevated privileges

---

# Autoruns

Autoruns identifies persistence mechanisms and startup locations.

## Launch Autoruns

```text
autoruns.exe
```

---

# Persistence Analysis

Common persistence locations:
- Run registry keys
- Scheduled tasks
- Startup folders
- Services
- Browser helper objects

---

# TCPView

TCPView displays active network connections and associated processes.

## Launch TCPView

```text
tcpview.exe
```

---

# Network Analysis

Key analysis areas:
- suspicious outbound connections
- listening ports
- unknown remote IPs
- unusual network activity

---

# Process Monitor

Process Monitor provides real-time monitoring of:
- file system activity
- registry access
- process creation
- network activity

## Launch Process Monitor

```text
procmon.exe
```

---

# Malware / RAT Analysis

Sysinternals tools were used to analyze:
- suspicious processes
- unauthorized persistence
- command-and-control communication
- abnormal network behavior
- simulated RAT activity

---

# Related Labs

- RAT Observation and Suspicious Processes
- Windows Process Analysis
- Persistence Analysis
- Network Monitoring
- Host-Based Investigation

---

# Recommended Screenshots

Recommended screenshots for documentation:
- suspicious processes in Process Explorer
- active network connections in TCPView
- persistence entries in Autoruns
- Process Monitor event filtering
- abnormal parent-child process chains
- unsigned executables
- suspicious outbound connections

---

# Common Tools and Commands

| Tool | Purpose |
|---|---|
| procexp.exe | Process analysis |
| autoruns.exe | Persistence analysis |
| tcpview.exe | Network monitoring |
| procmon.exe | System monitoring |
| sigcheck.exe | Signature verification |

---

# Common Troubleshooting

## Tools Will Not Launch

### Possible Causes
- insufficient privileges
- antivirus interference
- missing extraction files

### Resolution
- run as administrator
- verify extracted files
- temporarily disable lab AV protections if necessary

---

## Excessive Process Monitor Events

### Resolution
- apply filters
- limit captured event types
- pause capture during analysis

---

## Missing Network Connections

### Resolution
- refresh TCPView
- verify active traffic
- check Windows firewall settings

---

# Lessons Learned

- Parent-child process relationships help identify suspicious behavior.
- Persistence mechanisms often reveal malware activity.
- Real-time monitoring tools provide valuable forensic visibility.
- Host-based analysis complements network-based investigations.

---

# Ethical Use Notice

All activities documented in this repository were conducted in a controlled educational environment for cybersecurity training purposes only.

Do not use Sysinternals tools for unauthorized monitoring, persistence analysis, or system investigation without explicit authorization.