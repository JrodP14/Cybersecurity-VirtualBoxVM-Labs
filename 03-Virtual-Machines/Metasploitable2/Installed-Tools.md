# Installed Services & Tools — Metasploitable2 VM

## Overview

This document tracks the intentionally vulnerable services, applications, and utilities installed on the Metasploitable2 virtual machine used within the NCSA Cybersecurity Home Lab environment.

Metasploitable2 is designed to provide vulnerable services for:
- exploitation practice
- vulnerability analysis
- reconnaissance
- service enumeration
- post-exploitation training

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Metasploitable2 Linux |
| VM Role | Vulnerable Target |
| IP Address | 10.0.2.4 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |

---

# Remote Access Services

| Service | Purpose |
|---|---|
| SSH | Remote administration |
| Telnet | Insecure remote access testing |
| FTP | File transfer testing |

---

# Web Services

| Service | Purpose |
|---|---|
| Apache HTTP Server | Web exploitation testing |
| DVWA | Damn Vulnerable Web Application |
| Mutillidae | Web vulnerability practice |
| phpMyAdmin | Database administration testing |

---

# Database Services

| Service | Purpose |
|---|---|
| MySQL | Database exploitation testing |
| PostgreSQL | Database enumeration |

---

# SMB & File Sharing Services

| Service | Purpose |
|---|---|
| Samba | SMB exploitation testing |
| NFS | Network file sharing |

---

# Vulnerable Applications

| Application | Purpose |
|---|---|
| vsFTPd 2.3.4 | Backdoor exploitation |
| UnrealIRCd | Backdoor command execution |
| Tomcat | Weak credential testing |

---

# Networking Utilities

| Utility | Purpose |
|---|---|
| ifconfig | Network interface configuration |
| netstat | Network connection analysis |
| ping | Connectivity testing |

---

# Common Enumeration Targets

| Service | Typical Enumeration |
|---|---|
| FTP | Anonymous login checks |
| SMB | Share enumeration |
| HTTP | Web application discovery |
| SSH | Version detection |

---

# Verification Commands

## View Running Services

```bash
netstat -tunap
```

---

## Verify IP Address

```bash
ifconfig
```

---

## Check Open Ports

```bash
ss -tuln
```

---

# Common Exploitation Targets

| Service | Example Usage |
|---|---|
| vsFTPd | Backdoor exploitation |
| Samba | SMB enumeration |
| UnrealIRCd | Remote command execution |
| Tomcat | Weak password exploitation |

---

# Recommended Scanning Tools

Common tools used against Metasploitable2:
- Nmap
- OpenVAS
- Metasploit Framework
- Netcat
- Wireshark

---

# Notes

- Services are intentionally vulnerable.
- Applications are intentionally outdated for educational purposes.
- The VM should remain isolated from public networks.

---

# Ethical Use Notice

This vulnerable virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.