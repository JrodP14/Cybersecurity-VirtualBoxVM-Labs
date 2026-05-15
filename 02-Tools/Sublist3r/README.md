# Sublist3r

## Overview

Sublist3r is a passive OSINT reconnaissance tool used for subdomain enumeration and attack surface discovery.

This tool was used within the NCSA Cybersecurity Home Lab environment to identify publicly accessible subdomains and expand target visibility during reconnaissance operations.

---

# Objectives

The primary objectives of using Sublist3r in this lab environment were:

- Discover subdomains
- Expand attack surface visibility
- Perform passive DNS reconnaissance
- Identify exposed services
- Analyze public-facing infrastructure

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Tool | Sublist3r |
| Reconnaissance Type | Passive OSINT |

---

# Core Features

- Passive subdomain enumeration
- Search engine integration
- DNS reconnaissance
- Public infrastructure discovery
- Attack surface expansion

---

# Installation

## Clone Repository

```bash
git clone https://github.com/aboul3la/Sublist3r.git
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

# Basic Usage

## Enumerate Subdomains

```bash
python3 sublist3r.py -d example.com
```

---

# Save Output

## Export Results

```bash
python3 sublist3r.py -d example.com -o results.txt
```

---

# Recommended Screenshots

Recommended screenshots for documentation:
- discovered subdomains
- enumeration results
- exported findings
- passive reconnaissance output

---

# Common Flags

| Flag | Purpose |
|---|---|
| -d | Target domain |
| -o | Save output |
| -v | Verbose mode |
| -t | Thread count |

---

# Common Troubleshooting

## No Subdomains Found

### Possible Causes
- target has limited public exposure
- passive sources unavailable
- incorrect domain formatting

### Resolution
- verify target domain
- rerun enumeration
- increase threads

---

# Lessons Learned

- Subdomain enumeration expands attack surface visibility.
- Passive reconnaissance reduces detection risk.
- Public DNS records may expose infrastructure details.
- Reconnaissance improves security awareness.

---

# Ethical Use Notice

All reconnaissance activities documented in this repository were conducted for educational cybersecurity training purposes only.

Do not perform unauthorized reconnaissance against systems without proper authorization.