# Aircrack Wireless Attacks

## Overview

This lab focused on wireless reconnaissance, monitor mode configuration, WPA/WPA2 handshake analysis, and wireless security concepts using the Aircrack-ng suite within the isolated cybersecurity home lab environment.

The purpose of this lab was to develop foundational wireless-security and packet-analysis skills commonly used in:
- wireless security assessments
- penetration testing
- network analysis
- packet capture investigations
- wireless auditing
- defensive security awareness

---

# Lab Objectives

The primary objectives of this lab were:

- Configure wireless monitor mode
- Discover nearby wireless networks
- Analyze wireless traffic
- Capture WPA/WPA2 handshakes
- Review wireless authentication concepts
- Understand wireless-security risks
- Analyze defensive wireless-security practices

---

# Lab Environment

| System | Role |
|---|---|
| Kali Linux | Wireless Analysis VM |
| Wireless Adapter | Monitor Mode Adapter |
| Target Wireless Network (Jarrod's iPhone) | Authorized Lab Network |

---

# Skills Developed

- wireless reconnaissance
- monitor mode configuration
- packet analysis
- WPA/WPA2 analysis
- wireless auditing
- traffic capture
- wireless-security awareness

---

# Topics Covered

- Monitor Mode & Reconnaissance
- WPA Handshake Analysis
- Wireless Security Concepts

---

# Common Tools Used

| Tool | Purpose |
|---|---|
| Aircrack-ng | Wireless auditing |
| Airodump-ng | Wireless reconnaissance |
| Airmon-ng | Monitor mode configuration |
| Wireshark | Packet analysis |

---

# Common Commands

## Enable Monitor Mode

```bash
sudo airmon-ng start wlan0
```

---

## Wireless Reconnaissance

```bash
sudo airodump-ng wlan0mon
```

---

## Capture WPA Handshake

```bash
sudo airodump-ng -c CHANNEL --bssid TARGET_BSSID -w capture wlan0mon
```

---

# Verification Tasks

The following tasks were completed during this lab:

- enabled monitor mode
- discovered nearby wireless networks
- analyzed wireless traffic
- captured WPA/WPA2 handshakes
- reviewed wireless packets
- analyzed wireless-security concepts

---

# Recommended Screenshots

Recommended screenshots for documentation:
- monitor mode enabled
- wireless reconnaissance
- target network identification
- handshake capture
- wireless packet analysis
- Aircrack analysis

---

# Notes

- Wireless analysis was performed only within authorized lab environments.
- Monitor mode enables passive wireless traffic collection.
- Strong WPA/WPA2 passwords improve wireless security.
- SSIDs, MAC addresses, and other identifying wireless information have been redacted for privacy and safety. All testing was performed against authorized lab equipment and personally owned devices.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.