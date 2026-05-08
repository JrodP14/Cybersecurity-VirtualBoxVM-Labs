# Installed Tools — Kali Linux VM

## Overview

This document tracks the cybersecurity tools, utilities, and supporting software installed on the Kali Linux virtual machine used throughout the NCSA Cybersecurity Home Lab environment.

The Kali Linux VM serves as the primary attacker, analysis, and security testing platform within the isolated lab network.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| VM Role | Attacker / Security Testing |
| IP Address | 10.0.2.3 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |

---

# Reconnaissance & Enumeration Tools

| Tool | Purpose |
|---|---|
| Nmap | Network reconnaissance and port scanning |
| Netdiscover | Host discovery |
| Netcat | Banner grabbing and connectivity testing |
| traceroute | Network path analysis |
| ping | Connectivity testing |

---

# Exploitation Tools

| Tool | Purpose |
|---|---|
| Metasploit Framework | Exploitation and post-exploitation |
| Netcat | Reverse shells and listeners |

---

# Packet Analysis Tools

| Tool | Purpose |
|---|---|
| Wireshark | Packet capture and protocol analysis |
| tcpdump | Command-line packet capture |

---

# Wireless Security Tools

| Tool | Purpose |
|---|---|
| Aircrack-ng | Wireless auditing |
| airmon-ng | Monitor mode management |
| airodump-ng | Wireless packet capture |
| aireplay-ng | Packet injection |

---

# MITM & Traffic Manipulation Tools

| Tool | Purpose |
|---|---|
| Ettercap | MITM attacks and DNS spoofing |
| arpspoof | ARP spoofing |

---

# Password Auditing Tools

| Tool | Purpose |
|---|---|
| Hashcat | Password auditing and hash cracking |
| OpenSSL | Hash generation and cryptographic functions |

---

# Vulnerability Assessment Tools

| Tool | Purpose |
|---|---|
| OpenVAS / GVM | Vulnerability scanning |
| greenbone-feed-sync | Vulnerability feed updates |

---

# Linux Administration Utilities

| Utility | Purpose |
|---|---|
| grep | Text searching |
| cut | Text parsing |
| nano | File editing |
| chmod | Permission management |
| chown | Ownership management |
| ps | Process monitoring |
| kill | Process termination |
| systemctl | Service management |

---

# Networking Utilities

| Utility | Purpose |
|---|---|
| ifconfig | Interface configuration |
| ip a | Interface management |
| netstat | Network connections |
| arp | ARP table analysis |
| dig | DNS queries |
| nslookup | DNS resolution |

---

# Wordlists & Resources

| Resource | Purpose |
|---|---|
| rockyou.txt | Password auditing |
| SecLists | Security testing resources |
| custom-wordlists | Custom password testing |

---

# Installed Browser Utilities

| Tool | Purpose |
|---|---|
| Firefox Developer Tools | Web traffic inspection |
| Chrome Developer Tools | HTTP analysis |

---

# Planned Future Tool Additions

Future planned additions include:
- Burp Suite
- BloodHound
- Wazuh Agent
- Zeek
- Suricata
- Volatility
- YARA

---

# Notes

- Tools are installed strictly for authorized educational use.
- Additional tools may be added as the lab environment expands.
- Some tools require elevated privileges for full functionality.

---

# Ethical Use Notice

All tools documented in this environment are used strictly within authorized educational lab environments for cybersecurity training and research purposes only.