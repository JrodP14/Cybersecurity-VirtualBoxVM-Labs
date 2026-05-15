# theHarvester

## Overview

theHarvester is an OSINT reconnaissance tool used for email harvesting, domain reconnaissance, hostname discovery, and public information gathering.

This tool was used within the NCSA Cybersecurity Home Lab environment to identify publicly available information related to target domains and organizations.

---

# Objectives

The primary objectives of using theHarvester in this lab environment were:

- Harvest public email addresses
- Discover hostnames
- Perform passive reconnaissance
- Identify public infrastructure
- Gather organizational intelligence
- Analyze exposed information

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Tool | theHarvester |
| Reconnaissance Type | Passive OSINT |

---

# Core Features

- Email harvesting
- Host discovery
- Search engine integration
- Passive reconnaissance
- DNS enumeration
- Public information gathering

---

# Installation

## Verify Existing Installation

```bash
theHarvester --help
```

## Install on Kali Linux

```bash
sudo apt install theharvester
```

---

# Basic Usage

## Enumerate Emails and Hosts

```bash
theHarvester -d example.com -b bing
```

---

# Search Engines

Supported search engines include:
- bing
- google
- yahoo
- crtsh
- linkedin

---

# Save Output

## Export Results

```bash
theHarvester -d example.com -b bing -f output.html
```

---

# Recommended Screenshots

Recommended screenshots for documentation:
- harvested emails
- discovered hosts
- reconnaissance output
- exported reports

---

# Common Flags

| Flag | Purpose |
|---|---|
| -d | Target domain |
| -b | Data source |
| -f | Save output |
| -l | Result limit |

---

# Common Troubleshooting

## No Results Returned

### Possible Causes
- limited public exposure
- blocked queries
- unsupported search engine

### Resolution
- switch search providers
- verify domain formatting
- adjust query limits

---

# Lessons Learned

- Publicly exposed information increases organizational risk.
- Email harvesting supports reconnaissance operations.
- Passive reconnaissance can reveal infrastructure details.
- Search engine indexing exposes metadata.

---

# Ethical Use Notice

All reconnaissance activities documented in this repository were conducted for educational cybersecurity training purposes only.

Do not perform unauthorized reconnaissance or information gathering against systems without proper authorization.