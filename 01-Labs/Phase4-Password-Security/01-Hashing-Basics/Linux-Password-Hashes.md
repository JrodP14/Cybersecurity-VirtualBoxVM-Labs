# Linux Password Hashes

## Overview

This document covers Linux password storage concepts and analysis of password hashes stored within Linux authentication files.

---

# Linux Password Storage

Linux password hashes are commonly stored in:

```text
/etc/shadow
```

---

# Viewing Shadow File

```bash
sudo cat /etc/shadow
```

Purpose:
- inspect password hash structure

---

# Shadow File Structure

Typical format:

```text
username:hash:lastchange:min:max:warn:inactive:expire
```

---

# Salts

Salts are random values added to passwords before hashing to:
- prevent rainbow-table attacks
- improve uniqueness
- increase security

---

# Common Linux Hash Types

| Prefix | Algorithm |
|---|---|
| `$1$` | MD5 |
| `$5$` | SHA256 |
| `$6$` | SHA512 |

---

# Verification Tasks

- reviewed shadow file
- identified hash types
- analyzed Linux password storage

---

# Recommended Screenshots

- shadow file analysis
- Linux hash examples
- hash prefixes

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.