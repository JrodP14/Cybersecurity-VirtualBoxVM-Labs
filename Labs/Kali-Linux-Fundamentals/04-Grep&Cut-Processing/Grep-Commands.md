# grep Commands

## Overview

This document contains commonly used `grep` commands, filtering techniques, and text-processing workflows practiced throughout the **grep & cut Processing** lab within the Kali Linux virtual machine environment.

The commands documented here support:
- text searching
- log filtering
- process analysis
- output parsing
- recursive searching
- Linux data processing
- cybersecurity investigations

---

# Basic grep Syntax

## Basic Search

```bash
grep "text" file.txt
```

Purpose:
- search file for matching text

---

# Case-Insensitive Searching

## Ignore Capitalization

```bash
grep -i "error" logfile.txt
```

Purpose:
- match text regardless of case

---

# Recursive Searching

## Search Directories Recursively

```bash
grep -r "password" /home/kali/
```

Purpose:
- search all files within directory structure

---

# Display Line Numbers

## Show Matching Line Numbers

```bash
grep -n "failed" auth.log
```

Purpose:
- identify exact match locations

---

# Inverted Matching

## Display Non-Matching Lines

```bash
grep -v "success" logfile.txt
```

Purpose:
- exclude matching entries

---

# Counting Matches

## Count Matching Lines

```bash
grep -c "root" file.txt
```

Purpose:
- count occurrences

---

# Exact Word Matching

## Match Whole Words Only

```bash
grep -w "root" file.txt
```

Purpose:
- prevent partial-word matches

---

# Multiple Pattern Matching

## Search Multiple Terms

```bash
grep -E "error|failed|warning" logfile.txt
```

Purpose:
- match multiple patterns

---

# Searching System Files

## Search passwd File

```bash
grep "bash" /etc/passwd
```

Purpose:
- identify users with bash shell

---

## Search Group File

```bash
grep "sudo" /etc/group
```

Purpose:
- identify sudo group members

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
- identify listening services

---

## Filter Open Ports

```bash
ss -tuln | grep 80
```

Purpose:
- identify services using port 80

---

# Recursive Log Searching

## Search Authentication Logs

```bash
grep -i "failed" /var/log/auth.log
```

Purpose:
- identify authentication failures

---

## Search Multiple Files

```bash
grep "error" *.log
```

Purpose:
- search all log files in directory

---

# Highlight Matching Text

## Colorized Matches

```bash
grep --color=auto "error" logfile.txt
```

Purpose:
- visually highlight matching terms

---

# Combining grep with Other Commands

## grep and cut

```bash
cat /etc/passwd | grep bash | cut -d ":" -f 1
```

Purpose:
- display usernames using bash shell

---

## grep and sort

```bash
grep "failed" auth.log | sort
```

Purpose:
- organize matching output

---

## grep and wc

```bash
grep "error" logfile.txt | wc -l
```

Purpose:
- count matching entries

---

# Verification Tasks

The following tasks were completed during this lab:

- searched files using grep
- filtered process output
- analyzed logs
- searched recursively
- counted matching entries
- filtered network connections
- combined grep with pipelines
- parsed system files

---

# Recommended Screenshots

Recommended screenshots for documentation:
- recursive grep searches
- process filtering
- passwd file filtering
- listening service filtering
- grep pipelines
- log analysis examples
- highlighted search results
- multiple-pattern searches

---

# Common Troubleshooting

## No Results Returned

### Verify:
- search term spelling
- file contents
- capitalization

---

## Permission Denied

### Resolution

Use elevated privileges:

```bash
sudo
```

---

## Recursive Search Too Large

### Resolution

Limit search directory scope.

---

## False Positive Matches

### Resolution

Use exact matching:

```bash
grep -w
```

---

# Useful Notes

- grep is one of the most important Linux text-processing tools.
- Recursive searches can consume significant resources.
- grep is heavily used in SOC and DFIR workflows.
- Pipelines improve filtering and automation efficiency.

---

# Lessons Learned

- Efficient text filtering improves investigation speed.
- grep simplifies log analysis and process monitoring.
- Command pipelines support automation and workflow optimization.
- Recursive searching supports large-scale file analysis.

---

# Notes

- Commands were executed within the Kali Linux virtual machine environment.
- Administrative privileges may be required for protected files and logs.
- Proper filtering reduces analysis noise and improves investigation accuracy.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.