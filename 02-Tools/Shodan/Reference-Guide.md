# Shodan Reference Guide

## Access Shodan

```text
https://www.shodan.io
```

---

# Common Searches

## Search by Port

```text
port:80
```

## Search by Service

```text
apache
```

## Search by IP

```text
8.8.8.8
```

## Search by Organization

```text
org:"Google"
```

## Search by Country

```text
country:US
```

---

# Common Filters

| Filter | Purpose |
|---|---|
| port: | Filter by port |
| country: | Filter by country |
| org: | Filter by organization |
| hostname: | Filter by hostname |
| product: | Filter by software |

---

# Banner Analysis

Common information observed:
- software versions
- operating systems
- service banners
- hostnames
- open ports

---

# Useful Notes

- Shodan performs passive reconnaissance.
- Results are based on internet-wide scanning.
- Public service banners may expose sensitive information.
- Search filters improve reconnaissance precision.

---

# Common Troubleshooting

## No Results Returned

### Verify:
- search syntax
- filter usage
- internet connectivity