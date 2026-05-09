# Sysinternals Reference Guide

## Process Explorer

### Launch Tool

```text
procexp.exe
```

Purpose:
- analyze running processes
- inspect parent-child relationships
- identify suspicious executables

---

# Process Analysis

## Investigate:
- unsigned processes
- unusual command-line arguments
- abnormal process trees
- suspicious executable locations

---

# Autoruns

## Launch Tool

```text
autoruns.exe
```

Purpose:
- identify persistence mechanisms
- analyze startup entries
- detect unauthorized autoruns

---

# Common Persistence Locations

| Location | Purpose |
|---|---|
| Run Keys | Startup programs |
| Services | Background services |
| Scheduled Tasks | Automated execution |
| Startup Folder | User startup applications |

---

# TCPView

## Launch Tool

```text
tcpview.exe
```

Purpose:
- monitor active network connections
- identify suspicious outbound traffic
- inspect listening ports

---

# Process Monitor

## Launch Tool

```text
procmon.exe
```

Purpose:
- monitor file activity
- monitor registry changes
- track process creation
- analyze system events

---

# Sigcheck

## Verify File Signatures

```text
sigcheck.exe suspicious.exe
```

Purpose:
- validate digital signatures
- identify unsigned executables

---

# Common Investigation Areas

## Suspicious Indicators

- unknown processes
- unusual parent-child relationships
- outbound connections to unknown IPs
- persistence entries
- unsigned binaries
- abnormal startup behavior

---

# Common Troubleshooting

## Tool Will Not Launch

### Verify:
- administrator privileges
- extracted files
- antivirus restrictions

---

## Excessive Procmon Events

### Recommendation:
- apply filters
- limit capture scope
- pause collection during review

---

## Missing Connections in TCPView

### Verify:
- active traffic generation
- firewall settings
- network connectivity

---

# Useful Notes

- Process Explorer provides more detail than Windows Task Manager.
- Autoruns is useful for identifying persistence mechanisms.
- Process Monitor generates large amounts of event data quickly.
- Host-based analysis is critical for malware investigations.

---

# Related Labs

- Suspicious Process Analysis
- Persistence Investigation
- RAT Observation
- Windows Host Analysis
- Network Connection Monitoring