# grep & cut Usage

## Overview

This lab focused on Linux text processing, data filtering, pattern matching, and field extraction using the `grep` and `cut` commands within the Kali Linux virtual machine environment.

The purpose of this lab was to develop foundational text-processing skills commonly used in cybersecurity operations, log analysis, scripting, system administration, and reconnaissance workflows.

---

# Lab Objectives

The primary objectives of this lab were:

- Understand pattern matching with `grep`
- Search files for keywords and strings
- Filter command output
- Extract fields from structured text using `cut`
- Practice command chaining and pipelines
- Analyze logs and configuration data
- Improve command-line data processing skills

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| VM IP Address | 10.0.2.3 |
| Hypervisor | VirtualBox |
| Network Type | NAT Network |
| Subnet | 10.0.2.0/24 |

---

# Skills Developed

- text searching
- output filtering
- field extraction
- command pipelines
- Linux log analysis
- command-line efficiency
- data parsing

---

# grep Usage

## Basic Keyword Search

```bash
grep "root" file.txt
```

Purpose:
- search file contents for matching text

---

## Case-Insensitive Search

```bash
grep -i "error" logfile.txt
```

Purpose:
- ignore uppercase/lowercase differences

---

## Recursive Search

```bash
grep -r "password" /home/kali/
```

Purpose:
- search directories recursively

---

## Show Line Numbers

```bash
grep -n "failed" auth.log
```

Purpose:
- display matching line numbers

---

## Invert Match

```bash
grep -v "success" logfile.txt
```

Purpose:
- display lines not matching pattern

---

## Count Matches

```bash
grep -c "root" file.txt
```

Purpose:
- count matching lines

---

# Filtering Command Output

## Filter Running Processes

```bash
ps aux | grep apache
```

Purpose:
- locate running processes

---

## Filter Active Connections

```bash
netstat -tunap | grep LISTEN
```

Purpose:
- display listening services

---

# cut Usage

## Extract First Field

```bash
cut -d ":" -f 1 /etc/passwd
```

Purpose:
- extract usernames from passwd file

---

## Extract Multiple Fields

```bash
cut -d ":" -f 1,7 /etc/passwd
```

Purpose:
- display usernames and shells

---

## Extract by Character Position

```bash
cut -c 1-10 file.txt
```

Purpose:
- extract character ranges

---

# Combining grep and cut

## Filter and Extract Data

```bash
cat /etc/passwd | grep bash | cut -d ":" -f 1
```

Purpose:
- display users with bash shells

---

# Pipelines

Pipelines pass output from one command into another using `|`.

Example:

```bash
ps aux | grep ssh
```

Purpose:
- improve filtering efficiency
- chain command functionality

---

# Verification Tasks

The following tasks were completed during this lab:

- searched files using grep
- filtered command output
- extracted fields using cut
- analyzed Linux system files
- combined commands using pipelines
- searched recursively through directories
- displayed line numbers and counts

---

# Recommended Screenshots

Recommended screenshots for documentation:
- grep keyword search
- recursive grep search
- process filtering
- netstat filtering
- cut field extraction
- combined grep and cut usage
- passwd file parsing
- pipeline examples

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| No output returned | Verify search term |
| Incorrect delimiter | Verify field separator |
| Permission denied | Use sudo if necessary |
| Recursive search slow | Narrow search scope |

---

# Lessons Learned

- grep is essential for log analysis and data filtering.
- cut simplifies structured data extraction.
- Pipelines improve Linux workflow efficiency.
- Text-processing commands are heavily used in cybersecurity operations and scripting.

---

# Related Labs

- Basic Maintenance & Informational Commands
- Navigation & File Management
- File Permissions & Process Management
- Nmap Enumeration
- Wireshark Traffic Analysis

---

# Notes

- Linux text-processing utilities are foundational cybersecurity tools.
- Proper filtering improves investigation efficiency.
- System files like `/etc/passwd` provide useful parsing examples.
- Pipelines allow powerful command chaining and automation.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.