# Processing Exercises

## Overview

This document contains practical exercises, command pipelines, filtering workflows, and structured text-processing activities completed throughout the **grep & cut Processing** lab within the Kali Linux virtual machine environment.

The exercises documented here were designed to reinforce:
- Linux text processing
- field extraction
- command chaining
- output filtering
- log analysis
- cybersecurity data parsing workflows

---

# Exercise 1 — User Enumeration

## Objective

Extract usernames from the Linux passwd file.

---

## Command

```bash
cut -d ":" -f 1 /etc/passwd
```

---

## Skills Practiced

- field extraction
- delimiter usage
- Linux account enumeration

---

# Exercise 2 — Shell Enumeration

## Objective

Identify users assigned the bash shell.

---

## Command

```bash
grep "bash" /etc/passwd
```

---

## Advanced Version

```bash
grep "bash" /etc/passwd | cut -d ":" -f 1
```

---

## Skills Practiced

- pattern matching
- command pipelines
- user analysis

---

# Exercise 3 — Process Filtering

## Objective

Filter running processes to locate SSH services.

---

## Command

```bash
ps aux | grep ssh
```

---

## Skills Practiced

- process filtering
- pipeline usage
- service analysis

---

# Exercise 4 — Listening Port Analysis

## Objective

Identify listening services and open ports.

---

## Command

```bash
netstat -tunap | grep LISTEN
```

---

## Skills Practiced

- network connection analysis
- service enumeration
- output filtering

---

# Exercise 5 — Recursive Search

## Objective

Search recursively for a keyword within directories.

---

## Command

```bash
grep -r "password" /home/kali/
```

---

## Skills Practiced

- recursive searching
- directory analysis
- keyword filtering

---

# Exercise 6 — Failed Login Detection

## Objective

Search authentication logs for failed login attempts.

---

## Command

```bash
grep -i "failed" /var/log/auth.log
```

---

## Skills Practiced

- log analysis
- security event filtering
- incident investigation

---

# Exercise 7 — Count Matching Entries

## Objective

Count matching occurrences within a file.

---

## Command

```bash
grep -c "root" file.txt
```

---

## Skills Practiced

- counting matches
- filtering statistics
- data analysis

---

# Exercise 8 — Extract Character Ranges

## Objective

Extract specific character positions from text.

---

## Command

```bash
cut -c 1-10 file.txt
```

---

## Skills Practiced

- character extraction
- fixed-position parsing

---

# Exercise 9 — CSV Field Extraction

## Objective

Extract specific fields from CSV-style data.

---

## Command

```bash
cut -d "," -f 2 users.csv
```

---

## Skills Practiced

- CSV parsing
- delimiter management
- structured data extraction

---

# Exercise 10 — Excluding Results

## Objective

Display lines not matching a keyword.

---

## Command

```bash
grep -v "success" logfile.txt
```

---

## Skills Practiced

- inverse matching
- output exclusion
- filtering refinement

---

# Exercise 11 — Line Number Identification

## Objective

Display matching line numbers.

---

## Command

```bash
grep -n "error" logfile.txt
```

---

## Skills Practiced

- line tracking
- debugging support
- log investigation

---

# Exercise 12 — Multiple Pattern Matching

## Objective

Search for multiple terms simultaneously.

---

## Command

```bash
grep -E "error|warning|failed" logfile.txt
```

---

## Skills Practiced

- regex-style filtering
- multi-condition searching
- log triage

---

# Exercise 13 — Group Enumeration

## Objective

Extract Linux group names.

---

## Command

```bash
cut -d ":" -f 1 /etc/group
```

---

## Skills Practiced

- group enumeration
- structured file parsing

---

# Exercise 14 — Exact Word Matching

## Objective

Search for exact words only.

---

## Command

```bash
grep -w "root" file.txt
```

---

## Skills Practiced

- precise filtering
- false-positive reduction

---

# Exercise 15 — Highlight Search Results

## Objective

Display highlighted matching output.

---

## Command

```bash
grep --color=auto "error" logfile.txt
```

---

## Skills Practiced

- visual filtering
- analysis readability

---

# Verification Tasks

The following tasks were completed during this lab:

- parsed system files
- filtered running processes
- analyzed authentication logs
- extracted structured data
- combined pipelines
- processed CSV-style text
- filtered active connections
- counted matching entries

---

# Recommended Screenshots

Recommended screenshots for documentation:
- passwd parsing
- grep pipelines
- recursive searches
- failed login filtering
- listening port analysis
- CSV extraction
- line number filtering
- multiple-pattern matching

---

# Common Troubleshooting

## No Results Returned

### Verify:
- search term spelling
- file contents
- delimiter selection

---

## Incorrect Field Extraction

### Verify:
- field number
- delimiter usage
- spacing consistency

---

## Permission Denied

### Resolution

Use elevated privileges:

```bash
sudo
```

---

## Large Recursive Searches

### Resolution

Limit search scope to reduce processing time.

---

# Lessons Learned

- Linux text-processing tools are essential for cybersecurity investigations.
- grep and cut significantly improve analysis efficiency.
- Pipelines simplify automation and workflow chaining.
- Structured data parsing supports log analysis and reconnaissance.

---

# Notes

- Exercises were completed within the Kali Linux virtual machine environment.
- Text-processing utilities are heavily used in SOC, DFIR, and Linux administration workflows.
- Proper filtering improves investigation accuracy and efficiency.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.