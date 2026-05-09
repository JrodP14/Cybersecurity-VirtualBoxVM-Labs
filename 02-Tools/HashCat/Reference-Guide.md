# Hashcat Reference Guide

## Verify Installation

```bash
hashcat --help
```

---

# Common Hash Modes

| Hash Type | Mode |
|---|---|
| MD5 | 0 |
| SHA1 | 100 |
| SHA256 | 1400 |
| SHA512 | 1700 |
| NTLM | 1000 |

---

# Dictionary Attacks

## Basic Dictionary Attack

```bash
hashcat -m 0 -a 0 hashes.txt /usr/share/wordlists/rockyou.txt
```

## Dictionary Attack with Rules

```bash
hashcat -m 0 -a 0 hashes.txt rockyou.txt -r rules/best64.rule
```

---

# Brute-Force Attacks

## Basic Brute-Force Attack

```bash
hashcat -m 0 -a 3 hashes.txt ?a?a?a?a?a?a
```

## Numeric Brute-Force

```bash
hashcat -m 0 -a 3 hashes.txt ?d?d?d?d
```

---

# Hybrid Attacks

## Wordlist + Numbers

```bash
hashcat -m 0 -a 6 hashes.txt wordlist.txt ?d?d
```

---

# Display Cracked Passwords

## Show Results

```bash
hashcat --show hashes.txt
```

---

# Benchmark System

## Performance Benchmark

```bash
hashcat -b
```

---

# Common Masks

| Mask | Meaning |
|---|---|
| ?a | All characters |
| ?l | Lowercase letters |
| ?u | Uppercase letters |
| ?d | Digits |
| ?s | Special characters |

---

# Common Commands

| Command | Purpose |
|---|---|
| hashcat -m | Specify hash type |
| hashcat -a | Specify attack mode |
| hashcat --show | Display cracked passwords |
| hashcat -b | Run benchmark |
| hashcat --help | Display help menu |

---

# Useful Wordlists

| Wordlist | Location |
|---|---|
| rockyou.txt | /usr/share/wordlists/ |
| SecLists | /usr/share/seclists/ |

---

# Common Troubleshooting

## Token Length Exception

### Cause
Incorrect hash type selected.

### Resolution
Verify correct hash mode.

---

## Wordlist Missing

### Resolution

```bash
ls /usr/share/wordlists/
```

---

## Slow Cracking Speed

### Recommendations
- Reduce mask size
- Use optimized wordlists
- Enable GPU acceleration if supported

---

# Useful Notes

- Dictionary attacks are faster than brute-force attacks.
- Longer passwords significantly increase cracking difficulty.
- Rule-based attacks improve wordlist effectiveness.
- GPU acceleration greatly improves performance.

---

# Related Labs

- Password Hashing
- Dictionary Attacks
- Brute-Force Attacks
- Password Security Auditing