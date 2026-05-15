# Sublist3r Reference Guide

## Enumerate Subdomains

```bash
python3 sublist3r.py -d example.com
```

---

# Export Results

```bash
python3 sublist3r.py -d example.com -o results.txt
```

---

# Verbose Mode

```bash
python3 sublist3r.py -d example.com -v
```

---

# Common Flags

| Flag | Purpose |
|---|---|
| -d | Target domain |
| -o | Save output |
| -v | Verbose mode |
| -t | Thread count |

---

# Useful Notes

- Sublist3r performs passive reconnaissance.
- Enumeration results depend on public DNS exposure.
- Exported results support further analysis.

---

# Common Troubleshooting

## No Results Returned

### Verify:
- target domain formatting
- internet connectivity
- dependency installation