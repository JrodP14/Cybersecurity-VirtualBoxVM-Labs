# Setup Notes — Metasploitable2 VM

## Overview

This document contains setup procedures, configuration details, and operational notes for the Metasploitable2 virtual machine used within the NCSA Cybersecurity Home Lab environment.

Metasploitable2 is an intentionally vulnerable Linux virtual machine designed for exploitation practice, vulnerability analysis, reconnaissance, and post-exploitation training.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Metasploitable2 Linux |
| VM Role | Vulnerable Target |
| IP Address | 10.0.2.4 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |

---

# Host System Information

| Component | Details |
|---|---|
| Host Operating System | Windows 11 |
| Virtualization Platform | VirtualBox |

---

# Initial VM Configuration

## Allocated Resources

| Resource | Configuration |
|---|---|
| RAM | 2 GB |
| CPU Cores | 2 |
| Video Memory | 32 MB |
| Storage | Dynamically Allocated Virtual Disk |

---

# Network Configuration

## Adapter Settings

| Setting | Value |
|---|---|
| Adapter Type | NAT Network |
| Network Name | NATNetwork |
| Promiscuous Mode | Allow All |

---

# Default Credentials

## Default Login

```text
Username: msfadmin
Password: msfadmin
```

---

# Primary Purpose

Metasploitable2 is used for:
- exploitation practice
- vulnerability validation
- service enumeration
- post-exploitation exercises
- privilege escalation testing
- packet analysis
- vulnerability scanning

---

# Common Vulnerable Services

| Service | Purpose |
|---|---|
| FTP | File transfer vulnerability testing |
| SSH | Remote access testing |
| Telnet | Insecure remote access |
| Apache | Web exploitation |
| MySQL | Database testing |
| Samba | SMB exploitation |
| PostgreSQL | Database enumeration |
| UnrealIRCd | Backdoor exploitation |

---

# Verification Commands

## Verify IP Address

```bash
ifconfig
```

Alternative:

```bash
ip a
```

---

## Verify Connectivity

```bash
ping 10.0.2.3
```

---

## Verify Running Services

```bash
netstat -tunap
```

---

# Recommended Scanning

## Service Enumeration

```bash
nmap -sV 10.0.2.4
```

## Aggressive Scan

```bash
sudo nmap -A 10.0.2.4
```

---

# Common Exploitation Targets

| Service | Typical Exploit |
|---|---|
| vsFTPd 2.3.4 | Backdoor exploit |
| Samba | Username map script |
| UnrealIRCd | Backdoor command execution |
| Tomcat | Weak credentials |

---

# Snapshot Recommendations

Recommended snapshots:
- fresh import
- pre-exploitation state
- post-service configuration
- before major testing

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| No network connectivity | Verify NAT Network configuration |
| IP address missing | Restart networking |
| Services unavailable | Restart VM |
| Exploit not working | Verify service version |

---

# Lessons Learned

- Vulnerable systems provide safe environments for exploitation practice.
- Accurate service enumeration improves exploitation success.
- Different services expose different attack surfaces.
- Vulnerability validation requires both scanning and manual verification.

---

# Notes

- Metasploitable2 is intentionally insecure.
- This VM should never be exposed to public networks.
- All testing occurs within isolated educational lab environments.

---

# Ethical Use Notice

This virtual machine is intentionally vulnerable and is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.