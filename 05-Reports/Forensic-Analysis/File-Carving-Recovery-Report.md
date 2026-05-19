# File Carving Recovery Report

## Overview

This report documents the file carving and forensic recovery procedures performed against the `NCSA-HD_64MB_image.dd` disk image within the NCSA Cybersecurity Home Lab environment.

The investigation focused on:
- automated file carving
- deleted file recovery
- hexadecimal validation
- signature analysis
- forensic artifact verification

Scalpel, HxD, and file signature reference databases were used to recover and validate deleted artifacts from the target disk image.

---

# Investigation Objectives

The objectives of this investigation were:

- recover deleted files from a raw disk image
- identify file headers and footers
- validate hexadecimal signatures
- analyze recovered forensic artifacts
- verify recovery integrity
- document forensic recovery procedures

---

# Tools Used

| Tool | Purpose |
|---|---|
| Scalpel | Automated file carving and recovery |
| HxD | Hexadecimal analysis and offset inspection |
| GCK File Signature Search | Signature validation |
| Kali Linux | Forensic analysis platform |

---

# Target Image

| Item | Description |
|---|---|
| Disk Image | `NCSA-HD_64MB_image.dd` |
| Analysis Environment | Kali Linux Virtual Machine |
| Recovery Method | Signature-based file carving |

---

# Scalpel Recovery Execution

Scalpel was configured and executed against the disk image to recover deleted files based on known file signatures.

## Recovery Command

```bash
sudo scalpel -c scalpel.conf NCSA-HD_64MB_image.dd -o /NCSA-HD
```

## Recovery Workflow

The recovery process included:
1. configuring Scalpel signatures
2. selecting target file types
3. executing automated carving operations
4. validating recovered output
5. reviewing forensic artifacts

---

# Recovery Results

Recovered artifacts included:
- JPG image files
- PDF documents
- embedded file structures

The recovered output demonstrated successful signature-based recovery operations from raw storage media.

---

# Signature Validation

Recovered file signatures were validated using:
- HxD hexadecimal analysis
- GCK File Signature Search references

The validation process confirmed:
- file integrity
- header/footer accuracy
- correct file boundaries

---

# Hexadecimal Analysis

HxD was used to inspect:
- raw hexadecimal data
- file offsets
- PNG signatures
- embedded file structures

The analysis confirmed the presence of valid:
- headers
- footers
- magic bytes
- recoverable artifacts

---

# Recovered Artifacts

Recovered directories contained:
- carved JPG images
- recovered PDF files
- validated forensic artifacts

Recovered files were organized automatically by file type during the carving process.

---

# Key Findings

- Deleted files remained recoverable within the raw disk image.
- Scalpel successfully carved multiple file types.
- Hexadecimal signatures validated recovered artifacts.
- Offset analysis confirmed recoverable file boundaries.
- File carving procedures supported forensic evidence recovery workflows.

---

# Notes

- All forensic recovery activities were conducted within isolated educational lab environments.
- Disk images and forensic artifacts were used strictly for authorized cybersecurity training purposes.
- No unauthorized forensic analysis or recovery operations were performed.

---

# Ethical Use Notice

All forensic analysis and recovery activities documented in this report were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized forensic recovery or analysis against systems or storage devices without explicit permission.