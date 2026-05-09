# OpenSSL Salting

## Overview

This document covers salting concepts and password-hash generation using OpenSSL within the isolated lab environment.

Salting improves password security by:
- increasing hash uniqueness
- preventing rainbow-table attacks
- improving password-storage security

---

# OpenSSL Password Hashing

## Generate Salted MD5 Hash

```bash
openssl passwd -1 -salt saltsalt password123
```

Purpose:
- generate salted MD5-based password hash

---

# Generate SHA512 Hash

```bash
openssl passwd -6 password123
```

Purpose:
- generate SHA512 password hash

---

# Salting Concepts

Salts:
- add randomness
- produce unique hashes
- improve password security

---

# Example Salted Hash

```text
$1$saltsalt$hashedvalue
```

---

# Verification Tasks

- generated salted hashes
- reviewed hash uniqueness
- analyzed OpenSSL output

---

# Recommended Screenshots

- OpenSSL commands
- salted hashes
- generated outputs

---

# Notes

- Salts significantly improve password protection.
- Unique salts reduce effectiveness of precomputed attacks.
- Strong hashing algorithms improve authentication security.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.