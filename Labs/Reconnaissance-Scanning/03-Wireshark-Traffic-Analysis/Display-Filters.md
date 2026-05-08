# Display Filters

## Overview

This document covers Wireshark display filters used to isolate, analyze, and investigate specific network traffic within the isolated lab environment.

Display filters improve:
- investigation speed
- protocol analysis
- traffic visibility
- troubleshooting efficiency

---

# Common Filters

## DNS Traffic

```text
dns
```

---

## HTTP Traffic

```text
http
```

---

## TCP Traffic

```text
tcp
```

---

## UDP Traffic

```text
udp
```

---

## ICMP Traffic

```text
icmp
```

---

# IP Address Filtering

## Filter Specific IP

```text
ip.addr == 10.0.2.4
```

---

## Source IP Filter

```text
ip.src == 10.0.2.3
```

---

## Destination IP Filter

```text
ip.dst == 10.0.2.4
```

---

# Port Filtering

## Filter HTTP Port

```text
tcp.port == 80
```

---

## Filter DNS Port

```text
udp.port == 53
```

---

# Combined Filters

## TCP and IP Filter

```text
tcp && ip.addr == 10.0.2.4
```

---

## HTTP Requests from Specific Host

```text
http && ip.src == 10.0.2.3
```

---

# Verification Tasks

- filtered protocols
- filtered IP addresses
- filtered ports
- combined multiple filters

---

# Recommended Screenshots

- DNS filtering
- HTTP filtering
- IP filtering
- combined filter examples

---

# Notes

- Display filters do not remove packets from capture.
- Proper filtering improves investigation accuracy.
- Complex filters reduce analysis noise.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.