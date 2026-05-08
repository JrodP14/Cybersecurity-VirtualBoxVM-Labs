# Network Configuration — Kali Linux VM

## Overview

This document outlines the network configuration, interface settings, IP addressing, and communication structure for the Kali Linux virtual machine used within the NCSA Cybersecurity Home Lab environment.

The Kali Linux VM functions as the primary attacker and security testing platform within the isolated lab network.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| VM Role | Attacker / Security Testing |
| IP Address | 10.0.2.3 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |
| Gateway | 10.0.2.1 |

---

# Network Interfaces

| Interface | Purpose |
|---|---|
| eth0 | Primary wired network interface |
| wlan0 | Wireless adapter |
| wlan0mon | Wireless monitor mode interface |

---

# Lab Systems

| System | IP Address | Role |
|---|---|---|
| Kali Linux | 10.0.2.3 | Attacker VM |
| Metasploitable2 | 10.0.2.4 | Vulnerable Target |
| Windows 7 VM | 10.0.2.5 | RAT Analysis |
| Windows 10 VM | 10.0.2.6 | Endpoint Analysis |
| OpenVAS VM | 10.0.2.7 | Vulnerability Scanner |

---

# Verify IP Configuration

## Display Interface Information

```bash
ip a
```

Alternative:

```bash
ifconfig
```

---

# Verify Connectivity

## Ping Gateway

```bash
ping 10.0.2.1
```

## Ping Metasploitable2

```bash
ping 10.0.2.4
```

## Ping Windows 7 VM

```bash
ping 10.0.2.5
```

---

# Verify Routing Table

```bash
ip route
```

---

# DNS Resolution

## Test DNS Resolution

```bash
nslookup google.com
```

Alternative:

```bash
dig google.com
```

---

# Monitor Mode Configuration

Wireless testing uses monitor mode on supported wireless adapters.

## Enable Monitor Mode

```bash
sudo airmon-ng start wlan0
```

## Verify Monitor Interface

```bash
iwconfig
```

Expected interface:

```text
wlan0mon
```

---

# Packet Capture Interfaces

| Interface | Purpose |
|---|---|
| eth0 | Internal VM traffic |
| wlan0 | Wireless traffic |
| wlan0mon | Wireless packet capture |

---

# Common Network Workflows

## Reconnaissance

- host discovery
- port scanning
- service enumeration

Tools:
- Nmap
- Netdiscover

---

## Exploitation

- reverse shells
- payload delivery
- Meterpreter sessions

Tools:
- Metasploit
- Netcat

---

## Packet Analysis

- DNS analysis
- HTTP traffic inspection
- MITM traffic observation

Tools:
- Wireshark
- tcpdump

---

# Common Troubleshooting

## No VM Connectivity

### Verify:
- VirtualBox NAT Network settings
- VM adapter attachment
- subnet configuration

---

## No Internet Access

### Restart Networking

```bash
sudo systemctl restart NetworkManager
```

---

## Wireless Adapter Missing

### Verify:
- USB passthrough enabled
- adapter connected
- driver support available

---

# Notes

- All systems operate within an isolated NAT network.
- IP addresses may change if DHCP is reconfigured.
- Wireless testing requires compatible adapters with monitor mode support.

---

# Ethical Use Notice

This network configuration exists strictly for authorized educational cybersecurity training within isolated virtual lab environments.
