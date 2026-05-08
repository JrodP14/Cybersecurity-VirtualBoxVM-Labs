# grep & cut Processing

## Overview

This lab focused on Linux text processing, command-line filtering, field extraction, and data parsing using the `grep` and `cut` utilities within the Kali Linux virtual machine environment.

The purpose of this lab was to develop foundational data-processing and log-analysis skills commonly used in cybersecurity operations, scripting, system administration, reconnaissance, and incident response workflows.

---

# Lab Objectives

The primary objectives of this lab were:

- Understand pattern matching with `grep`
- Search files and command output for keywords
- Extract structured data using `cut`
- Practice Linux command pipelines
- Analyze system files and logs
- Filter process and network information
- Improve command-line data-processing efficiency

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

- text processing
- output filtering
- field extraction
- Linux pipelines
- command chaining
- log analysis
- system parsing
- command-line efficiency

---

# grep Usage

## Basic Pattern Matching

```bash
grep "root" file.txt
```

Purpose:
- search for matching text patterns

---

## Case-Insensitive Search

```bash
grep -i "error" logfile.txt
```

Purpose:
- ignore capitalization differences

---

## Recursive Search

```bash
grep -r "password" /home/kali/
```

Purpose:
- search directories recursively

---

## Display Line Numbers

```bash
grep -n "failed" auth.log
```

Purpose:
- identify matching line locations

---

## Invert Search Results

```bash
grep -v "success" logfile.txt
```

Purpose:
- display non-matching lines

---

## Count Matches

```bash
grep -c "root" file.txt
```

Purpose:
- count matching entries

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

## Extract Character Ranges

```bash
cut -c 1-10 file.txt
```

Purpose:
- extract fixed character ranges

---

# Pipelines

Pipelines use `|` to pass output between commands.

---

## Filter Running Processes

```bash
ps aux | grep apache
```

Purpose:
- locate running services

---

## Filter Active Network Connections

```bash
netstat -tunap | grep LISTEN
```

Purpose:
- identify listening ports

---

## Combined grep and cut Example

```bash
cat /etc/passwd | grep bash | cut -d ":" -f 1
```

Purpose:
- display users using bash shell

---

# Common Analysis Workflows

## Process Filtering

Used to:
- identify suspicious processes
- monitor running services
- analyze active applications

---

## Log Filtering

Used to:
- locate authentication failures
- identify suspicious activity
- extract security-relevant events

---

## User Enumeration

Used to:
- identify system users
- inspect shell assignments
- analyze account information

---

# Verification Tasks

The following tasks were completed during this lab:

- searched files using grep
- filtered command outputs
- extracted fields using cut
- parsed `/etc/passwd`
- filtered active processes
- analyzed network connections
- practiced Linux pipelines
- performed recursive searches

---

# Recommended Screenshots

Recommended screenshots for documentation:
- grep keyword searches
- recursive grep output
- process filtering examples
- cut field extraction
- passwd parsing
- pipeline usage
- listening port filtering
- combined grep and cut examples

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| No matching output | Verify search term |
| Incorrect field extraction | Verify delimiter |
| Permission denied | Use sudo if required |
| Recursive search too broad | Narrow search directory |

---

# Lessons Learned

- Linux text-processing commands are essential for cybersecurity operations.
- grep significantly improves investigation and filtering efficiency.
- cut simplifies extraction of structured information.
- Pipelines improve workflow automation and command-line productivity.

---

# Related Labs

- Basic Maintenance & Informational Commands
- Navigation & File Management
- File Permissions & Process Management
- Nmap Enumeration
- Wireshark Traffic Analysis

---

# Notes

- Text processing is heavily used in SOC, DFIR, and system administration workflows.
- Linux pipelines enable efficient command chaining and automation.
- Proper filtering improves analysis accuracy and investigation speed.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.