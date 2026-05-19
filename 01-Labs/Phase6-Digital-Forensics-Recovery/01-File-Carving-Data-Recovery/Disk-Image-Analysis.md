# Disk Image Analysis

## Overview

This section focused on analyzing raw disk images and examining hexadecimal data structures during foundational digital forensic recovery operations.

Disk images were analyzed using HxD, Scalpel, and Linux forensic utilities to inspect raw storage data, identify file signatures, validate offsets, and recover deleted or embedded files.

GaryKessler.net was used as a reference source for validating file headers, footers, and hexadecimal signatures during forensic analysis workflows.

The lab demonstrated how disk image analysis supports digital forensic investigations, incident response operations, and evidence recovery procedures.

---

# Objectives

The primary objectives of this section were:

- Understand disk image analysis concepts
- Analyze raw hexadecimal storage data
- Identify file signatures within disk images
- Locate file offsets and boundaries
- Recover deleted or embedded files
- Use HxD for hexadecimal inspection
- Validate signatures using GaryKessler.net
- Develop foundational digital forensics skills

---

# Tools Used

| Tool | Purpose |
|---|---|
| HxD | Hexadecimal analysis and offset inspection |
| Scalpel | Automated file carving and recovery |
| GaryKessler.net | File signature reference validation |
| Kali Linux | Forensic analysis platform |

---

# What Is a Disk Image?

A disk image is a bit-by-bit copy of storage media that preserves:
- filesystem structures
- deleted data
- file fragments
- metadata
- raw hexadecimal content

Disk images are commonly used during:
- digital forensic investigations
- malware analysis
- incident response
- deleted file recovery
- forensic evidence preservation

---

# Raw Data Analysis

Raw disk images contain unstructured hexadecimal data representing:
- files
- partitions
- deleted artifacts
- filesystem metadata
- embedded content

Hexadecimal analysis allows forensic analysts to:
- inspect storage contents
- locate file signatures
- identify recoverable artifacts
- validate forensic evidence

---

# HxD Disk Image Analysis

HxD was used to:
- inspect raw hexadecimal data
- identify file signatures
- locate offsets
- analyze embedded content
- validate file boundaries

The analysis process included:
- opening disk image files
- reviewing hexadecimal structures
- locating headers and footers
- validating offsets and signatures

---

# GaryKessler.net Signature Validation

GaryKessler.net was used to:
- validate file signatures
- confirm hexadecimal headers
- identify footer patterns
- compare magic bytes

Reference site:
- https://www.garykessler.net/library/file_sigs.html

This reference source assisted with:
- forensic validation
- file type identification
- signature confirmation
- recovery accuracy

---

# Disk Image Workflow

The analysis workflow included:
1. opening raw disk images
2. inspecting hexadecimal structures in HxD
3. locating file headers and footers
4. validating offsets and signatures
5. extracting recoverable artifacts
6. running Scalpel recovery operations
7. validating recovered files

This workflow simulated foundational forensic investigation procedures used during evidence recovery operations.

---

# File Signature Identification

Common file signatures identified during analysis included:

| File Type | Header Signature | Footer Signature |
|---|---|---|
| JPG | `FFD8FFE0` | `FFD9` |
| PNG | `89504E47` | `49454E44AE426082` |
| PDF | `25504446` | `2525454F46` |
| ZIP | `504B0304` | Variable |

These signatures assisted with:
- identifying embedded files
- validating recovered data
- locating recoverable artifacts

---

# Offset Analysis

Offsets represent the location of data within raw disk images.

Offset analysis supports:
- locating file boundaries
- identifying embedded content
- validating recovered artifacts
- reconstructing deleted data

HxD was used to visually inspect:
- hexadecimal positions
- byte ranges
- file offsets
- signature locations

---

# Automated File Recovery

Scalpel was used to automate file recovery operations using:
- file signatures
- headers
- footers
- carving patterns

Automated recovery improved:
- carving efficiency
- recovery speed
- forensic workflow automation

Recovered files were validated using HxD and compared against GaryKessler.net references.

---

# Security Relevance

Disk image analysis is commonly used during:
- digital forensic investigations
- incident response
- malware analysis
- evidence recovery
- deleted file investigations
- forensic validation procedures

Security professionals use disk image analysis to:
- investigate compromised systems
- recover deleted evidence
- validate forensic findings
- analyze suspicious storage media

---

# Key Findings

- Raw disk images contain recoverable forensic artifacts.
- File signatures identify embedded file structures.
- HxD improves visibility during hexadecimal analysis.
- GaryKessler.net supports accurate signature validation.
- Scalpel automates forensic recovery workflows.

---

# Lessons Learned

- Disk image analysis improves forensic investigation awareness.
- Hexadecimal analysis strengthens evidence interpretation.
- File signatures support forensic recovery accuracy.
- Offset analysis assists with artifact reconstruction.
- Automated carving improves forensic efficiency.

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

- All forensic analysis activities were conducted within isolated educational lab environments.
- Disk images and recovery targets were used strictly for authorized cybersecurity training purposes.
- No unauthorized forensic analysis or recovery operations were performed.

---

# Ethical Use Notice

All digital forensic and recovery activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized forensic analysis or recovery operations against systems or storage devices without explicit permission.