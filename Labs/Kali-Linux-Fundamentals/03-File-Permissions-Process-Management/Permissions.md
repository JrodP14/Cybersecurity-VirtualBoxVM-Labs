# Permissions

## Overview

This document contains Linux file permission commands, ownership management workflows, and access-control concepts practiced throughout the **File Permissions & Process Management** lab within the Kali Linux virtual machine environment.

The commands documented here support:
- file permission analysis
- ownership management
- access control
- privilege management
- executable permissions
- Linux security administration

---

# Linux Permission Basics

Linux permissions determine which users can:
- read files
- write files
- execute files

Permission symbols:

| Symbol | Meaning |
|---|---|
| r | Read |
| w | Write |
| x | Execute |

---

# Permission Structure

Example:

```text
-rwxr-xr-x
```

Breakdown:

| Section | Meaning |
|---|---|
| `-` | File type |
| `rwx` | Owner permissions |
| `r-x` | Group permissions |
| `r-x` | Other user permissions |

---

# Viewing Permissions

## List File Permissions

```bash
ls -l
```

Purpose:
- display permissions
- display ownership
- display file details

---

## Show Hidden Files and Permissions

```bash
ls -la
```

Purpose:
- include hidden files
- display full file details

---

# Changing Permissions

## Numeric Permission Format

| Number | Permission |
|---|---|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |

---

## Assign Permissions

```bash
chmod 755 script.sh
```

Purpose:
- assign read/write/execute permissions

Breakdown:
- Owner: `7` = rwx
- Group: `5` = r-x
- Others: `5` = r-x

---

## Read-Only File

```bash
chmod 444 file.txt
```

Purpose:
- make file read-only

---

## Remove Write Permission

```bash
chmod -w file.txt
```

Purpose:
- prevent modification

---

## Add Execute Permission

```bash
chmod +x script.sh
```

Purpose:
- allow file execution

---

# Ownership Management

## Change File Owner

```bash
sudo chown username file.txt
```

Purpose:
- assign ownership

---

## Change File Owner and Group

```bash
sudo chown username:groupname file.txt
```

Purpose:
- modify ownership and group

---

## Recursive Ownership Change

```bash
sudo chown -R username:groupname directory/
```

Purpose:
- recursively modify ownership

---

# Group Permissions

## Change Group Ownership

```bash
sudo chgrp groupname file.txt
```

Purpose:
- assign file group

---

## Verify Group Membership

```bash
groups
```

Purpose:
- display user groups

---

# Permission Verification

## Verify Ownership and Permissions

```bash
ls -l
```

---

## Verify Current User

```bash
whoami
```

---

## Verify User and Group IDs

```bash
id
```

---

# Directory Permissions

Directories use permissions differently:

| Permission | Directory Meaning |
|---|---|
| r | View contents |
| w | Create/delete files |
| x | Enter directory |

---

# Common Permission Examples

## Secure Script

```bash
chmod 700 script.sh
```

Purpose:
- owner-only access

---

## Shared Read Access

```bash
chmod 644 file.txt
```

Purpose:
- owner write access
- shared read access

---

## Public Script Execution

```bash
chmod 755 script.sh
```

Purpose:
- executable by all users

---

# Sudo Privileges

## Execute Administrative Commands

```bash
sudo command
```

Purpose:
- temporarily elevate privileges

---

## Root Shell Access

```bash
sudo su
```

Purpose:
- obtain root shell

---

# Verification Tasks

The following tasks were completed during this lab:

- viewed file permissions
- modified permissions
- changed file ownership
- assigned execute permissions
- verified group memberships
- practiced recursive ownership changes
- analyzed directory permissions

---

# Recommended Screenshots

Recommended screenshots for documentation:
- `ls -l` output
- permission modifications
- ownership changes
- executable script permissions
- recursive ownership examples
- group verification
- directory permission changes

---

# Common Troubleshooting

## Permission Denied

### Resolution

Use elevated privileges:

```bash
sudo
```

Or modify permissions:

```bash
chmod
```

---

## Cannot Execute File

### Resolution

Add execute permission:

```bash
chmod +x script.sh
```

---

## Ownership Change Failed

### Resolution

Use:

```bash
sudo chown
```

---

## Incorrect Permissions

### Verify Current Permissions

```bash
ls -l
```

---

# Useful Notes

- File permissions directly impact Linux security.
- Excessive permissions increase security risk.
- Recursive permission changes should be used carefully.
- Root privileges bypass most permission restrictions.

---

# Lessons Learned

- Linux access control is foundational for cybersecurity operations.
- Proper permission management reduces security exposure.
- Ownership and group management improve administrative organization.
- Permission analysis supports incident response and forensic investigations.

---

# Notes

- Administrative privileges are required for many permission changes.
- Improper permissions can expose sensitive files and services.
- Secure permission practices improve operational security.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.