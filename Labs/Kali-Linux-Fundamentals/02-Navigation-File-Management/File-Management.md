# File Management

## Overview

This document contains the primary Linux file management commands, workflows, and operational notes practiced throughout the **Navigation & File Management** lab within the Kali Linux virtual machine environment.

The commands documented here support:
- file creation
- file modification
- directory management
- file movement
- file deletion
- content viewing
- Linux workflow organization

---

# File Creation

## Create Empty File

```bash
touch file.txt
```

Purpose:
- create new empty file

---

## Create Multiple Files

```bash
touch file1.txt file2.txt file3.txt
```

Purpose:
- create multiple files simultaneously

---

# Directory Creation

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
- create nested directory structure

---

# Listing Files & Directories

## Basic Listing

```bash
ls
```

Purpose:
- display visible files and directories

---

## Detailed Listing

```bash
ls -l
```

Purpose:
- display permissions
- ownership
- timestamps
- file sizes

---

## Show Hidden Files

```bash
ls -la
```

Purpose:
- display hidden files
- display detailed information

---

# Copying Files

## Copy File

```bash
cp source.txt destination.txt
```

Purpose:
- duplicate files

---

## Copy File to Directory

```bash
cp file.txt /home/kali/Documents/
```

Purpose:
- move duplicate file to new location

---

## Copy Directory Recursively

```bash
cp -r directory1 directory2
```

Purpose:
- duplicate directory structure

---

# Moving & Renaming Files

## Move File

```bash
mv file.txt /destination/
```

Purpose:
- relocate file

---

## Rename File

```bash
mv oldname.txt newname.txt
```

Purpose:
- rename file

---

## Rename Directory

```bash
mv old-directory new-directory
```

Purpose:
- rename directory

---

# Removing Files & Directories

## Remove File

```bash
rm file.txt
```

Purpose:
- delete file

---

## Remove Empty Directory

```bash
rmdir test-directory
```

Purpose:
- delete empty directory

---

## Remove Directory Recursively

```bash
rm -r directory-name
```

Purpose:
- remove directory and contents

---

## Force Remove

```bash
rm -rf directory-name
```

Purpose:
- force recursive deletion

Warning:
- permanently deletes files and directories

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
- display first lines

---

## View End of File

```bash
tail file.txt
```

Purpose:
- display last lines

---

## Scroll Through File

```bash
less file.txt
```

Purpose:
- paginated file viewing

---

# File Searching

## Find File by Name

```bash
find /home/kali -name file.txt
```

Purpose:
- search file system

---

# File Permissions Overview

## Display File Permissions

```bash
ls -l
```

Example output:

```text
-rwxr-xr-x
```

Permission meanings:
- `r` = read
- `w` = write
- `x` = execute

---

# Hidden Files

Hidden files begin with a period (`.`).

Example:

```text
.bashrc
```

Displayed using:

```bash
ls -la
```

---

# Helpful Workflow Commands

## Display Current Directory

```bash
pwd
```

---

## Navigate to Home Directory

```bash
cd ~
```

---

## Move Up One Directory

```bash
cd ..
```

---

# Verification Tasks

The following tasks were completed during this lab:

- created files and directories
- copied files
- renamed files and directories
- removed files and folders
- viewed hidden files
- displayed file permissions
- viewed file contents
- navigated directory structures

---

# Recommended Screenshots

Recommended screenshots for documentation:
- file creation
- directory creation
- nested directories
- hidden file display
- file copy operations
- file rename operations
- recursive directory listing
- file permission output

---

# Common Troubleshooting

## File Not Found

### Verify:
- file path
- spelling
- current working directory

---

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

## Cannot Remove Directory

### Cause
Directory contains files.

### Resolution

Use recursive deletion carefully:

```bash
rm -r directory-name
```

---

# Useful Notes

- Linux file systems are case-sensitive.
- Recursive deletion permanently removes files.
- Hidden files often store configuration information.
- Proper file organization improves workflow efficiency.

---

# Lessons Learned

- Linux file management skills are essential for cybersecurity workflows.
- Proper directory organization improves operational efficiency.
- File permissions directly impact security and accessibility.
- Command-line file operations are significantly faster for administrative tasks.

---

# Notes

- All commands were executed within the Kali Linux virtual machine environment.
- Administrative privileges may be required for protected directories.
- File organization supports documentation and evidence management.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.