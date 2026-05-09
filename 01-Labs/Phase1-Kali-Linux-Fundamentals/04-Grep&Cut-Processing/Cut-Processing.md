# cut Processing

## Overview

This document contains commonly used `cut` commands, field extraction techniques, and structured text-processing workflows practiced throughout the **grep & cut Processing** lab within the Kali Linux virtual machine environment.

The commands documented here support:
- field extraction
- structured text parsing
- log analysis
- user enumeration
- command pipelines
- Linux data processing
- cybersecurity investigations

---

# Basic cut Syntax

## Extract Field from Delimited Text

```bash
cut -d ":" -f 1 file.txt
```

Purpose:
- extract specific field from structured text

---

# Delimiter Usage

## Common Delimiters

| Delimiter | Usage |
|---|---|
| `:` | passwd files |
| `,` | CSV files |
| ` ` | space-separated text |
| `;` | semicolon-separated data |

---

# Field Extraction

## Extract First Field

```bash
cut -d ":" -f 1 /etc/passwd
```

Purpose:
- display usernames

---

## Extract Multiple Fields

```bash
cut -d ":" -f 1,7 /etc/passwd
```

Purpose:
- display usernames and login shells

---

## Extract Range of Fields

```bash
cut -d ":" -f 1-3 /etc/passwd
```

Purpose:
- extract multiple adjacent fields

---

# Character Extraction

## Extract Character Range

```bash
cut -c 1-10 file.txt
```

Purpose:
- extract characters by position

---

## Extract Specific Characters

```bash
cut -c 1,5,8 file.txt
```

Purpose:
- display selected characters

---

# Processing System Files

## Parse passwd File

```bash
cut -d ":" -f 1 /etc/passwd
```

Purpose:
- enumerate local users

---

## Display User Shells

```bash
cut -d ":" -f 1,7 /etc/passwd
```

Purpose:
- identify login shell assignments

---

## Parse Group File

```bash
cut -d ":" -f 1 /etc/group
```

Purpose:
- enumerate system groups

---

# Combining cut with grep

## Filter and Extract Data

```bash
grep "bash" /etc/passwd | cut -d ":" -f 1
```

Purpose:
- display users using bash shell

---

## Filter Active Connections

```bash
netstat -tunap | grep LISTEN | cut -d " " -f 1
```

Purpose:
- extract protocol information

---

# Pipelines

Pipelines use `|` to pass command output into another command.

Example:

```bash
cat file.txt | cut -d ":" -f 1
```

Purpose:
- chain commands together

---

# CSV Processing

## Extract CSV Column

```bash
cut -d "," -f 2 users.csv
```

Purpose:
- extract CSV data columns

---

# Space-Separated Data

## Extract Space-Separated Field

```bash
cut -d " " -f 1 file.txt
```

Purpose:
- process space-delimited text

---

# Verification Tasks

The following tasks were completed during this lab:

- extracted fields from system files
- parsed `/etc/passwd`
- extracted login shell information
- processed structured text
- combined grep and cut
- processed CSV-style data
- practiced pipelines
- extracted character ranges

---

# Recommended Screenshots

Recommended screenshots for documentation:
- passwd parsing
- field extraction examples
- multiple-field extraction
- character extraction
- grep and cut pipelines
- CSV processing
- group file parsing
- shell enumeration

---

# Common Troubleshooting

## Incorrect Output

### Verify:
- delimiter selection
- field number
- file formatting

---

## Missing Data

### Verify:
- file contents
- spacing consistency
- delimiter usage

---

## Unexpected Spacing

### Resolution

Use proper delimiter definitions:

```bash
cut -d " "
```

---

## Permission Denied

### Resolution

Use elevated privileges:

```bash
sudo
```

---

# Useful Notes

- cut works best with structured text data.
- Proper delimiter selection is critical.
- Linux system files commonly use colon-separated formatting.
- Pipelines improve automation and command efficiency.

---

# Lessons Learned

- Structured text processing improves investigation workflows.
- cut simplifies user and system enumeration tasks.
- Combining grep and cut creates efficient filtering pipelines.
- Data extraction skills support scripting and automation activities.

---

# Notes

- Commands were executed within the Kali Linux virtual machine environment.
- Administrative privileges may be required for protected files.
- Text-processing utilities are heavily used in cybersecurity operations and system administration.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.