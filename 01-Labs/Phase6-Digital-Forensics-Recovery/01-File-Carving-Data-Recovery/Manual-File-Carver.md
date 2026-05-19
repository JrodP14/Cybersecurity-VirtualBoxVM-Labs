# Manual File Carving

## Overview

This section focused on manually identifying and recovering files from raw hexadecimal data using file signatures, offsets, headers, and footers.

HxD and GaryKessler.net were used to inspect raw hexadecimal structures, identify file boundaries, and validate file signatures during forensic recovery operations.

The lab demonstrated how manual file carving techniques support digital forensic investigations when filesystem metadata is unavailable or damaged.

---

# Objectives

The primary objectives of this section were:

- Understand manual file carving concepts
- Identify file headers and footers
- Analyze raw hexadecimal data
- Locate file offsets
- Recover files using signature analysis
- Use HxD for hexadecimal inspection
- Validate signatures using GaryKessler.net
- Develop foundational forensic recovery skills

---

# Tools Used

| Tool | Purpose |
|---|---|
| HxD | Hexadecimal analysis and offset inspection |
| GaryKessler.net | File signature reference validation |
| Kali Linux | Forensic analysis platform |
| Scalpel | Automated carving comparison |

---

# What Is Manual File Carving?

Manual file carving is the process of recovering files from raw storage media by:
- identifying file headers
- locating file footers
- analyzing hexadecimal data
- determining file boundaries

Unlike automated carving tools, manual carving requires direct examination of raw hexadecimal structures.

Manual carving is commonly used when:
- filesystems are damaged
- metadata is corrupted
- deleted files must be recovered
- forensic validation is required

---

# HxD Hexadecimal Analysis

HxD was used to:
- inspect raw hexadecimal data
- locate file signatures
- identify byte offsets
- analyze file boundaries
- validate recovered data

The analysis process included:
- opening raw files or images
- locating magic bytes
- identifying header/footer patterns
- calculating file offsets

---

# File Signature Validation

GaryKessler.net was used to validate:
- file headers
- file footers
- magic bytes
- known signature structures

Reference site:
- https://www.garykessler.net/library/file_sigs.html

This reference source assisted with:
- confirming file types
- validating recovered files
- identifying forensic artifacts

---

# Manual Carving Workflow

The manual carving workflow included:
1. opening raw data in HxD
2. locating hexadecimal headers
3. identifying footer signatures
4. calculating file offsets
5. determining file boundaries
6. extracting identified data
7. validating recovered files

This workflow simulated foundational forensic recovery procedures used during digital investigations.

---

# Example File Signatures

| File Type | Header Signature | Footer Signature |
|---|---|---|
| JPG | `FFD8FFE0` | `FFD9` |
| PNG | `89504E47` | `49454E44AE426082` |
| PDF | `25504446` | `2525454F46` |

---

# Offset Analysis

Offsets represent the location of data within raw storage media.

Manual offset analysis supports:
- locating file boundaries
- identifying embedded files
- validating recovery locations
- reconstructing deleted data

HxD was used to visually inspect:
- hexadecimal positions
- byte ranges
- signature locations
- file structures

---

# Manual Recovery Concepts

Manual carving may involve:
- copying hexadecimal ranges
- extracting raw byte sequences
- reconstructing files
- validating recovered artifacts

Manual analysis improves:
- forensic visibility
- recovery understanding
- evidence interpretation
- signature recognition skills

---

# File Carving Relevance

Manual carving supports:
- forensic investigations
- deleted file recovery
- incident response
- malware investigations
- evidence extraction

Understanding manual carving improves:
- forensic analysis capability
- evidence validation workflows
- digital investigation awareness

---

# Security Relevance

Manual file carving is commonly used during:
- digital forensic investigations
- incident response operations
- malware analysis
- deleted evidence recovery
- forensic validation procedures

Security professionals use manual carving to:
- recover deleted artifacts
- validate automated recovery results
- investigate compromised systems
- analyze suspicious files

---

# Key Findings

- File signatures identify file boundaries within raw data.
- Offsets assist with manual recovery workflows.
- HxD improves visibility during hexadecimal analysis.
- GaryKessler.net supports accurate file validation.
- Manual carving strengthens forensic recovery understanding.

---

# Lessons Learned

- Manual carving improves forensic analysis awareness.
- Headers and footers define recoverable file boundaries.
- Offset analysis supports raw data interpretation.
- Signature validation strengthens recovery accuracy.
- Hexadecimal analysis improves DFIR investigation skills.

---

# References

Gary Kessler File Signatures:
- https://www.garykessler.net/library/file_sigs.html

HxD Hex Editor:
- https://mh-nexus.de/en/hxd/

---

# Notes

- All forensic recovery activities were conducted within isolated educational lab environments.
- Test files and disk images were used strictly for authorized cybersecurity training purposes.
- No unauthorized forensic analysis or recovery operations were performed.

---

# Ethical Use Notice

All digital forensic and recovery activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized forensic analysis or recovery operations against systems or storage devices without explicit permission.