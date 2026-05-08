# Troubleshooting Notes

## Overview

This document contains troubleshooting procedures, common issues, resolutions, and lessons learned encountered throughout the NCSA Cybersecurity Home Lab environment.

The purpose of this documentation is to:
- track recurring issues
- document successful fixes
- improve troubleshooting workflows
- maintain lab stability
- support future lab expansion

---

# VirtualBox Networking Issues

## Issue

Virtual machines could not communicate with each other.

---

## Symptoms

- ping requests failed
- Nmap scans showed hosts as down
- Metasploit could not connect to targets
- OpenVAS scans failed to start
- packet captures showed no traffic

---

## Root Cause

Virtual machines were attached to different network adapters or incorrect VirtualBox network modes.

---

## Resolution

Verified all VMs were configured to use the same NAT Network adapter.

### Steps

1. Open VirtualBox
2. Select virtual machine
3. Open Settings
4. Navigate to Network
5. Set Adapter Type to:
   - NAT Network
6. Verify subnet:
   - 10.0.2.0/24

---

## Lessons Learned

Consistent network adapter configuration is critical for lab communication and attack simulation.

---

# Kali Linux No Internet Access

## Symptoms

- package installations failed
- apt update errors
- OpenVAS feed synchronization failed

---

## Root Cause

Incorrect VirtualBox network configuration or DNS issues.

---

## Resolution

Restarted networking and verified NAT Network configuration.

### Commands

```bash
sudo systemctl restart NetworkManager
```

```bash
ping 8.8.8.8
```

---

## Lessons Learned

Verify internet connectivity before installing tools or updating vulnerability feeds.

---

# OpenVAS Scanner Not Running

## Symptoms

- OpenVAS web interface unavailable
- scanner status disconnected
- scan tasks stuck in queued state

---

## Root Cause

Greenbone services were not started correctly.

---

## Resolution

Started GVM services manually.

### Commands

```bash
sudo gvm-start
```

```bash
gvm-check-setup
```

---

## Lessons Learned

Always verify scanner status before launching vulnerability scans.

---

# OpenVAS Feed Synchronization Failure

## Symptoms

- missing vulnerability data
- outdated scan results
- feed synchronization errors

---

## Root Cause

Internet connectivity issues or interrupted feed updates.

---

## Resolution

Verified connectivity and reran feed synchronization.

### Commands

```bash
sudo greenbone-feed-sync
```

---

## Lessons Learned

Updated vulnerability feeds improve scan accuracy and CVE detection.

---

# Metasploit Exploit Failure

## Symptoms

- exploit completed but no session created
- connection timeouts
- payload failed to execute

---

## Root Cause

Incorrect payload configuration or target incompatibility.

---

## Resolution

Verified:
- target IP address
- service version
- payload compatibility
- LHOST configuration

### Commands

```bash
set RHOSTS 10.0.2.4
```

```bash
set LHOST 10.0.2.3
```

---

## Lessons Learned

Successful exploitation depends heavily on accurate enumeration and payload selection.

---

# Nmap Host Appears Down

## Symptoms

- Nmap reported host down
- ping sweeps returned no results

---

## Root Cause

ICMP requests blocked or host discovery disabled.

---

## Resolution

Used no-ping scanning.

### Command

```bash
nmap -Pn 10.0.2.4
```

---

## Lessons Learned

Host discovery methods can fail depending on firewall or network configurations.

---

# Wireshark No Packets Captured

## Symptoms

- empty packet captures
- no visible traffic
- filters returned no results

---

## Root Cause

Incorrect capture interface selected.

---

## Resolution

Verified active network interface before starting captures.

### Common Interfaces

| Interface | Purpose |
|---|---|
| eth0 | Wired traffic |
| wlan0 | Wireless traffic |
| wlan0mon | Monitor mode wireless traffic |

---

## Lessons Learned

Selecting the correct capture interface is essential for accurate traffic analysis.

---

# Excessive Wireshark Traffic

## Symptoms

- difficult packet analysis
- overwhelming packet volume
- performance slowdown

---

## Resolution

Applied display and capture filters.

### Common Filters

```text
http
```

```text
dns
```

```text
ip.addr == 10.0.2.4
```

---

## Lessons Learned

Filtering significantly improves packet analysis efficiency.

---

# Aircrack-ng Monitor Mode Failure

## Symptoms

- wlan0mon interface not created
- monitor mode errors
- wireless capture failure

---

## Root Cause

NetworkManager and other services interfered with monitor mode.

---

## Resolution

Killed conflicting processes and restarted monitor mode.

### Commands

```bash
sudo airmon-ng check kill
```

```bash
sudo airmon-ng start wlan0
```

---

## Lessons Learned

Wireless attacks require adapters that support monitor mode and packet injection.

---

# Wireless Adapter Not Detected

## Symptoms

- adapter missing from Kali Linux
- monitor mode unavailable

---

## Root Cause

USB passthrough not configured in VirtualBox.

---

## Resolution

1. Disconnect adapter
2. Reconnect adapter
3. Configure VirtualBox USB passthrough
4. Restart Kali Linux VM

---

## Lessons Learned

USB passthrough configuration is required for wireless testing inside virtual machines.

---

# Ettercap MITM Traffic Not Passing

## Symptoms

- victim lost internet connectivity
- intercepted traffic stopped flowing

---

## Root Cause

IP forwarding disabled on Kali Linux.

---

## Resolution

Enabled IP forwarding.

### Command

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

---

## Lessons Learned

MITM attacks require packet forwarding between victim and gateway systems.

---

# Hashcat Token Length Exception

## Symptoms

- hashcat returned token length exception
- cracking process failed immediately

---

## Root Cause

Incorrect hash mode selected.

---

## Resolution

Verified hash type and selected correct mode.

### Example

| Hash Type | Mode |
|---|---|
| MD5 | 0 |
| SHA1 | 100 |
| NTLM | 1000 |

---

## Lessons Learned

Correct hash identification is required before password auditing.

---

# Netcat Connection Refused

## Symptoms

- failed reverse shell connections
- listener not responding

---

## Root Cause

Listener not active or incorrect port configuration.

---

## Resolution

Started listener before initiating connection.

### Listener Command

```bash
nc -lvnp 4444
```

---

## Lessons Learned

Network listeners must be active before initiating shell connections.

---

# Windows VM Performance Issues

## Symptoms

- slow VM performance
- freezing
- delayed tool response

---

## Root Cause

Insufficient RAM or CPU allocation within VirtualBox.

---

## Resolution

Increased:
- RAM allocation
- CPU cores
- video memory

---

## Lessons Learned

Security tools and multiple VMs require significant host system resources.

---

# General Troubleshooting Workflow

## Recommended Process

1. Verify connectivity
2. Verify IP addressing
3. Check service status
4. Verify firewall settings
5. Validate tool configuration
6. Review logs and outputs
7. Test incrementally

---

# Notes

- Snapshot backups are recommended before major configuration changes.
- Network configuration should be verified after importing or cloning VMs.
- Tool updates may change command syntax or behavior over time.

---

# Ethical Use Notice

All troubleshooting documented in this repository was performed within authorized educational lab environments for cybersecurity training purposes only.

Unauthorized exploitation, interception, scanning, or credential attacks against systems without explicit authorization may violate laws and organizational policies.