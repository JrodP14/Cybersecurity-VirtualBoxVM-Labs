# Network Configuration — OpenVAS VM

## Overview

This document outlines the network configuration, interface settings, IP addressing, and communication structure for the OpenVAS virtual machine used within the NCSA Cybersecurity Home Lab environment.

The OpenVAS VM functions as the dedicated vulnerability scanning platform within the isolated virtual lab network.

---

# Virtual Machine Information

| Component | Details |
|---|---|
| Operating System | Linux |
| VM Role | Vulnerability Scanner |
| IP Address | 10.0.2.7 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |
| Gateway | 10.0.2.1 |

---

# Network Interfaces

| Interface | Purpose |
|---|---|
| eth0 | Primary network interface |

---

# Lab Systems

| System | IP Address | Role |
|---|---|
| Kali Linux | 10.0.2.3 | Attacker VM |
| Metasploitable2 | 10.0.2.4 | Vulnerable Target |
| Windows 7 VM | 10.0.2.5 | RAT Analysis |
| Windows 10 VM | 10.0.2.6 | Endpoint Analysis |
| OpenVAS VM | 10.0.2.7 | Vulnerability Scanner |

---

# Verify IP Configuration

## Display Interface Information

```bash
ip a
```

Alternative:

```bash
ifconfig
```

---

# Verify Connectivity

## Ping Kali Linux

```bash
ping 10.0.2.3
```

## Ping Metasploitable2

```bash
ping 10.0.2.4
```

---

# Verify Routing Table

```bash
ip route
```

---

# Verify OpenVAS Services

## Check GVM Services

```bash
sudo systemctl status gvmd
```

---

# Verify Web Interface

## OpenVAS Web Interface

```text
https://10.0.2.7:9392
```

---

# Common Scan Targets

| Target | Purpose |
|---|---|
| 10.0.2.4 | Vulnerability scanning |
| 10.0.2.5 | Windows analysis |
| 10.0.2.6 | Endpoint assessment |

---

# Vulnerability Assessment Workflow

Typical workflow:
1. Discover targets
2. Configure scan
3. Launch scan
4. Review findings
5. Export reports
6. Validate vulnerabilities

---

# Common Network Workflows

## Vulnerability Enumeration

Tools:
- OpenVAS
- Nmap

---

## Report Generation

Outputs:
- PDF reports
- CSV exports
- XML exports

---

# Common Troubleshooting

## Scanner Unavailable

### Verify:
- GVM services running
- network connectivity
- port 9392 accessible

---

## Feed Synchronization Failure

### Verify:
- internet connectivity
- DNS resolution
- available storage space

---

## Scan Targets Unreachable

### Verify:
- target systems online
- VirtualBox NAT Network configuration
- subnet consistency

---

# Notes

- The OpenVAS VM should remain isolated from public networks.
- Vulnerability feeds require periodic updates.
- Large scans may impact system performance.

---

# Ethical Use Notice

This OpenVAS virtual machine is used strictly within authorized educational cybersecurity lab environments for training and research purposes only.