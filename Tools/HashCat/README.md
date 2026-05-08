# Hashcat

## Overview

Hashcat is a password recovery and password auditing tool used to crack password hashes through dictionary attacks, brute-force attacks, rule-based attacks, and hybrid attack techniques.

This tool was used within the NCSA Cybersecurity Home Lab environment to demonstrate password auditing methodologies, hash analysis, and password recovery techniques in a controlled educational lab environment.

---

# Objectives

The primary objectives of using Hashcat in this lab environment were:

- Understand password hashing concepts
- Identify common hash types
- Perform password auditing against captured hashes
- Execute dictionary and brute-force attacks
- Analyze password complexity and weaknesses
- Understand password security best practices

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Tool | Hashcat |
| Wordlists | rockyou.txt |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Features

- Password hash cracking
- Dictionary attacks
- Brute-force attacks
- Hybrid attacks
- Rule-based attacks
- GPU acceleration support
- Multiple hash format support
- Performance benchmarking

---

# Installation

## Verify Existing Installation

```bash
hashcat --help
```

## Install on Kali Linux

```bash
sudo apt update
sudo apt install hashcat
```

---

# Common Hash Types

| Hash Type | Mode |
|---|---|
| MD5 | 0 |
| SHA1 | 100 |
| SHA256 | 1400 |
| SHA512 | 1700 |
| NTLM | 1000 |

---

# Identify Hash Type

## Example MD5 Hash

```text
5f4dcc3b5aa765d61d8327deb882cf99
```

## Example SHA256 Hash

```text
5e884898da28047151d0e56f8dc6292773603d0d6aabbdd38...
```

---

# Dictionary Attacks

Dictionary attacks attempt passwords from a predefined wordlist.

## Dictionary Attack Example

```bash
hashcat -m 0 -a 0 hashes.txt /usr/share/wordlists/rockyou.txt
```

Explanation:
- `-m 0` = MD5
- `-a 0` = Dictionary attack

---

# Brute-Force Attacks

Brute-force attacks generate password combinations automatically.

## Brute-Force Example

```bash
hashcat -m 0 -a 3 hashes.txt ?a?a?a?a?a?a
```

Explanation:
- `?a` = all characters
- `-a 3` = brute-force mode

---

# Hybrid Attacks

Hybrid attacks combine wordlists with appended characters.

## Hybrid Example

```bash
hashcat -m 0 -a 6 hashes.txt wordlist.txt ?d?d
```

---

# Rule-Based Attacks

Rules modify existing wordlists to improve password guessing.

## Rule Example

```bash
hashcat -m 0 -a 0 hashes.txt rockyou.txt -r rules/best64.rule
```

---

# View Cracked Passwords

## Show Results

```bash
hashcat --show hashes.txt
```

---

# Benchmark Performance

## Benchmark System

```bash
hashcat -b
```

---

# Common Wordlists

| Wordlist | Purpose |
|---|---|
| rockyou.txt | Common passwords |
| custom.txt | Custom password list |
| seclists | Security testing lists |

---

# Related Labs

- Password Hashing
- Hash Identification
- Dictionary Attacks
- Brute-Force Attacks
- Password Security Analysis

---

# Recommended Screenshots

Recommended screenshots for documentation:
- successful password crack
- hashcat benchmark output
- dictionary attack results
- brute-force attack execution
- identified hash types
- cracked password results

---

# Common Commands

| Command | Purpose |
|---|---|
| hashcat --help | Display help |
| hashcat -m | Specify hash type |
| hashcat -a | Specify attack mode |
| hashcat --show | Display cracked passwords |
| hashcat -b | Run benchmark |

---

# Common Troubleshooting

## Token Length Exception

### Cause
Incorrect hash mode selected.

### Resolution

Verify hash type and use correct `-m` value.

---

## Wordlist Not Found

### Resolution

Verify wordlist location:

```bash
ls /usr/share/wordlists/
```

---

## Slow Performance

### Resolution
- Enable GPU acceleration if available
- Reduce brute-force mask size
- Use optimized wordlists

---

# Lessons Learned

- Weak passwords are vulnerable to dictionary attacks.
- Password complexity significantly impacts cracking difficulty.
- Different hashing algorithms require different Hashcat modes.
- Rule-based attacks improve password recovery success rates.

---

# Ethical Use Notice

All password auditing documented in this repository was conducted in a controlled educational environment for cybersecurity training purposes only.

Do not attempt unauthorized password cracking or credential attacks against systems without explicit authorization.