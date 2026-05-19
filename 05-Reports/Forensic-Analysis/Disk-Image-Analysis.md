# Disk Image Analysis Report

## Overview

This report documents the forensic analysis procedures performed against the `NCSA-HD_64MB_image.dd` disk image during digital forensic recovery operations within the NCSA Cybersecurity Home Lab environment.

The investigation focused on:
- raw hexadecimal analysis
- file signature identification
- offset analysis
- embedded artifact discovery
- forensic validation workflows

HxD and file signature reference databases were used to inspect and validate hexadecimal structures within the disk image.

---

# Investigation Objectives

The objectives of this investigation were:

- analyze raw disk image structures
- identify hexadecimal file signatures
- validate file headers and footers
- locate recoverable forensic artifacts
- interpret offset locations
- document forensic findings

---

# Tools Used

| Tool | Purpose |
|---|---|
| HxD | Hexadecimal analysis and offset inspection |
| GCK File Signature Search | File signature validation |
| Kali Linux | Forensic analysis platform |
| Scalpel | Automated recovery validation |

---

# Target Image

| Item | Description |
|---|---|
| Disk Image | `NCSA-HD_64MB_image.dd` |
| Analysis Type | Raw hexadecimal analysis |
| Investigation Platform | Kali Linux |

---

# Hexadecimal Disk Inspection

HxD was used to inspect:
- raw disk sectors
- hexadecimal structures
- filesystem signatures
- embedded data
- offset locations

The hexadecimal analysis provided visibility into:
- file structures
- raw storage contents
- embedded artifacts
- recoverable data

---

# File Signature Analysis

File signatures were identified and validated using:
- hexadecimal inspection
- GCK File Signature Search references

Example identified signatures included:
- PNG headers
- PNG footers
- embedded image structures

---

# Header & Footer Validation

The investigation validated:
- hexadecimal file headers
- footer signatures
- magic bytes
- file boundary locations

Example PNG signature:

| Signature Type | Value |
|---|---|
| Header | `89 50 4E 47 0D 0A 1A 0A` |
| Footer | `49 45 4E 44 AE 42 60 82` |

These signatures confirmed the presence of embedded PNG artifacts within the disk image.

---

# Embedded Artifact Discovery

Hexadecimal inspection revealed:
- embedded PNG image structures
- recoverable file boundaries
- valid hexadecimal signatures

The recovered artifacts demonstrated how deleted or embedded files may remain identifiable within raw storage media.

---

# Key Findings

- The disk image contained recoverable embedded artifacts.
- Valid PNG signatures were identified during analysis.
- Offset analysis confirmed file boundary locations.
- Hexadecimal structures supported forensic validation workflows.
- Raw disk inspection improved forensic visibility.

---

# Notes

- All forensic analysis activities were conducted within isolated educational lab environments.
- Disk images and forensic artifacts were used strictly for authorized cybersecurity training purposes.
- No unauthorized forensic analysis or recovery operations were performed.

---

# Ethical Use Notice

All digital forensic analysis activities documented in this report were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized forensic analysis against systems or storage devices without explicit permission.