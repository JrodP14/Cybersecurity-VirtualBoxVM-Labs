# OpenVAS Reference Guide

## Verify Installation

```bash
gvm-check-setup
```

---

# Installation

## Install GVM

```bash
sudo apt update
sudo apt install gvm -y
```

---

# Initial Setup

## Initialize OpenVAS

```bash
sudo gvm-setup
```

Purpose:
- configure services
- download vulnerability feeds
- create administrator account

---

# Start Services

## Start OpenVAS

```bash
sudo gvm-start
```

## Stop OpenVAS

```bash
sudo gvm-stop
```

---

# Feed Synchronization

## Update Vulnerability Feeds

```bash
sudo greenbone-feed-sync
```

---

# Access Web Interface

## Local Access

```text
https://127.0.0.1:9392
```

## Lab VM Access

```text
https://10.0.2.7:9392
```

---

# Vulnerability Scanning Workflow

1. Create target
2. Create task
3. Select scan configuration
4. Launch scan
5. Review findings
6. Export report

---

# Common Scan Configurations

| Scan Type | Purpose |
|---|---|
| Full and Fast | General vulnerability scan |
| Discovery | Host and service discovery |
| Host Discovery | Identify active systems |
| System Discovery | Enumerate system details |

---

# Common Targets

| System | IP Address |
|---|---|
| Metasploitable2 | 10.0.2.4 |
| Windows 7 | 10.0.2.5 |
| Windows 10 | 10.0.2.6 |

---

# Severity Levels

| Severity | Meaning |
|---|---|
| Low | Minimal risk |
| Medium | Moderate risk |
| High | Significant risk |
| Critical | Severe vulnerability |

---

# Common Commands

| Command | Purpose |
|---|---|
| gvm-setup | Initialize OpenVAS |
| gvm-start | Start services |
| gvm-stop | Stop services |
| gvm-check-setup | Verify installation |
| greenbone-feed-sync | Update feeds |

---

# Common Troubleshooting

## Scanner Not Responding

### Resolution

```bash
sudo gvm-start
```

---

## Feed Sync Failure

### Verify:
- internet connectivity
- available disk space
- running services

---

## Web Interface Unavailable

### Check:
- port 9392 accessibility
- GVM services
- firewall configuration

---

# Useful Notes

- Vulnerability feeds require periodic updates.
- Credentialed scans provide more accurate results.
- OpenVAS findings should be manually validated when possible to root out false positives.
- Large scans may require significant system resources.

---

# Related Labs

- OpenVAS Vulnerability Scanning
- Nmap Enumeration
- Vulnerability Analysis
- Service Enumeration
- Network Reconnaissance