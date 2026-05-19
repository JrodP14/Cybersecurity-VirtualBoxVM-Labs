# Scalpel Recovery

## Overview

This section focused on automated file carving and forensic recovery using Scalpel within an isolated digital forensics lab environment.

Scalpel was used to recover deleted or embedded files from raw disk images by identifying file headers, footers, and hexadecimal file signatures.

HxD and GaryKessler.net were also used to validate recovered files, inspect hexadecimal structures, and confirm signature integrity during forensic recovery workflows.

The lab demonstrated how automated file carving supports digital forensic investigations, evidence recovery, and incident response procedures.

---

# Objectives

The primary objectives of this section were:

- Understand automated file carving concepts
- Configure Scalpel recovery signatures
- Recover deleted files from disk images
- Analyze hexadecimal file structures
- Validate recovered artifacts
- Use HxD for recovery verification
- Reference GaryKessler.net file signatures
- Develop foundational forensic recovery skills

---

# Tools Used

| Tool | Purpose |
|---|---|
| Scalpel | Automated file carving and recovery |
| HxD | Hexadecimal analysis and validation |
| GaryKessler.net | File signature reference validation |
| Kali Linux | Forensic analysis platform |

---

# What Is Scalpel?

Scalpel is an open-source forensic file carving tool that recovers files from raw storage media using:
- file headers
- footers
- hexadecimal signatures
- byte offsets

Scalpel operates independently of filesystem metadata and can recover:
- deleted files
- embedded files
- partially damaged data
- hidden artifacts

---

# Scalpel Configuration

Scalpel uses a configuration file to determine which file signatures should be recovered.

Example configuration file:

```bash
sudo nano /etc/scalpel/scalpel.conf
```

Common signatures enabled:
- JPG
- PNG
- PDF
- ZIP

The configuration process included:
- enabling signatures
- defining recovery patterns
- validating header/footer structures

---

# Automated Recovery Workflow

The recovery workflow included:
1. preparing target disk images
2. configuring Scalpel signatures
3. enabling recovery file types
4. running automated carving operations
5. reviewing recovered output
6. validating recovered files using HxD
7. comparing signatures against GaryKessler.net references

This workflow simulated foundational forensic recovery procedures used during digital investigations.

---

# Running Scalpel

## Example Recovery Command

```bash
scalpel image.dd -o recovered-files
```

Purpose:
- analyze raw disk images
- recover deleted files
- automate forensic extraction

---

# Recovery Output

Recovered files were organized into output directories based on file type.

Example recovered data:
- JPG images
- PDF documents
- ZIP archives
- PNG files

The recovery process demonstrated how deleted data may remain recoverable within raw storage media.

---

# HxD Validation

HxD was used to:
- inspect recovered files
- validate hexadecimal headers
- confirm footer integrity
- verify file boundaries
- analyze recovered data structures

Validation steps included:
- checking magic bytes
- confirming signatures
- reviewing hexadecimal offsets

---

# GaryKessler.net Validation

GaryKessler.net was used to:
- verify file signatures
- validate header/footer structures
- compare hexadecimal patterns
- confirm recovered file types

Reference site:
- https://www.garykessler.net/library/file_sigs.html

---

# File Signature Examples

| File Type | Header Signature | Footer Signature |
|---|---|---|
| JPG | `FFD8FFE0` | `FFD9` |
| PNG | `89504E47` | `49454E44AE426082` |
| PDF | `25504446` | `2525454F46` |

---

# File Carving Relevance

Automated file carving supports:
- digital forensic investigations
- deleted file recovery
- incident response
- malware investigations
- evidence extraction workflows

Scalpel improves:
- recovery speed
- carving efficiency
- forensic automation
- evidence collection workflows

---

# Offset Analysis

Offsets represent the location of recoverable data within raw storage media.

Offset analysis supports:
- validating recovered files
- identifying file boundaries
- confirming recovery locations
- forensic evidence interpretation

HxD was used to visually inspect offset positions during recovery validation procedures.

---

# Security Relevance

Scalpel and file carving techniques are commonly used during:
- incident response
- digital forensic investigations
- malware analysis
- deleted evidence recovery
- forensic validation operations

Security professionals use file carving to:
- recover deleted artifacts
- investigate compromised systems
- validate forensic evidence
- analyze suspicious storage media

---

# Key Findings

- Deleted files may remain recoverable within raw disk images.
- Scalpel automates signature-based forensic recovery.
- HxD improves visibility during recovery validation.
- GaryKessler.net provides reliable forensic signature references.
- File carving supports evidence recovery workflows.

---

# Lessons Learned

- Automated carving improves forensic recovery efficiency.
- File signatures define recoverable data boundaries.
- Hexadecimal validation strengthens forensic accuracy.
- Offset analysis improves recovery interpretation.
- Digital forensics workflows require careful evidence handling.

---

# References

Gary Kessler File Signatures:
- https://www.garykessler.net/library/file_sigs.html

HxD Hex Editor:
- https://mh-nexus.de/en/hxd/

Scalpel Documentation:
- https://github.com/sleuthkit/scalpel

---

# Notes

- All forensic recovery activities were conducted within isolated educational lab environments.
- Test disk images and files were used strictly for authorized cybersecurity training purposes.
- No unauthorized forensic analysis or recovery operations were performed.

---

# Ethical Use Notice

All digital forensic and recovery activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized forensic analysis or recovery operations against systems or storage devices without explicit permission.