# Google Dorking Reference Guide

## Domain-Specific Search

```text
site:example.com
```

Purpose:
- limit searches to a specific domain
- identify indexed domain content
- refine reconnaissance scope

---

# Filetype Enumeration

```text
site:example.com filetype:pdf
```

Purpose:
- identify publicly indexed documents
- discover exposed file types
- analyze document exposure

---

# Search for Exact Phrase

```text
"cybersecurity policy"
```

Purpose:
- search for exact phrases
- improve search precision
- refine reconnaissance results

---

# Search Webpage Titles

```text
intitle:"index of"
```

Purpose:
- identify indexed directories
- discover exposed web resources
- locate accessible file listings

---

# Search URL Strings

```text
inurl:admin
```

Purpose:
- identify specific URL paths
- refine targeted searches
- locate administrative pages

---

# Combine Search Operators

```text
site:tesla.com filetype:pdf
```

Purpose:
- combine filters for refined searches
- improve reconnaissance precision
- reduce irrelevant results

---

# Search for Public Documents

```text
site:microsoft.com filetype:docx
```

Purpose:
- discover publicly accessible documents
- identify exposed organizational files
- support OSINT workflows

---

# Search Indexed Directories

```text
site:example.com intitle:"index of"
```

Purpose:
- identify directory listings
- analyze indexed web resources
- discover exposed file repositories

---

# Search Specific Keywords

```text
site:example.com "API documentation"
```

Purpose:
- identify indexed technical resources
- locate public documentation
- refine reconnaissance targeting

---

# Common Search Operators

| Operator | Purpose |
|---|---|
| `site:` | Restrict searches to a domain |
| `filetype:` | Search for specific file types |
| `intitle:` | Search webpage titles |
| `inurl:` | Search URL strings |
| Quotes `" "` | Search exact phrases |

---

# Passive Reconnaissance Relevance

Google Dorking supports:
- passive intelligence gathering
- indexed content discovery
- public infrastructure analysis
- reconnaissance filtering
- attack surface analysis

Because searches rely on public indexing, reconnaissance can be conducted with minimal direct interaction with target systems.

---

# Useful Notes

- Use multiple operators together for refined searches.
- Filetype enumeration assists with document discovery.
- Domain filtering improves reconnaissance accuracy.
- Passive reconnaissance reduces detection risk.
- Public indexing can expose unintended information.

---

# Common Troubleshooting

## Too Many Irrelevant Results

### Refine Search Scope

```text
site:example.com filetype:pdf
```

---

## Search Results Not Appearing

### Use Simpler Queries

```text
site:example.com
```

---

## Overly Broad Searches

### Add Additional Filters

```text
site:example.com "security"
```
---