# Tools Installed

## Overview

This document tracks the tools, utilities, platforms, and virtual machines installed and used throughout the NCSA Cybersecurity Home Lab environment.

The purpose of this documentation is to:
- maintain lab consistency
- track installed software
- document tool usage
- support troubleshooting
- assist with future lab expansion

---

# Host System

| Component | Details |
|---|---|
| Host Operating System | Windows 11 |
| Hypervisor | VirtualBox |
| Lab Type | Isolated Virtual Cybersecurity Lab |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |

The lab environment is hosted on a Windows 11 machine using VirtualBox virtualization.

All virtual machines operate independently within the same isolated lab network.

---

# Virtual Machines

| Virtual Machine | IP Address | Purpose |
|---|---|
| Kali Linux | 10.0.2.3 | Attacker / Security Testing |
| Metasploitable2 | 10.0.2.4 | Vulnerable Target |
| Windows 7 VM | 10.0.2.5 | Malware / RAT Analysis |
| Windows 10 VM | 10.0.2.6 | Endpoint Analysis |
| OpenVAS VM | 10.0.2.7 | Vulnerability Scanning |

---

# Kali Linux Tools

| Tool | Purpose |
|---|---|
| Nmap | Network reconnaissance and port scanning |
| Metasploit Framework | Exploitation and post-exploitation |
| Wireshark | Packet capture and traffic analysis |
| Aircrack-ng | Wireless security auditing |
| Ettercap | MITM attacks and DNS spoofing |
| Hashcat | Password auditing and hash cracking |
| Netcat | Network communication and shell connections |
| Netdiscover | Host discovery |
| OpenSSL | Hashing and cryptographic operations |
| grep | Text searching and filtering |
| cut | Text processing |
| nano | File editing |
| curl | HTTP requests and testing |
| wget | File downloading |
| ping | Connectivity testing |
| traceroute | Network path analysis |

---

# Windows Analysis Tools

| Tool | Purpose |
|---|---|
| Sysinternals Suite | Windows process and persistence analysis |
| Process Explorer | Advanced process monitoring |
| Autoruns | Persistence analysis |
| TCPView | Network connection monitoring |
| Process Monitor | Real-time event monitoring |
| Windows Task Manager | Basic process management |
| Windows Defender | Endpoint protection |

---

# OpenVAS / GVM

| Component | Purpose |
|---|---|
| GVM | Vulnerability management framework |
| Greenbone Security Assistant | Web management interface |
| Vulnerability Feeds | CVE and vulnerability detection |

---

# Networking Utilities

| Utility | Purpose |
|---|---|
| ipconfig | Windows network configuration |
| ifconfig | Linux network configuration |
| ip a | Linux interface management |
| netstat | Network connection analysis |
| arp | ARP table analysis |
| nslookup | DNS queries |
| dig | DNS analysis |

---

# Wordlists and Resources

| Resource | Purpose |
|---|---|
| rockyou.txt | Password auditing wordlist |
| SecLists | Security testing resources |
| Custom Wordlists | Password testing |

---

# Capture and Analysis Files

| File Type | Purpose |
|---|---|
| .pcap | Packet captures |
| .pcapng | Packet captures |
| .txt | Scan outputs and notes |
| .xml | Nmap XML exports |
| .csv | Exported analysis data |

---

# Installed Browser Tools

| Browser Tool | Purpose |
|---|---|
| Firefox Developer Tools | Web traffic inspection |
| Chrome Developer Tools | HTTP analysis |

---

# Planned Tool Additions

Future planned additions to the lab environment:

- Wazuh
- Security Onion
- Burp Suite
- BloodHound
- Zeek
- Suricata
- Splunk
- Velociraptor
- Volatility
- Autopsy

---

# Notes

- All tools were installed and used within isolated lab environments.
- Vulnerable systems are intentionally configured for educational testing purposes.
- Lab systems are separated from production environments.
- Tool versions may change as the lab environment evolves.

---

# Ethical Use Notice

All tools documented in this repository are used strictly within authorized educational lab environments for cybersecurity training and research purposes.

Unauthorized scanning, exploitation, interception, or credential attacks against systems without permission may violate laws and organizational policies.