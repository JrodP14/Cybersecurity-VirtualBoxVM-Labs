# Aircrack-ng Reference Guide

## Monitor Mode

### Kill Conflicting Processes

```bash
sudo airmon-ng check kill
```

### Enable Monitor Mode

```bash
sudo airmon-ng start wlan0
```

### Disable Monitor Mode

```bash
sudo airmon-ng stop wlan0mon
```

### Verify Wireless Interfaces

```bash
iwconfig
```

---

# Wireless Reconnaissance

## Discover Nearby Access Points

```bash
sudo airodump-ng wlan0mon
```

Information Gathered:
- SSID
- BSSID
- Channel
- Encryption Type
- Signal Strength
- Connected Clients

---

# Targeted Wireless Capture

## Capture Traffic from a Specific Access Point

```bash
sudo airodump-ng -c 6 --bssid AA:BB:CC:DD:EE:FF -w capture wlan0mon
```

Output Files:
- capture.cap
- capture.csv
- capture.kismet.csv

---

# Deauthentication Attack

## Send Deauthentication Packets

```bash
sudo aireplay-ng --deauth 10 -a AA:BB:CC:DD:EE:FF wlan0mon
```

Purpose:
- Force client reconnection
- Trigger WPA handshake generation

---

# Password Auditing

## Dictionary Attack

```bash
sudo aircrack-ng capture.cap -w /usr/share/wordlists/rockyou.txt
```

## Custom Wordlist

```bash
sudo aircrack-ng capture.cap -w custom-wordlist.txt
```

---

# Common Commands

| Command | Purpose |
|---|---|
| airmon-ng | Manage monitor mode |
| airodump-ng | Capture wireless traffic |
| aireplay-ng | Inject wireless packets |
| aircrack-ng | Crack WPA/WPA2 passwords |

---

# Common File Types

| File | Purpose |
|---|---|
| .cap | Packet capture |
| .csv | Access point and client information |
| .kismet.csv | Wireless metadata export |

---

# Useful Notes

- Monitor mode support is required for wireless packet capture.
- Packet injection support is recommended for deauthentication attacks.
- WPA handshakes are captured during client authentication.
- Weak passwords are vulnerable to dictionary attacks.

---

# Common Troubleshooting

## Monitor Mode Failure

### Resolution

```bash
sudo airmon-ng check kill
sudo airmon-ng start wlan0
```

---

## Wireless Adapter Missing

Check:
- USB passthrough configuration
- Linux driver support
- VirtualBox USB settings

---

# Related Labs

- Wireless Reconnaissance
- WPA/WPA2 Handshake Capture
- Password Auditing
- Wireless Traffic Analysis