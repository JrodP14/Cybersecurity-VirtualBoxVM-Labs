# Aircrack-ng

## Overview

Aircrack-ng is a wireless network security auditing suite used for wireless reconnaissance, packet capturing, WPA/WPA2 handshake collection, password auditing, and wireless traffic analysis.

This tool was used throughout the NCSA Cybersecurity Home Lab environment to perform wireless security testing and analyze wireless authentication processes in a controlled lab environment.

---

# Objectives

The primary objectives of using Aircrack-ng in this lab environment were:

- Enable and manage wireless monitor mode
- Discover nearby wireless access points
- Capture WPA/WPA2 authentication handshakes
- Perform password auditing using dictionary attacks
- Analyze wireless traffic during authentication events
- Understand wireless attack methodologies in authorized environments

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Wireless Toolset | Aircrack-ng Suite |
| Lab Subnet | 10.0.2.0/24 |

---

# Tool Components

The Aircrack-ng suite contains several utilities used for wireless security testing.

| Tool | Purpose |
|---|---|
| airmon-ng | Enable or disable monitor mode |
| airodump-ng | Capture wireless packets and discover access points |
| aireplay-ng | Perform packet injection and deauthentication attacks |
| aircrack-ng | Perform WPA/WPA2 password cracking |

---

# Installation

## Verify Existing Installation

```bash
aircrack-ng --help
```

## Install on Kali Linux

```bash
sudo apt update
sudo apt install aircrack-ng
```

---

# Wireless Adapter Requirements

Wireless adapters used for Aircrack-ng testing should support:

- Monitor mode
- Packet injection

Recommended adapters commonly include:
- Alfa adapters
- Atheros chipsets
- Realtek chipsets with monitor mode support

---

# Monitor Mode

Monitor mode allows the wireless adapter to capture all nearby wireless traffic.

## Kill Conflicting Services

```bash
sudo airmon-ng check kill
```

## Enable Monitor Mode

```bash
sudo airmon-ng start wlan0
```

## Verify Monitor Interface

```bash
iwconfig
```

Expected interface example:

```text
wlan0mon
```

---

# Wireless Reconnaissance

Wireless reconnaissance was performed to identify nearby access points, clients, and encryption types.

## Discover Nearby Wireless Networks

```bash
sudo airodump-ng wlan0mon
```

Information gathered:
- SSID
- BSSID
- Channel
- Signal Strength
- Encryption Type
- Connected Clients

---

# WPA/WPA2 Handshake Capture

Handshake captures are required for WPA/WPA2 password auditing.

## Capture Traffic from a Specific Access Point

```bash
sudo airodump-ng -c 6 --bssid AA:BB:CC:DD:EE:FF -w capture wlan0mon
```

Generated files:
- capture.cap
- capture.csv
- capture.kismet.csv

---

# Deauthentication Attack

Deauthentication packets can force wireless clients to reconnect and generate WPA handshakes.

## Send Deauthentication Packets

```bash
sudo aireplay-ng --deauth 10 -a AA:BB:CC:DD:EE:FF wlan0mon
```

---

# Password Auditing

Dictionary attacks were performed against captured WPA handshakes using authorized lab targets.

## Dictionary Attack Example

```bash
sudo aircrack-ng capture.cap -w /usr/share/wordlists/rockyou.txt
```

## Custom Wordlist Example

```bash
sudo aircrack-ng capture.cap -w custom-wordlist.txt
```

---

# Related Labs

- Wireless Reconnaissance
- WPA/WPA2 Handshake Capture
- Wireless Traffic Analysis
- Password Auditing
- Packet Injection Testing

---

# Recommended Screenshots

Recommended screenshots for documentation:
- monitor mode enabled
- wireless access point discovery
- handshake capture
- successful password audit
- connected wireless clients
- wireless packet captures

---

# Common Troubleshooting

## Monitor Mode Not Enabled

### Symptoms
- wlan0mon interface not created
- interface errors displayed

### Resolution

```bash
sudo airmon-ng check kill
sudo airmon-ng start wlan0
```

---

## Wireless Adapter Not Detected

### Resolution
- Verify VirtualBox USB passthrough
- Reconnect wireless adapter
- Confirm Linux driver support

---

# Lessons Learned

- Wireless adapters require monitor mode support for packet capture.
- WPA/WPA2 handshakes are generated during client authentication.
- Weak wireless passwords are vulnerable to dictionary attacks.
- Wireless reconnaissance reveals nearby attack surfaces and connected clients.

---

# Ethical Use Notice

All testing documented in this repository was conducted in a controlled educational environment for cybersecurity training purposes only.

Do not perform wireless attacks or unauthorized testing against networks or systems without explicit authorization.