# Attack Modes

## Overview

This document covers common Hashcat attack modes and password-auditing workflows reviewed during the password-security lab.

Attack modes determine how candidate passwords are generated during password analysis.

---

# Common Attack Modes

| Mode | Description |
|---|---|
| 0 | Straight/Dictionary Attack |
| 3 | Brute-Force/Mask Attack |
| 6 | Hybrid Wordlist + Mask |
| 7 | Hybrid Mask + Wordlist |

---

# Straight Attack

## Dictionary Attack

```bash
hashcat -a 0 -m 0 hashes.txt rockyou.txt
```

Purpose:
- test passwords from wordlists

---

# Brute-Force Attack

## Mask Attack

```bash
hashcat -a 3 -m 1000 hashes.txt ?a?a?a?a?a?a
```

Purpose:
- generate passwords using character masks

---

# Hybrid Attack

## Wordlist + Mask

```bash
hashcat -a 6 -m 1000 hashes.txt rockyou.txt ?d?d
```

Purpose:
- append characters to wordlist entries

---

# Common Mask Characters

| Mask | Meaning |
|---|---|
| ?a | All characters |
| ?d | Digits |
| ?l | Lowercase letters |
| ?u | Uppercase letters |

---

# Verification Tasks

- reviewed attack modes
- performed dictionary attacks
- tested mask attacks
- analyzed hybrid attacks

---

# Recommended Screenshots

- dictionary attacks
- brute-force examples
- hybrid attack output
- mask configurations

---

# Notes

- Brute-force attacks require significant time and resources.
- Wordlist attacks are often more efficient.
- Password complexity impacts attack success.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.