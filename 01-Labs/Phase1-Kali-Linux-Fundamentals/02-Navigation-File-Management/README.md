# Navigation & File Management

## Overview

This lab focused on Linux file system navigation, directory traversal, file creation, file manipulation, and organizational workflows within the Kali Linux virtual machine environment.

The purpose of this lab was to develop foundational Linux file management skills commonly used during cybersecurity operations, system administration, scripting, log analysis, and security tooling workflows.

---

# Lab Objectives

The primary objectives of this lab were:

- Understand Linux directory structures
- Navigate the Linux file system
- Create and organize files and directories
- Copy, move, and remove files
- Practice relative and absolute paths
- Understand hidden files and directories
- Develop command-line file management proficiency

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

- Linux navigation
- directory management
- file manipulation
- command-line operations
- hidden file analysis
- path management
- terminal workflow efficiency

---

# Commands Practiced

## Display Current Directory

```bash
pwd
```

Purpose:
- display current working directory

---

## List Directory Contents

```bash
ls
```

---

## List All Files Including Hidden Files

```bash
ls -la
```

Purpose:
- display permissions
- display hidden files
- display ownership information

---

## Change Directory

```bash
cd /path/to/directory
```

Examples:

```bash
cd ..
```

```bash
cd ~
```

```bash
cd /home/kali
```

---

# Directory Management

## Create Directory

```bash
mkdir test-directory
```

---

## Create Nested Directories

```bash
mkdir -p parent/child/grandchild
```

---

## Remove Empty Directory

```bash
rmdir test-directory
```

---

## Remove Directory and Contents

```bash
rm -r directory-name
```

---

# File Management

## Create Empty File

```bash
touch file.txt
```

---

## Copy File

```bash
cp source.txt destination.txt
```

---

## Move or Rename File

```bash
mv file.txt renamed-file.txt
```

---

## Remove File

```bash
rm file.txt
```

---

# Viewing File Contents

## Display File Contents

```bash
cat file.txt
```

---

## View Beginning of File

```bash
head file.txt
```

---

## View End of File

```bash
tail file.txt
```

---

# Hidden Files

Linux hidden files begin with a period (`.`).

Example:

```text
.bashrc
```

Hidden files were viewed using:

```bash
ls -la
```

---

# Relative vs Absolute Paths

## Absolute Path Example

```bash
cd /home/kali/Documents
```

---

## Relative Path Example

```bash
cd ../Documents
```

---

# Verification Tasks

The following tasks were completed during this lab:

- navigated Linux directories
- created and removed directories
- copied and renamed files
- viewed hidden files
- practiced relative and absolute paths
- verified file creation and deletion
- viewed file contents

---

# Recommended Screenshots

Recommended screenshots for documentation:
- `pwd` output
- `ls -la` output
- directory creation
- file creation
- file copy operations
- file rename operations
- hidden file display
- nested directory structure

---

# Common Issues Encountered

| Issue | Resolution |
|---|---|
| Permission denied | Use sudo or modify permissions |
| File not found | Verify path correctness |
| Cannot remove directory | Verify directory is empty |
| Incorrect path usage | Use absolute path verification |

---

# Lessons Learned

- Linux file system navigation is essential for cybersecurity workflows.
- Understanding directory structures improves operational efficiency.
- Hidden files often contain important configuration data.
- Relative and absolute paths are critical for scripting and tool usage.

---

# Related Labs

- Basic Maintenance & Informational Commands
- File Permissions & Process Management
- grep & cut Usage
- Wireshark Traffic Analysis
- Metasploit Exploitation

---

# Notes

- All commands were executed within the Kali Linux virtual machine.
- Administrative privileges may be required for protected directories.
- Proper file organization improves workflow efficiency and documentation management.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.