# TCP Port Scanning

## Overview

This section focused on understanding TCP port scanning concepts and implementing active network reconnaissance techniques using Python socket programming.

TCP port scanning is commonly used during cybersecurity assessments to identify open ports, accessible services, and exposed network infrastructure on target systems.

The lab demonstrated how TCP connections can be used to determine whether services are actively listening on remote hosts within an isolated cybersecurity lab environment.

---

# Objectives

The primary objectives of this section were:

- Understand TCP port scanning methodologies
- Identify open network ports
- Perform active reconnaissance
- Analyze exposed services
- Understand service enumeration concepts
- Practice automated network scanning workflows
- Interpret scan results and port states

---

# What Is TCP Port Scanning?

TCP port scanning is a reconnaissance technique used to identify:
- open ports
- accessible services
- listening applications
- exposed network infrastructure

Port scanners attempt to establish TCP connections to target ports and analyze the response behavior.

Open ports typically indicate:
- active services
- network-accessible applications
- remotely reachable systems

---

# Reconnaissance Relevance

Port scanning is commonly used during:
- penetration testing
- vulnerability assessments
- network diagnostics
- attack surface analysis
- infrastructure discovery
- service enumeration

Port scanning assists security professionals with:
- identifying exposed services
- validating firewall rules
- auditing network configurations
- assessing attack surface visibility

---

# Common TCP Ports

| Port | Service |
|---|---|
| 21 | FTP |
| 22 | SSH |
| 23 | Telnet |
| 25 | SMTP |
| 53 | DNS |
| 80 | HTTP |
| 110 | POP3 |
| 139 | NetBIOS |
| 443 | HTTPS |

These ports commonly host network-accessible services that may be exposed during reconnaissance activities.

---

# Target Identification

The scanner accepted target IP addresses or hostnames for enumeration.

## Example Target Input

```python
target = input("Enter target IP: ")
```

Example targets:
- `10.0.2.3`
- `10.0.2.15`
- `localhost`

---

# Port Range Enumeration

The scanner iterated through sequential TCP ports to identify accessible services.

## Example Port Range

```python
for port in range(1, 1025):
```

Purpose:
- automate enumeration
- identify open services
- improve reconnaissance efficiency

---

# Connection Testing

TCP connections were tested using Python sockets.

## Example Connection Test

```python
result = sock.connect_ex((target, port))
```

Purpose:
- determine port accessibility
- identify open services
- analyze connection responses

---

# Port States

Typical scan results included:

| State | Description |
|---|---|
| Open | Service actively listening |
| Closed | No active service |
| Filtered | Firewall or filtering present |

Open ports indicate accessible services that may contribute to attack surface exposure.

---

# Open Port Identification

When a successful connection occurred, the scanner reported the port as open.

## Example Output

```text
Port 22 is open
Port 80 is open
```

This information supports:
- service enumeration
- attack surface mapping
- infrastructure analysis

---

# Active Reconnaissance

Unlike passive OSINT techniques, TCP port scanning actively interacts with target systems by attempting network connections.

Active reconnaissance may:
- generate network traffic
- trigger firewall logs
- produce intrusion detection alerts
- reveal exposed services

Understanding active reconnaissance helps security professionals:
- identify scanning behavior
- improve defensive monitoring
- validate network exposure

---

# Service Enumeration

Open ports often correspond to active network services including:
- web servers
- SSH access
- database services
- file transfer services
- remote administration tools

Service enumeration supports:
- vulnerability assessments
- attack surface analysis
- infrastructure mapping
- defensive auditing

---

# Security Impact

Exposed ports may increase organizational risk by:
- expanding attack surface visibility
- exposing vulnerable services
- allowing remote access
- revealing infrastructure details

Security teams commonly use port scanning to:
- identify unnecessary services
- audit firewall rules
- validate segmentation
- monitor infrastructure exposure

---

# Key Findings

- TCP port scanning identifies accessible network services.
- Open ports reveal active listening applications.
- Automated scanning improves reconnaissance efficiency.
- Active reconnaissance generates observable network activity.
- Port scanning supports attack surface analysis and service discovery.

---

# Lessons Learned

- TCP communication underpins service enumeration workflows.
- Open ports reveal potentially exposed services.
- Automated scanning improves efficiency during reconnaissance.
- Port scanning assists with infrastructure analysis.
- Understanding active reconnaissance improves defensive awareness.

---

# Notes

- All scanning activities were conducted inside an isolated VirtualBox cybersecurity lab environment.
- Target systems consisted of intentionally vulnerable or authorized educational lab machines.
- No unauthorized external scanning or production network targeting was performed.

---

# Ethical Use Notice

All TCP port scanning activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized scanning or reconnaissance against systems or networks without explicit permission.