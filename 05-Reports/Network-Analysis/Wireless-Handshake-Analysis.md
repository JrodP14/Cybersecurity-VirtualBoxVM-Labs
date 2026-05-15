# Wireless Handshake Analysis

## Objective

Capture and analyze a WPA2 wireless authentication handshake within a controlled lab environment using monitor mode, wireless reconnaissance, and Wireshark packet analysis.

This lab demonstrated:

- Wireless adapter verification
- Monitor mode configuration
- Wireless reconnaissance
- Access point identification
- WPA2 handshake capture
- EAPOL packet analysis
- Wireless traffic inspection

---

# Lab Environment

| Component | Description |
|---|---|
| Operating System | Kali Linux |
| Virtualization | Oracle VirtualBox |
| Wireless Adapter | Alfa Network AWUS036ACHM |
| Wireless Chipset | MediaTek mt76x0u |
| Target Network | WPA2 Personal Wireless Network |
| Analysis Tool | Wireshark |
| Wireless Tools | Aircrack-ng Suite |

---

# Tools Used

- Aircrack-ng
- Airmon-ng
- Airodump-ng
- Aireplay-ng
- Wireshark
- iwconfig
- ip
- Kali Linux

---

# Lab Overview

This lab focused on wireless network monitoring and WPA2 handshake analysis using a USB wireless adapter in monitor mode.

The process included:

1. Verifying wireless adapter functionality
2. Enabling monitor mode
3. Scanning nearby wireless networks
4. Identifying the target access point
5. Testing packet injection capability
6. Capturing WPA2 EAPOL handshake packets
7. Analyzing captured traffic in Wireshark

All testing occurred against an authorized personal wireless network for educational and defensive security purposes only.

---

# Wireless Adapter Verification

The wireless adapter was verified using:

```bash
iwconfig
```

## Observed Interfaces

```text
wlan0mon  IEEE 802.11  Mode:Monitor
```

The wireless adapter successfully supported:

- Monitor mode
- Packet capture
- Wireless injection testing

---

# Monitor Mode Configuration

Monitor mode was enabled using:

```bash
sudo airmon-ng start wlan0
```

## Result

```text
(mac80211 monitor mode vif enabled)
```

## Interface Created

```text
wlan0mon
```

Monitor mode allowed the adapter to capture raw 802.11 wireless traffic.

---

# Interface Verification

Network interfaces were validated using:

```bash
ifconfig
```

and

```bash
ip link
```

## Key Findings

| Interface | Purpose |
|---|---|
| eth0 | VirtualBox internal networking |
| wlan0 | Physical wireless adapter |
| wlan0mon | Monitor mode wireless interface |

---

# Wireless Reconnaissance

Nearby wireless networks were identified using:

```bash
sudo airodump-ng wlan0mon
```

## Observed Information

Captured wireless information included:

- BSSID
- Signal strength
- Encryption type
- Authentication method
- Channel number
- Connected clients

---

# Target Network Identification

The authorized target wireless network was identified during reconnaissance.

## Target Information

| Property | Value |
|---|---|
| Encryption | WPA2 |
| Cipher | CCMP |
| Authentication | PSK |
| Channel | 6 |
| Network Type | 802.11 Wireless |

The target access point was isolated for focused monitoring.

---

# Packet Injection Verification

Wireless injection capability was tested using:

```bash
sudo aireplay-ng --test wlan0mon
```

## Observed Results

```text
Injection is working!
```

## Additional Findings

- Probe requests transmitted successfully
- Access points responded to injection attempts
- Signal strength values were recorded
- Packet transmission confirmed

This verified the adapter supported active wireless testing.

---

# Handshake Capture

The WPA2 handshake was captured using wireless monitoring tools.

## Captured Traffic

Wireshark identified:

```text
EAPOL Key (Message 3 of 4)
EAPOL Key (Message 4 of 4)
```

These packets confirmed successful WPA2 handshake capture.

---

# WPA2 Handshake Analysis

The captured EAPOL packets contained authentication information exchanged between:

- Wireless client device
- Wireless access point

## Observed Fields

### EAPOL Information

```text
802.1X Authentication
EAPOL RSN Key
```

### Key Exchange Details

- Replay Counter
- WPA Key Nonce
- WPA Key MIC
- WPA Key Data Length
- Key Descriptor Information

---

# Wireless Packet Analysis

Wireshark analysis revealed low-level wireless protocol details.

## Protocols Observed

| Protocol | Purpose |
|---|---|
| IEEE 802.11 | Wireless communication |
| EAPOL | WPA/WPA2 authentication |
| LLC | Logical Link Control |
| RSN | Robust Security Network |

---

# EAPOL Message Analysis

Captured handshake packets demonstrated WPA2 authentication workflow.

## WPA2 Four-Way Handshake

| Message | Purpose |
|---|---|
| Message 1 | AP sends nonce |
| Message 2 | Client responds with nonce |
| Message 3 | AP installs encryption keys |
| Message 4 | Client confirms key installation |

Captured packets included:

```text
Message 3 of 4
Message 4 of 4
```

---

# Signal Analysis

Wireless reconnaissance provided additional operational details.

## Recorded Metrics

- Signal strength (PWR)
- Received packet count
- Beacon frames
- Data frames
- Channel assignment
- Client association activity

---

# Attack Workflow Summary

## Step 1 — Adapter Verification

Verified wireless adapter support for monitor mode.

---

## Step 2 — Enable Monitor Mode

Converted wireless adapter into passive monitoring mode.

---

## Step 3 — Wireless Reconnaissance

Scanned nearby wireless access points and connected clients.

---

## Step 4 — Identify Target Network

Located authorized WPA2 target network.

---

## Step 5 — Injection Testing

Validated packet injection functionality.

---

## Step 6 — Capture Handshake

Captured WPA2 EAPOL authentication packets.

---

## Step 7 — Analyze Traffic

Inspected wireless packets in Wireshark.

---

# Security Concepts Demonstrated

- Wireless reconnaissance
- Monitor mode operation
- WPA2 authentication
- EAPOL analysis
- Wireless packet capture
- Wireless signal analysis
- Access point identification
- Packet injection testing
- 802.11 traffic inspection

---

# Key Findings

- Wireless adapter successfully supported monitor mode
- Packet injection functionality worked correctly
- Nearby wireless access points were identified
- WPA2 handshake traffic was captured
- EAPOL authentication packets were analyzed
- Wireshark successfully decoded wireless authentication traffic

---

# Defensive Recommendations

## Wireless Security Best Practices

- Use WPA3 when available
- Use strong WPA2/WPA3 passphrases
- Disable weak wireless protocols
- Monitor unauthorized wireless activity
- Use enterprise authentication where possible
- Segment wireless networks
- Rotate credentials regularly
- Monitor for rogue access points

---

# Key Takeaways

- Monitor mode enables raw wireless packet capture
- WPA2 authentication relies on EAPOL key exchanges
- Wireless reconnaissance reveals nearby access points and clients
- Wireshark provides detailed visibility into wireless traffic
- Packet injection testing validates adapter capability
- Wireless traffic analysis improves understanding of 802.11 security

---

# Skills Demonstrated

- Wireless reconnaissance
- WPA2 handshake capture
- Aircrack-ng usage
- Monitor mode configuration
- Wireshark packet analysis
- Wireless protocol analysis
- EAPOL inspection
- Wireless adapter configuration
- Wireless troubleshooting
- Security documentation

---

# Conclusion

This lab successfully demonstrated wireless reconnaissance and WPA2 handshake analysis using Kali Linux, monitor mode wireless interfaces, Aircrack-ng tools, and Wireshark packet inspection.

The exercise reinforced understanding of:

- 802.11 wireless networking
- WPA2 authentication workflows
- EAPOL handshake structure
- Wireless packet analysis
- Monitor mode operation
- Wireless security assessment techniques

All testing was performed against authorized wireless infrastructure in a controlled environment for educational and defensive security purposes only.# Wireless Handshake Analysis