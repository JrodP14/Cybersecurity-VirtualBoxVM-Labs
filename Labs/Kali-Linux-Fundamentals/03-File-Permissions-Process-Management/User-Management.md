# User Management

## Overview

This document contains Linux user management commands, workflows, and operational notes practiced throughout the **File Permissions & Process Management** lab within the Kali Linux virtual machine environment.

The commands documented here support:
- user account management
- privilege management
- password management
- group management
- account verification
- Linux administrative operations

---

# User Information

## Display Current User

```bash
whoami
```

Purpose:
- display currently logged-in user

---

## Display Logged-In Users

```bash
who
```

Purpose:
- display active user sessions

---

## Display User Identity Information

```bash
id
```

Purpose:
- display user ID and group membership

---

# User Account Management

## Create New User

```bash
sudo adduser username
```

Purpose:
- create local user account

---

## Delete User

```bash
sudo deluser username
```

Purpose:
- remove local user account

---

## Delete User and Home Directory

```bash
sudo deluser --remove-home username
```

Purpose:
- completely remove user account and files

---

# Password Management

## Change Current User Password

```bash
passwd
```

Purpose:
- update current user password

---

## Change Another User Password

```bash
sudo passwd username
```

Purpose:
- reset user password

---

# Group Management

## Display Groups for Current User

```bash
groups
```

Purpose:
- display group memberships

---

## Create Group

```bash
sudo groupadd groupname
```

Purpose:
- create new group

---

## Add User to Group

```bash
sudo usermod -aG groupname username
```

Purpose:
- assign group membership

---

## Remove User from Group

```bash
sudo gpasswd -d username groupname
```

Purpose:
- remove user from group

---

# Sudo Privileges

## Add User to sudo Group

```bash
sudo usermod -aG sudo username
```

Purpose:
- grant administrative privileges

---

## Verify sudo Access

```bash
sudo -l
```

Purpose:
- display allowed sudo privileges

---

# Home Directories

## View Home Directory

```bash
cd ~
```

---

## List User Directories

```bash
ls /home
```

Purpose:
- display local user accounts

---

# Account Verification

## View passwd File

```bash
cat /etc/passwd
```

Purpose:
- display local user accounts

---

## Search for Specific User

```bash
grep "username" /etc/passwd
```

Purpose:
- verify account existence

---

# Group Verification

## View Group File

```bash
cat /etc/group
```

Purpose:
- display system groups

---

## Search Group Membership

```bash
grep "sudo" /etc/group
```

Purpose:
- verify administrative users

---

# User Switching

## Switch User

```bash
su username
```

Purpose:
- change active user session

---

## Switch to Root User

```bash
sudo su
```

Purpose:
- obtain root shell access

---

# File Ownership Management

## Change File Ownership

```bash
sudo chown username:groupname file.txt
```

Purpose:
- assign ownership

---

## Change Directory Ownership Recursively

```bash
sudo chown -R username:groupname directory/
```

Purpose:
- recursively assign ownership

---

# Verification Tasks

The following tasks were completed during this lab:

- viewed user accounts
- verified group memberships
- created users
- changed passwords
- modified permissions
- assigned sudo privileges
- verified account information
- inspected passwd and group files

---

# Recommended Screenshots

Recommended screenshots for documentation:
- `whoami` output
- `id` output
- user creation
- group membership verification
- passwd file inspection
- sudo group verification
- ownership changes
- password modification

---

# Common Troubleshooting

## Permission Denied

### Resolution

Use elevated privileges:

```bash
sudo
```

---

## User Already Exists

### Verify Existing Accounts

```bash
cat /etc/passwd
```

---

## Cannot Access sudo

### Verify Group Membership

```bash
groups
```

---

## Ownership Change Failed

### Resolution

Use:

```bash
sudo chown
```

---

# Useful Notes

- Linux separates privileges through users and groups.
- Root access provides unrestricted system control.
- Sudo access should be restricted to authorized users.
- File ownership impacts file accessibility and security.

---

# Lessons Learned

- User management is essential for Linux administration and cybersecurity operations.
- Proper privilege management improves operational security.
- Group membership simplifies access control administration.
- Account auditing supports security monitoring and incident response.

---

# Notes

- Administrative privileges are required for most account-management operations.
- User and group information is stored in `/etc/passwd` and `/etc/group`.
- Improper privilege assignment may introduce security risks.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.