# Cracking Workflows

## Overview

This document covers structured password-auditing workflows and hash-analysis procedures reviewed during the Hashcat password-security lab.

The workflow focused on:
- identifying hashes
- selecting attack methods
- performing password analysis
- validating recovered credentials

---

# Workflow Overview

Typical workflow:
1. Identify hash type
2. Select hash mode
3. Choose attack method
4. Configure wordlists or masks
5. Execute Hashcat
6. Review recovered passwords

---

# Step 1 — Identify Hash Type

## Hash Identification

```bash
hashid hashes.txt
```

Purpose:
- determine hash algorithm

---

# Step 2 — Select Hash Mode

## Example Modes

| Mode | Algorithm |
|---|---|
| 0 | MD5 |
| 1000 | NTLM |
| 1800 | SHA512crypt |

---

# Step 3 — Configure Attack

## Dictionary Attack

```bash
hashcat -a 0 -m 1000 hashes.txt rockyou.txt
```

Purpose:
- test passwords from wordlist

---

# Step 4 — Review Results

## Show Recovered Passwords

```bash
hashcat --show hashes.txt
```

Purpose:
- display successfully recovered credentials

---

# Common Workflow Considerations

Reviewed:
- password complexity
- wordlist effectiveness
- attack duration
- hardware performance

---

# Verification Tasks

- identified hashes
- selected attack modes
- executed password-auditing workflows
- reviewed recovered passwords

---

# Recommended Screenshots

- hash identification
- Hashcat execution
- attack progress
- recovered passwords
- cracking statistics

---

# Notes

- Password complexity impacts cracking success rates.
- Hardware acceleration improves performance.
- Structured workflows improve password-auditing efficiency.

---

# Ethical Use Notice

All activities documented within this repository were performed in authorized educational cybersecurity lab environments for training and research purposes only.