# Scalpel

## Overview

Scalpel is an open-source file carving and forensic recovery tool used to recover deleted or embedded files from raw disk images and storage media.

The tool analyzes file headers and footers to identify and recover files without relying on filesystem structures.

Within this repository, Scalpel is used for:
- forensic recovery
- disk image analysis
- deleted file extraction
- file signature identification
- digital forensic workflows

---

# Primary Use Cases

- Recover deleted files from disk images
- Analyze raw forensic images
- Identify embedded file types
- Perform automated file carving
- Support forensic investigations

---

# Common Features

| Feature | Description |
|---|---|
| File Carving | Recover files using signatures |
| Header/Footer Analysis | Detect file boundaries |
| Signature Configuration | Customize recoverable file types |
| Automated Recovery | Extract files in bulk |
| Disk Image Support | Analyze `.dd` images and raw media |

---

# Basic Workflow

## 1. Create Output Directory

```bash
mkdir /home/kali/output
```

---

## 2. Edit Scalpel Configuration

```bash
sudo nano /etc/scalpel/scalpel.conf
```

Enable desired file signatures by uncommenting file types.

Example:

```text
jpg     y       20000000        \xff\xd8\xff\xe0
png     y       20000000        \x89\x50\x4e\x47
pdf     y       20000000        \x25\x50\x44\x46
```

---

## 3. Run Scalpel Against Disk Image

```bash
scalpel -c /etc/scalpel/scalpel.conf image.dd -o /home/kali/output
```

---

## 4. Review Recovered Files

```bash
cd /home/kali/output
ls
```

---

# Example Usage

## Recover Files from Disk Image

```bash
scalpel image.dd -o recovered-files
```

---

## Use Custom Configuration

```bash
scalpel -c scalpel.conf image.dd -o output
```

---

# Common File Signatures

| File Type | Header |
|---|---|
| JPG | `FFD8FFE0` |
| PNG | `89504E47` |
| PDF | `25504446` |
| ZIP | `504B0304` |

---

# Notes

- Scalpel operates on raw data and disk images.
- File recovery success depends on image integrity and fragmentation.
- Always perform forensic analysis on copies of evidence images.
- Use isolated lab environments for forensic testing.

---

# References

Official Scalpel Documentation:
- https://github.com/sleuthkit/scalpel

File Signatures Reference:
- https://www.garykessler.net/library/file_sigs.html

ANSI Table Reference:
- http://www.alanwood.net/demos/ansi.html