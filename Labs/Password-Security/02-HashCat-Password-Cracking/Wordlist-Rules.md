# Wordlists & Rules

## Overview

This document covers wordlist usage, password mutation rules, and candidate-password generation workflows reviewed during the Hashcat password-auditing lab.

Wordlists and rules improve:
- password-guessing efficiency
- attack optimization
- password auditing realism

---

# Common Wordlists

| Wordlist | Purpose |
|---|---|
| rockyou.txt | Common passwords |
| custom lists | Environment-specific testing |
| generated lists | Pattern-based analysis |

---

# RockYou Wordlist

Typical location:

```text
/usr/share/wordlists/rockyou.txt
```

---

# Basic Wordlist Attack

```bash
hashcat -m 0 hashes.txt rockyou.txt
```

Purpose:
- test passwords from common password lists

---

# Rules

Rules modify wordlist entries by:
- appending numbers
- changing capitalization
- adding symbols
- mutating patterns

---

# Example Rule Usage

```bash
hashcat -m 1000 hashes.txt rockyou.txt -r rules/best64.rule
```

Purpose:
- apply mutation rules to wordlist entries

---

# Common Password Patterns

Examples:
- Password123
- Summer2025
- Welcome1

---

# Verification Tasks

- used RockYou wordlist
- reviewed password mutation rules
- analyzed password patterns
- tested rule-based attacks

---

# Recommended Screenshots

- wordlist usage
- rule configuration
- password mutations
- Hashcat results

---

# Notes

- Weak password patterns increase cracking risk.
- Mutation rules improve attack effectiveness.
- Password reuse significantly increases exposure.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.