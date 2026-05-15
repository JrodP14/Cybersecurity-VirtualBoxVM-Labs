# Shodan

## Overview

Shodan is an internet-connected device search engine used for OSINT reconnaissance, exposed service discovery, banner analysis, and attack surface identification.

This tool was used within the NCSA Cybersecurity Home Lab environment to analyze internet-facing systems, identify exposed services, observe service banners, and understand passive reconnaissance methodologies.

---

# Objectives

The primary objectives of using Shodan in this lab environment were:

- Identify exposed internet-facing services
- Analyze service banners
- Discover publicly accessible systems
- Perform passive reconnaissance
- Understand attack surface exposure
- Investigate exposed ports and protocols
- Practice OSINT reconnaissance techniques

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Tool | Shodan |
| Access Method | Web Interface |
| Primary Focus | Passive Reconnaissance |

---

# Core Features

- Internet-wide search engine
- Banner analysis
- Port identification
- Service discovery
- Device fingerprinting
- Geographic analysis
- Vulnerability exposure identification
- Metadata collection

---

# Accessing Shodan

## Web Interface

```text
https://www.shodan.io
```

---

# Common Search Queries

## Search by IP Address

```text
10.0.2.4
```

## Search by Port

```text
port:22
```

## Search by Service

```text
apache
```

## Search by Country

```text
country:US
```

## Search by Organization

```text
org:"Oracle"
```

---

# Banner Analysis

Shodan service banners may reveal:

- software versions
- operating systems
- exposed services
- geographic information
- hostnames
- protocol details

---

# Recommended Screenshots

Recommended screenshots for documentation:
- Shodan search results
- exposed service banners
- device metadata
- open ports
- search filters
- service fingerprints

---

# Common Search Filters

| Filter | Purpose |
|---|---|
| port: | Search by port |
| country: | Filter by country |
| org: | Filter by organization |
| hostname: | Search by hostname |
| product: | Search by software |

---

# Common Troubleshooting

## Limited Results

### Possible Causes
- restrictive filters
- inactive hosts
- limited free account access

### Resolution
- broaden search queries
- verify syntax
- remove restrictive filters

---

# Lessons Learned

- Internet-facing systems expose significant metadata.
- Service banners often reveal sensitive information.
- Passive reconnaissance can identify attack surfaces without active scanning.
- Publicly exposed services increase organizational risk.

---

# Ethical Use Notice

All reconnaissance activities documented in this repository were conducted for educational cybersecurity training purposes only.

Do not perform unauthorized reconnaissance or target systems without proper authorization.