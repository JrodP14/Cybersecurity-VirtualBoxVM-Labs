# Google Dorking

## Overview

This section focused on using advanced Google search operators to perform passive reconnaissance and identify publicly indexed information related to target domains, exposed resources, and internet-facing content.

Google Dorking, also referred to as Google Hacking, leverages search engine indexing to refine reconnaissance workflows and discover publicly accessible information that may contribute to attack surface visibility.

The lab demonstrated how search operators can improve OSINT collection and reconnaissance efficiency during cybersecurity assessments within authorized educational environments.

---

# Objectives

The primary objectives of this section were:

- Understand Google search operator functionality
- Perform passive reconnaissance using search engines
- Identify publicly indexed resources
- Discover exposed files and documents
- Practice domain-specific searching
- Refine reconnaissance search queries
- Analyze publicly accessible information exposure

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Lab Type | Isolated Cybersecurity Home Lab |
| Primary Focus | Passive Reconnaissance & OSINT |

---

# Tools Used

| Tool | Purpose |
|---|---|
| Google Search | Passive reconnaissance |
| Web Browser | Search query analysis |
| Kali Linux | Lab operating system |

---

# Google Search Operators

Google search operators allow searches to be refined for targeted reconnaissance and indexed content discovery.

Common operators used during the lab included:
- `site:`
- `filetype:`
- `intitle:`
- quotation searches
- keyword filtering

---

# Domain-Specific Searching

The `site:` operator was used to limit searches to specific domains.

## Example

```text
site:tesla.com
```

Purpose:
- identify indexed domain content
- analyze publicly accessible resources
- refine reconnaissance scope

---

# Filetype Enumeration

The `filetype:` operator was used to identify publicly indexed document types.

## Example

```text
site:tesla.com filetype:pdf
```

Purpose:
- discover publicly accessible documents
- identify exposed files
- analyze indexed content exposure

---

# Indexed Content Discovery

Search queries were refined to identify:
- publicly indexed documents
- exposed directories
- accessible web resources
- metadata-rich files

These searches support:
- attack surface analysis
- OSINT collection
- reconnaissance workflows

---

# Search Query Refinement

Advanced search operators improve reconnaissance precision by filtering unnecessary or unrelated results.

Examples included:
- combining multiple operators
- narrowing domain scope
- refining search keywords
- filtering indexed file types

---

# Passive Reconnaissance Relevance

Google Dorking supports:
- passive intelligence gathering
- publicly accessible resource discovery
- attack surface visibility analysis
- infrastructure reconnaissance
- OSINT workflows

Because searches rely on indexed search engine results, this reconnaissance methodology generates minimal direct interaction with target systems.

---

# Security Impact

Publicly indexed information may unintentionally expose:
- internal documents
- metadata
- sensitive filenames
- infrastructure details
- organizational information

Security teams use search engine reconnaissance to:
- identify exposed content
- assess indexing visibility
- audit public-facing information
- reduce unnecessary exposure

---

# Key Findings

- Search operators improve reconnaissance precision.
- Public search indexing may expose organizational information.
- Filetype enumeration assists with document discovery.
- Passive reconnaissance reduces detection risk.
- Search engine filtering improves OSINT efficiency.

---

# Lessons Learned

- Advanced search operators improve OSINT collection workflows.
- Public indexing can increase attack surface visibility.
- Domain filtering improves reconnaissance accuracy.
- Passive reconnaissance supports infrastructure analysis.
- Search refinement improves information gathering efficiency.

---

# Notes

- All reconnaissance activities were conducted for authorized educational cybersecurity training purposes only.
- Searches focused exclusively on publicly indexed information.
- No unauthorized exploitation or malicious activity was performed.

---

# Ethical Use Notice

All Google Dorking and passive reconnaissance activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not use search engine reconnaissance techniques to access, exploit, or target systems or information without explicit permission.