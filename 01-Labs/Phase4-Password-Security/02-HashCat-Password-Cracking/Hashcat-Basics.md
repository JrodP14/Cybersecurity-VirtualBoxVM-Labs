# Hashcat Basics

## Overview

This document covers foundational Hashcat usage, password-auditing concepts, hash-cracking workflows, and common command usage within the isolated cybersecurity lab environment.

Hashcat supports:
- password auditing
- authentication testing
- hash analysis
- password-security assessments

---

# What Is Hashcat?

Hashcat is a password-recovery and password-auditing tool designed to:
- crack password hashes
- test password strength
- evaluate authentication security

---

# Common Hashcat Components

| Component | Purpose |
|---|---|
| Hash Mode | Defines hash type |
| Attack Mode | Defines cracking method |
| Wordlist | Candidate passwords |
| Rules | Word mutations |

---

# Display Hardware Information

## Show Available Devices

```bash
hashcat -I
```

Purpose:
- verify CPU/GPU support

---

# Basic Wordlist Attack

## MD5 Example

```bash
hashcat -m 0 hashes.txt rockyou.txt
```

Purpose:
- perform dictionary attack against MD5 hashes

---

# Show Cracked Passwords

```bash
hashcat --show hashes.txt
```

Purpose:
- display recovered passwords

---

# Restore Interrupted Session

```bash
hashcat --restore
```

Purpose:
- resume interrupted cracking session

---

# Common Hash Modes

| Mode | Algorithm |
|---|---|
| 0 | MD5 |
| 1000 | NTLM |
| 1800 | SHA512crypt |
| 3200 | bcrypt |

---

# Verification Tasks

- launched Hashcat
- identified hash modes
- performed basic cracking attacks
- reviewed recovered passwords

---

# Recommended Screenshots

- Hashcat startup
- device information
- cracking progress
- recovered passwords

---

# Notes

- Hashcat performance depends on hardware capabilities.
- Password auditing improves authentication awareness.
- Strong password policies reduce cracking success rates.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.