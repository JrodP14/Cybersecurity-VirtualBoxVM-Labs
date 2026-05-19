# Scalpel Reference Guide

## Verify Scalpel Installation

```bash
scalpel -V
```

Purpose:
- verify Scalpel installation
- confirm tool accessibility

---

# Create Output Directory

```bash
mkdir recovered-files
```

Purpose:
- create recovery output location
- store carved files

---

# Open Scalpel Configuration

```bash
sudo nano /etc/scalpel/scalpel.conf
```

Purpose:
- configure recoverable file types
- modify carving signatures

---

# Enable File Signatures

## JPG Signature

```text
jpg     y       20000000        \xff\xd8\xff\xe0
```

---

## PNG Signature

```text
png     y       20000000        \x89\x50\x4e\x47
```

---

## PDF Signature

```text
pdf     y       20000000        \x25\x50\x44\x46
```

Purpose:
- define file recovery patterns
- enable file carving support

---

# Run Scalpel Against Disk Image

```bash
scalpel image.dd -o recovered-files
```

Purpose:
- perform automated file carving
- recover deleted or embedded files

---

# Use Custom Configuration File

```bash
scalpel -c scalpel.conf image.dd -o output
```

Purpose:
- use custom recovery signatures
- modify carving behavior

---

# Review Recovered Files

```bash
cd recovered-files
ls
```

Purpose:
- inspect recovered files
- validate carving results

---

# Analyze Recovered File Types

```bash
file recovered-file.jpg
```

Purpose:
- identify file type
- validate recovery integrity

---

# Common Scalpel Options

| Option | Purpose |
|---|---|
| `-c` | Specify configuration file |
| `-o` | Specify output directory |
| `-V` | Display version information |
| `-v` | Verbose output |

---

# Common File Signatures

| File Type | Header Signature |
|---|---|
| JPG | `FFD8FFE0` |
| PNG | `89504E47` |
| PDF | `25504446` |
| ZIP | `504B0304` |

---

# Common Forensic Concepts

| Concept | Description |
|---|---|
| File Carving | Recovering files from raw data |
| Disk Image | Bit-by-bit copy of storage media |
| Header | Beginning signature of a file |
| Footer | Ending signature of a file |
| Offset | Location of data within an image |

---

# Example Recovery Workflow

## 1. Create Recovery Directory

```bash
mkdir output
```

---

## 2. Configure Signatures

```bash
sudo nano /etc/scalpel/scalpel.conf
```

---

## 3. Run Recovery

```bash
scalpel image.dd -o output
```

---

## 4. Review Results

```bash
cd output
ls
```

---

# Common Troubleshooting

## Permission Denied

```bash
sudo scalpel image.dd -o output
```

Purpose:
- execute Scalpel with elevated privileges

---

## Missing Output Directory

```bash
mkdir output
```

Purpose:
- create valid recovery directory

---

## No Files Recovered

Possible causes:
- unsupported file signatures
- corrupted disk image
- fragmented files
- disabled signature entries

---

# Digital Forensics Relevance

Scalpel supports:
- forensic recovery
- deleted file analysis
- evidence extraction
- disk image investigation
- incident response workflows

Understanding file carving improves:
- forensic analysis skills
- evidence handling awareness
- digital investigation workflows
