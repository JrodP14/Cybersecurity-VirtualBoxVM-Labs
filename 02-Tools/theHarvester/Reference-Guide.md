# theHarvester Reference Guide

## Basic Enumeration

```bash
theHarvester -d example.com -b bing
```

---

# Save Output

```bash
theHarvester -d example.com -b bing -f output.html
```

---

# Limit Results

```bash
theHarvester -d example.com -b bing -l 100
```

---

# Common Data Sources

| Source | Purpose |
|---|---|
| bing | Search engine results |
| google | Search engine results |
| crtsh | Certificate transparency |
| linkedin | Public employee information |

---

# Common Flags

| Flag | Purpose |
|---|---|
| -d | Target domain |
| -b | Data source |
| -f | Save output |
| -l | Result limit |

---

# Useful Notes

- theHarvester performs passive OSINT reconnaissance.
- Public search engines expose organizational metadata.
- Exported reports support documentation and analysis.

---

# Common Troubleshooting

## No Results Returned

### Verify:
- domain formatting
- internet connectivity
- selected data source