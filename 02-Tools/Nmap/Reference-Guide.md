# Nmap Reference Guide

## Verify Installation

```bash
nmap --version
```

---

# Host Discovery

## Ping Sweep

```bash
nmap -sn 10.0.2.0/24
```

Purpose:
- identify active hosts
- discover systems on subnet

---

# Basic Port Scanning

## Default Port Scan

```bash
nmap 10.0.2.4
```

---

# Service Enumeration

## Version Detection

```bash
nmap -sV 10.0.2.4
```

---

# Operating System Detection

## OS Fingerprinting

```bash
sudo nmap -O 10.0.2.4
```

---

# Aggressive Scan

## Combined Enumeration

```bash
sudo nmap -A 10.0.2.4
```

Includes:
- OS detection
- version detection
- NSE scripts
- traceroute

---

# Full Port Scan

## Scan All TCP Ports

```bash
nmap -p- 10.0.2.4
```

---

# UDP Scan

## UDP Service Enumeration

```bash
sudo nmap -sU 10.0.2.4
```

---

# NSE Scripts

## SMB Share Enumeration

```bash
nmap --script smb-enum-shares 10.0.2.4
```

## Vulnerability Scripts

```bash
nmap --script vuln 10.0.2.4
```

---

# Output Formats

## Save Normal Output

```bash
nmap -oN scan.txt 10.0.2.4
```

## Save XML Output

```bash
nmap -oX scan.xml 10.0.2.4
```

---

# Common Flags

| Flag | Purpose |
|---|---|
| -sn | Ping sweep |
| -sV | Service detection |
| -O | OS detection |
| -A | Aggressive scan |
| -p- | Scan all ports |
| -Pn | Skip host discovery |
| -sU | UDP scan |

---

# Common Commands

| Command | Purpose |
|---|---|
| nmap -sn | Host discovery |
| nmap -sV | Version detection |
| nmap -O | OS fingerprinting |
| nmap -A | Aggressive scan |
| nmap --script | Run NSE scripts |

---

# Common Troubleshooting

## Host Appears Down

### Resolution

```bash
nmap -Pn 10.0.2.4
```

---

## OS Detection Failure

### Verify:
- sudo privileges
- firewall filtering
- available open ports

---

## Slow Scan Speeds

### Recommendations
- reduce scan scope
- avoid unnecessary UDP scans
- optimize timing settings

---

# Useful Notes

- Aggressive scans generate more network traffic.
- UDP scans are slower than TCP scans.
- NSE scripts automate enumeration tasks.
- Full port scans provide better visibility into exposed services.

---

# Related Labs

- Introduction to Nmap
- Service Enumeration
- Network Reconnaissance
- Vulnerability Scanning
- OpenVAS Scanning