# Wireshark Reference Guide

## Verify Installation

```bash
wireshark --version
```

---

# Launch Wireshark

## Start Application

```bash
wireshark
```

---

# Common Interfaces

| Interface | Purpose |
|---|---|
| eth0 | Wired network traffic |
| wlan0 | Wireless traffic |
| wlan0mon | Wireless monitor mode |

---

# Display Filters

## HTTP Traffic

```text
http
```

## DNS Traffic

```text
dns
```

## TCP Traffic

```text
tcp
```

## UDP Traffic

```text
udp
```

## Filter by IP Address

```text
ip.addr == 10.0.2.4
```

## Filter by Port

```text
tcp.port == 80
```

---

# Capture Filters

## Capture HTTP

```text
port 80
```

## Capture DNS

```text
port 53
```

## Capture Specific Host

```text
host 10.0.2.4
```

---

# TCP Stream Analysis

## Follow TCP Stream

Steps:
1. Right-click packet
2. Follow
3. TCP Stream

---

# DNS Analysis

## Common DNS Indicators

- DNS requests
- DNS responses
- spoofed responses
- suspicious domains

---

# HTTP Analysis

## Common HTTP Indicators

- GET requests
- POST requests
- user agents
- cleartext credentials

---

# Common Filters

| Filter | Purpose |
|---|---|
| http | HTTP traffic |
| dns | DNS traffic |
| tcp | TCP traffic |
| udp | UDP traffic |
| ip.addr == x.x.x.x | Filter by IP |
| tcp.port == 80 | Filter by port |

---

# Packet Export

## Export Formats

- .pcap
- .pcapng

Purpose:
- forensic analysis
- offline review
- reporting

---

# Common Troubleshooting

## No Traffic Visible

### Verify:
- correct interface selected
- active traffic generation
- permissions

---

## Excessive Traffic

### Recommendation:
- apply filters
- narrow capture scope
- use capture filters

---

## Missing DNS Packets

### Verify:
- DNS traffic generated
- correct interface selected
- filtering configuration

---

# Useful Notes

- Display filters do not remove packets from captures.
- Capture filters reduce traffic during collection.
- TCP streams reconstruct communication sessions.
- Packet captures support forensic investigations and incident analysis.

---

# Related Labs

- Wireshark Traffic Analysis
- DNS Poisoning
- MITM Attacks
- Packet Capture Analysis
- Network Reconnaissance