# File Carving & Data Recovery

## Overview

This lab focused on foundational digital forensics concepts involving file carving, deleted file recovery, and raw disk image analysis using Scalpel and Linux forensic utilities.

The objective of this lab was to understand how files can be recovered from raw storage media by identifying file signatures, headers, footers, and offsets without relying on filesystem metadata.

The lab demonstrated both manual forensic analysis concepts and automated file carving workflows commonly used during digital forensic investigations and incident response operations.

---

# Objectives

The primary objectives of this lab were:

- Understand file carving concepts
- Identify file headers and footers
- Analyze raw disk image data
- Recover deleted or embedded files
- Practice forensic recovery workflows
- Use Scalpel for automated recovery
- Understand offset analysis
- Develop foundational DFIR skills

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Primary Tool | Scalpel |
| Lab Platform | VirtualBox |
| Analysis Type | Digital Forensics |
| Recovery Focus | File Carving & Data Recovery |

---

# Tools Used

| Tool | Purpose |
|---|---|
| Scalpel | Automated file carving |
| HxD | Hexadecimal analysis |
| GaryKessler.net | File signature reference |
| Kali Linux | Forensic analysis platform |

---

# Lab Modules

## File Headers & Footers

Focus areas:
- file signatures
- magic bytes
- header analysis
- footer analysis
- file identification

Key concepts practiced:
- identifying file types
- signature recognition
- forensic validation
- hexadecimal interpretation

---

## Manual File Carving

Focus areas:
- offset analysis
- raw data inspection
- file boundary identification
- manual extraction concepts

Key concepts practiced:
- hexadecimal analysis
- byte offsets
- forensic examination
- raw disk interpretation

---

## Scalpel Recovery

Focus areas:
- automated file carving
- recovery configuration
- signature-based extraction
- forensic recovery workflows

Key concepts practiced:
- Scalpel configuration
- bulk file recovery
- forensic automation
- evidence extraction

---

## Disk Image Analysis

Focus areas:
- raw image examination
- deleted file recovery
- forensic workflow analysis
- image integrity awareness

Key concepts practiced:
- disk image handling
- forensic analysis procedures
- recovery validation
- evidence examination

---

# Skills Demonstrated

This lab demonstrates:
- digital forensics fundamentals
- file carving
- disk analysis
- forensic recovery
- file signature analysis
- offset analysis
- Scalpel usage

---

# Forensic Workflow

The recovery workflow included:
1. identifying target disk images
2. reviewing file signatures
3. configuring Scalpel recovery options
4. analyzing raw image data
5. performing automated file carving
6. reviewing recovered files
7. validating recovery results

The workflow simulated foundational forensic recovery procedures used during digital investigations.

---

# Security Relevance

File carving and forensic recovery are commonly used during:
- incident response
- forensic investigations
- malware analysis
- evidence recovery
- deleted file analysis
- disk image examinations

Understanding forensic recovery workflows helps security professionals:
- recover deleted evidence
- analyze compromised systems
- investigate malicious activity
- validate recovered artifacts

---

# Lessons Learned

- File signatures identify file boundaries within raw data.
- Deleted files may still exist within storage media.
- Automated carving tools improve forensic efficiency.
- Offset analysis assists with raw data interpretation.
- Digital forensics requires careful evidence handling procedures.

---

# Notes

- All forensic recovery activities were performed within isolated educational lab environments.
- Disk images and recovery targets were used strictly for authorized cybersecurity training purposes.
- Evidence handling concepts were practiced in non-production virtualized environments.

---

# Ethical Use Notice

All digital forensics and recovery activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized forensic analysis or recovery operations against systems or storage media without explicit permission.