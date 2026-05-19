# Deleted File Recovery Assessment

## Overview

This assessment documents the deleted file recovery procedures performed against the `NCSA-HD_64MB_image.dd` forensic disk image within the NCSA Cybersecurity Home Lab environment.

The assessment focused on:
- deleted artifact recovery
- signature validation
- hexadecimal analysis
- recovered file verification
- forensic recovery workflows

Scalpel and HxD were used to recover and validate deleted files from raw storage media.

---

# Assessment Objectives

The objectives of this assessment were:

- recover deleted files from raw storage media
- validate recovered artifacts
- inspect hexadecimal file structures
- identify file signatures
- confirm forensic recovery integrity
- document recovery findings

---

# Tools Used

| Tool | Purpose |
|---|---|
| Scalpel | Automated deleted file recovery |
| HxD | Hexadecimal analysis and validation |
| GCK File Signature Search | Signature verification |
| Kali Linux | Forensic analysis platform |

---

# Recovery Workflow

The recovery process included:
1. analyzing the target disk image
2. configuring Scalpel recovery signatures
3. executing file carving operations
4. validating recovered artifacts
5. inspecting hexadecimal structures
6. documenting recovery findings

---

# Recovered File Types

The recovery process successfully identified and recovered:

| File Type | Status |
|---|---|
| JPG | Recovered |
| PDF | Recovered |
| PNG | Identified and validated |

Recovered artifacts were organized automatically into categorized recovery directories.

---

# Signature Validation

Recovered files were validated using:
- hexadecimal analysis
- file signature references
- header/footer comparison

Validated signatures included:
- PNG headers
- PNG footers
- JPG signatures
- PDF structures

This validation process confirmed:
- artifact integrity
- file authenticity
- recovery accuracy

---

# Hexadecimal Recovery Validation

HxD was used to:
- inspect raw hexadecimal data
- validate embedded file structures
- identify offset ranges
- confirm file boundaries

Hexadecimal analysis supported:
- forensic validation
- artifact reconstruction
- manual verification workflows

---

# Recovery Results

Recovered directories contained:
- carved JPG images
- recovered PDF documents
- validated embedded artifacts

The assessment demonstrated successful deleted file recovery from raw storage media using signature-based carving methods.

---

# Key Findings

- Deleted artifacts remained recoverable within the disk image.
- Scalpel successfully recovered multiple file formats.
- Hexadecimal analysis validated recovered file integrity.
- Offset analysis confirmed recoverable artifact boundaries.
- Signature validation strengthened forensic accuracy.

---

# Notes

- All forensic recovery activities were conducted within isolated educational lab environments.
- Disk images and forensic artifacts were used strictly for authorized cybersecurity training purposes.
- No unauthorized forensic analysis or recovery operations were performed.

---

# Ethical Use Notice

All forensic analysis and recovery activities documented in this assessment were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized forensic analysis or recovery operations against systems or storage devices without explicit permission.