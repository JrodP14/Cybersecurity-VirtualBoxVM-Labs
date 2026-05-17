# Python Reference Guide

## Verify Python Installation

```bash
python3 --version
python --version
```

Purpose:
- verify Python installation
- confirm Python accessibility

---

# Execute Python Script

```bash
python3 script.py
python script.py
```

Purpose:
- execute Python scripts
- run automation workflows

---

# Install Python Packages

```bash
pip3 install package-name
pip install package-name
```

Purpose:
- install Python dependencies
- add external modules

---

# Import Socket Module

```python
import socket
```

Purpose:
- enable TCP/IP communication
- support network scripting

---

# Create TCP Socket

```python
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
```

Purpose:
- create IPv4 TCP socket
- establish network communication

---

# Configure Timeout

```python
sock.settimeout(1)
```

Purpose:
- prevent hanging connections
- improve scan reliability

---

# Test TCP Connection

```python
result = sock.connect_ex((target, port))
```

Purpose:
- test port accessibility
- identify open services

---

# Close Socket

```python
sock.close()
```

Purpose:
- release system resources
- terminate connection cleanly

---

# Basic Scan Loop

```python
for port in range(1, 1025):
```

Purpose:
- automate port enumeration
- iterate through scan ranges

---

# User Input Handling

```python
target = input("Enter target IP: ")
```

Purpose:
- allow dynamic target selection
- improve script flexibility

---

# Basic Error Handling

```python
try:
    result = sock.connect_ex((target, port))
except socket.error:
    print("Connection failed")
```

Purpose:
- handle connection failures
- improve script reliability

---

# Common Python Modules

| Module | Purpose |
|---|---|
| socket | Network communication |
| os | Operating system interaction |
| sys | System functions |
| subprocess | Command execution |
| time | Timing and delays |

---

# Common Python Commands

## Open Python Interpreter

```bash
python3
python
```

---

## Execute Python File

```bash
python3 scanner.py
python scanner.py
```

---

## Display Installed Packages

```bash
pip3 list
pip list
```

---

## Install Requirements File

```bash
pip3 install -r requirements.txt
pip install -r requirements.txt
```

---

# Common Networking Concepts

| Concept | Description |
|---|---|
| TCP | Connection-oriented communication |
| Port | Logical communication endpoint |
| Socket | Network communication endpoint |
| Enumeration | Discovery of services or systems |
| Timeout | Maximum connection wait time |

---

# Reconnaissance Relevance

Python scripting supports:
- reconnaissance automation
- TCP port scanning
- service enumeration
- infrastructure analysis
- workflow automation

---

# Useful Notes

- Python is widely used for cybersecurity automation.
- Socket programming supports active reconnaissance workflows.
- Timeouts improve scanner performance and reliability.
- Proper exception handling improves script stability.

---

# Common Troubleshooting

## Python Command Not Found

### Verify Installation

```bash
python3 --version
python --version
```

---

## Permission Denied

### Make Script Executable

```bash
chmod +x script.py
```

---

## Missing Python Module

### Install Required Package

```bash
pip3 install module-name
pip install module-name
```

---

# Related Labs

- Python Port Scanner
- Socket Programming
- TCP Port Scanning
- Reconnaissance Automation
- Service Enumeration