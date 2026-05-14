# Monitor Mode & Reconnaissance

## Overview

This document covers wireless monitor mode configuration and wireless reconnaissance workflows performed using the Aircrack-ng suite within the isolated lab environment.

Wireless reconnaissance supports:
- nearby network discovery
- signal analysis
- wireless auditing
- packet collection
- target identification

---

# Monitor Mode

Monitor mode allows wireless adapters to:
- capture nearby traffic
- observe wireless frames
- monitor multiple networks
- collect packets passively

---

# Enable Monitor Mode

## Start Monitor Mode

```bash
sudo airmon-ng start wlan0
```

Purpose:
- convert wireless adapter into monitor mode

---

# Verify Wireless Interfaces

```bash
iwconfig
```

Purpose:
- review wireless interface status

---

# Wireless Reconnaissance

## Scan Nearby Networks

```bash
sudo airodump-ng wlan0mon
```

Purpose:
- identify nearby wireless access points

---

# Information Collected

Reviewed:
- BSSID
- ESSID
- channel
- encryption type
- signal strength

---

# Common Wireless Terms

| Term | Meaning |
|---|---|
| BSSID | Access point MAC address |
| ESSID | Wireless network name |
| Channel | Wireless frequency |
| WPA/WPA2 | Wireless encryption |

---

# Verification Tasks

- enabled monitor mode
- identified nearby access points
- analyzed wireless channels
- reviewed wireless signal information

---

# Recommended Screenshots

- monitor mode enabled
- wireless interface status
- airodump-ng scans
- identified wireless targets

---

# Notes

- Monitor mode is required for passive wireless analysis.
- Wireless reconnaissance improves visibility into nearby networks.
- Channel identification assists packet collection workflows.
- SSIDs, MAC addresses, and other identifying wireless information have been redacted for privacy and safety. All testing was performed against authorized lab equipment and personally owned devices.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.