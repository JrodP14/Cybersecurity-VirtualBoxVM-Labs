# Google Dorking

## Overview

Google Dorking, also referred to as Google Hacking, is a passive reconnaissance technique that uses advanced Google search operators to identify publicly indexed information, exposed resources, and internet-facing content.

This section documents the use of Google search operators within the NCSA Cybersecurity Home Lab environment to support OSINT reconnaissance, indexed content discovery, and attack surface analysis.

Google Dorking can assist cybersecurity professionals with:
- passive intelligence gathering
- exposed document discovery
- public resource identification
- reconnaissance query refinement
- attack surface visibility analysis

---

# Objectives

The primary objectives of using Google Dorking in this lab environment were:

- Understand Google search operators
- Perform passive reconnaissance
- Discover publicly indexed resources
- Practice domain-specific searching
- Identify exposed documents and files
- Refine reconnaissance search queries
- Improve OSINT collection methodologies

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Lab Type | Isolated Cybersecurity Home Lab |
| Primary Focus | Passive Reconnaissance & OSINT |

---

# Core Features

Google Dorking supports:
- indexed content discovery
- domain-specific searching
- filetype enumeration
- search query refinement
- passive intelligence gathering
- reconnaissance filtering
- public resource discovery

---

# Common Search Operators

| Operator | Purpose |
|---|---|
| `site:` | Restrict searches to a domain |
| `filetype:` | Search for specific file types |
| `intitle:` | Search webpage titles |
| Quotes `" "` | Search exact phrases |
| `inurl:` | Search URL strings |

---

# Example Queries

## Domain-Specific Search

```text
site:tesla.com
```

---

## Filetype Enumeration

```text
site:tesla.com filetype:pdf
```

---

## Indexed Directory Search

```text
site:microsoft.com intitle:"index of"
```

---

# Passive Reconnaissance

Google Dorking supports passive reconnaissance by using publicly indexed search engine results rather than directly interacting with target systems.

This methodology assists with:
- attack surface analysis
- exposed information discovery
- public infrastructure analysis
- OSINT workflows

---

# Security Relevance

Search engine indexing may unintentionally expose:
- public documents
- metadata
- internal filenames
- infrastructure details
- sensitive organizational information

Security teams commonly use search operator analysis to:
- identify exposed resources
- assess public visibility
- audit indexed information
- reduce unnecessary exposure

---

# Skills Demonstrated

This section demonstrates:
- Google search operator usage
- passive reconnaissance techniques
- indexed content discovery
- advanced search query refinement
- filetype-based enumeration
- domain-specific searching
- reconnaissance data filtering

---

# Lessons Learned

- Search operators improve reconnaissance precision.
- Public indexing can increase attack surface visibility.
- Passive reconnaissance reduces detection risk.
- Search query refinement improves OSINT efficiency.
- Indexed files may unintentionally expose organizational information.

---

# Notes

- Google Dorking activities in this repository were conducted for authorized educational cybersecurity training purposes only.
- Searches focused exclusively on publicly indexed information.
- No unauthorized access or exploitation was performed.

---

# Ethical Use Notice

All Google Dorking and search engine reconnaissance activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not use reconnaissance techniques to access, target, or exploit systems or information without explicit permission.