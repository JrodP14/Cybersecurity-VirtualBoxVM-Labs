# Wireshark TCP Handshake Analysis

## Objective

Capture and analyze TCP network traffic between the Kali Linux virtual machine and the Metasploitable2 target system using Wireshark.

The goal of this lab was to:

- Observe the TCP three-way handshake
- Analyze packet flow between systems
- Inspect HTTP and Telnet traffic
- Apply Wireshark filtering techniques
- Understand how TCP sessions are established and terminated

---

# Environment

| System | Role | IP Address |
|---|---|---|
| Kali Linux | Client / Analysis System | 10.0.2.3 |
| Metasploitable2 | Target System | 10.0.2.4 |
| Wireshark | Packet Capture Tool | Installed on Kali Linux |

---

# Tools Used

- Wireshark
- Kali Linux
- VirtualBox
- Firefox Browser
- Telnet
- TCP/IP Protocol Suite

---

# Network Topology

```text
Kali Linux (10.0.2.3)
           |
           |
           v
Metasploitable2 (10.0.2.4)
```

---

# Packet Capture Overview

Wireshark was configured to capture traffic on the `eth0` network interface connected to the VirtualBox lab network.

Traffic generated during the lab included:

- ICMP ping requests and replies
- ARP broadcasts
- TCP SYN packets
- HTTP requests and responses
- Telnet negotiation traffic

---

# Protocol Filtering

Wireshark display filters were used to isolate specific traffic types.

## Filter Used

```text
tcp or icmp
```

This filter displayed:

- TCP traffic
- ICMP traffic
- TCP handshake packets
- HTTP requests
- Telnet communication

---

# TCP Three-Way Handshake Analysis

The TCP handshake process was observed during communication between Kali Linux and the Metasploitable2 web server.

## Step 1 — SYN

Kali Linux initiated a connection to port 80 on the target system.

```text
10.0.2.3 -> 10.0.2.4
[SYN]
```

### Purpose

The SYN packet requests the start of a TCP session.

---

## Step 2 — SYN-ACK

Metasploitable2 responded with a SYN-ACK packet.

```text
10.0.2.4 -> 10.0.2.3
[SYN, ACK]
```

### Purpose

The target system acknowledged the connection request and agreed to establish communication.

---

## Step 3 — ACK

Kali Linux completed the handshake by sending an ACK packet.

```text
10.0.2.3 -> 10.0.2.4
[ACK]
```

### Purpose

The ACK confirms the session establishment.

---

# HTTP Traffic Analysis

HTTP traffic between the systems was captured and inspected using Wireshark.

## HTTP Request Observed

```http
GET / HTTP/1.1
Host: 10.0.2.4
```

## HTTP Response Observed

```http
HTTP/1.1 200 OK
```

---

# Findings

The HTTP session revealed:

- Browser request headers
- Web server responses
- Apache server information
- HTML content from the Metasploitable2 web page

The HTTP traffic was transmitted in plaintext and fully readable within Wireshark.

---

# TCP Stream Analysis

Wireshark's **Follow TCP Stream** feature was used to reconstruct the full TCP conversation.

## Stream Contents

The reconstructed stream displayed:

- HTTP GET requests
- Browser user-agent strings
- Server response headers
- HTML web content
- Apache server information

---

# Telnet Traffic Analysis

Telnet traffic was also captured during the lab.

## Observed Behavior

Wireshark captured:

- Telnet negotiation packets
- Terminal type negotiation
- Option negotiation traffic
- Plaintext communication

---

# ARP and ICMP Analysis

Additional traffic observed during the capture included:

## ARP Traffic

ARP packets resolved MAC addresses between hosts on the local network.

### Observed

```text
Who has 10.0.2.4? Tell 10.0.2.3
```

---

## ICMP Traffic

ICMP echo requests and replies confirmed network connectivity.

### Observed

```text
Echo (ping) request
Echo (ping) reply
```

---

# Packet Details Analysis

The packet details pane in Wireshark provided low-level protocol information including:

- Ethernet headers
- Source and destination MAC addresses
- IPv4 addressing
- TCP flags
- Sequence and acknowledgment numbers
- HTTP payload contents

---

# Security Impact

The lab demonstrated several important security concepts:

| Protocol | Security Observation |
|---|---|
| HTTP | Traffic visible in plaintext |
| Telnet | Unencrypted remote communication |
| TCP | Session establishment visible |
| ARP | Broadcast-based local resolution |
| ICMP | Network discovery and reachability |

---

# Key Findings

- TCP sessions are established using the three-way handshake
- HTTP traffic is readable without encryption
- Telnet transmits plaintext communication
- Wireshark effectively reconstructs TCP streams
- Packet filtering simplifies protocol analysis
- ARP and ICMP traffic reveal host communication behavior

---

# Mitigation Recommendations

- Replace HTTP with HTTPS
- Avoid using Telnet on production systems
- Use encrypted communication protocols
- Monitor abnormal TCP connection behavior
- Implement network intrusion monitoring

---

# Key Takeaways

- Wireshark provides deep visibility into network traffic
- TCP handshake analysis is essential for troubleshooting
- Plaintext protocols expose sensitive information
- Packet captures reveal how systems communicate internally
- TCP stream reconstruction improves traffic analysis capabilities

---

# Skills Demonstrated

- Packet capture analysis
- TCP/IP troubleshooting
- TCP handshake analysis
- HTTP protocol analysis
- Telnet traffic inspection
- Wireshark filtering
- TCP stream reconstruction
- Network traffic interpretation
- Security documentation