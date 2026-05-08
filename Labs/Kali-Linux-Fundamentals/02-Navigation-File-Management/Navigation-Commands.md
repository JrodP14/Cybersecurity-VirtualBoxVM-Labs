# Navigation Commands

## Overview

This document contains the primary Linux navigation and file management commands practiced throughout the **Navigation & File Management** lab within the Kali Linux virtual machine environment.

The commands documented here support:
- directory navigation
- file management
- directory management
- file viewing
- workflow organization
- Linux command-line proficiency

---

# Display Current Directory

## Print Working Directory

```bash
pwd
```

Purpose:
- display current working directory

---

# List Directory Contents

## Basic Directory Listing

```bash
ls
```

Purpose:
- display visible files and directories

---

## Detailed Directory Listing

```bash
ls -l
```

Purpose:
- display permissions
- ownership
- file sizes
- timestamps

---

## Show Hidden Files

```bash
ls -la
```

Purpose:
- display hidden files
- display detailed file information

---

# Directory Navigation

## Change Directory

```bash
cd /path/to/directory
```

Purpose:
- navigate file system

---

## Move Up One Directory

```bash
cd ..
```

Purpose:
- navigate to parent directory

---

## Return to Home Directory

```bash
cd ~
```

Alternative:

```bash
cd
```

Purpose:
- return to user home directory

---

## Navigate Using Absolute Path

```bash
cd /home/kali/Documents
```

Purpose:
- navigate using full directory path

---

## Navigate Using Relative Path

```bash
cd ../Documents
```

Purpose:
- navigate relative to current directory

---

# Directory Management

## Create Directory

```bash
mkdir test-directory
```

Purpose:
- create new directory

---

## Create Nested Directories

```bash
mkdir -p parent/child/grandchild
```

Purpose:
- create multiple nested directories

---

## Remove Empty Directory

```bash
rmdir test-directory
```

Purpose:
- remove empty directory

---

## Remove Directory and Contents

```bash
rm -r directory-name
```

Purpose:
- recursively delete directory

---

# File Management

## Create Empty File

```bash
touch file.txt
```

Purpose:
- create empty file

---

## Copy File

```bash
cp source.txt destination.txt
```

Purpose:
- duplicate files

---

## Copy Directory

```bash
cp -r directory1 directory2
```

Purpose:
- recursively copy directories

---

## Move File

```bash
mv file.txt /destination/
```

Purpose:
- move file to another location

---

## Rename File

```bash
mv oldname.txt newname.txt
```

Purpose:
- rename file

---

## Remove File

```bash
rm file.txt
```

Purpose:
- delete file

---

# Viewing File Contents

## Display Entire File

```bash
cat file.txt
```

Purpose:
- display file contents

---

## View Beginning of File

```bash
head file.txt
```

Purpose:
- display first lines of file

---

## View End of File

```bash
tail file.txt
```

Purpose:
- display last lines of file

---

## Paginated File Viewing

```bash
less file.txt
```

Purpose:
- scroll through file contents

---

# File Searching

## Locate Files

```bash
find /home/kali -name file.txt
```

Purpose:
- search for files by name

---

# Hidden Files

## Hidden File Example

```text
.bashrc
```

Purpose:
- Linux configuration and environment customization

---

# Useful Shortcuts

| Shortcut | Purpose |
|---|---|
| `Tab` | Auto-complete commands/files |
| `Ctrl + C` | Stop running process |
| `Ctrl + L` | Clear terminal |
| `Up Arrow` | Previous command history |

---

# Verification Commands

## Verify Current Directory

```bash
pwd
```

---

## Verify File Creation

```bash
ls -la
```

---

## Verify Directory Structure

```bash
tree
```

Alternative if not installed:

```bash
ls -R
```

---

# Common Troubleshooting

## File Not Found

### Verify:
- file path
- spelling
- current directory

---

## Permission Denied

### Resolution

Use:

```bash
sudo
```

Or modify permissions:

```bash
chmod
```

---

## Directory Not Empty

### Resolution

Use recursive removal carefully:

```bash
rm -r directory-name
```

---

# Useful Notes

- Hidden files begin with a period (`.`).
- Relative paths depend on current directory location.
- Absolute paths begin at the root directory (`/`).
- Recursive deletion permanently removes files and directories.

---

# Notes

- Commands were executed within the Kali Linux virtual machine environment.
- Administrative privileges may be required for protected directories.
- Proper file organization improves workflow efficiency.

---

# Ethical Use Notice

All commands documented within this repository were executed in authorized educational cybersecurity lab environments for training and research purposes only.