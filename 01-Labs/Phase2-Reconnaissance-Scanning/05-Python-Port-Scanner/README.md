# Python Port Scanner

## Overview

This lab focused on developing a foundational TCP port scanner using Python socket programming to better understand reconnaissance automation and network enumeration concepts.

The project demonstrated how Python can be used to automate active reconnaissance tasks by scanning target systems for open TCP ports and identifying accessible network services.

The scanner developed in this section represents an introductory proof-of-concept implementation intended for educational purposes and foundational scripting practice.

This lab bridges:
- reconnaissance methodologies
- Python programming fundamentals
- socket communication
- automation workflows
- network service enumeration

---

# Objectives

The primary objectives of this lab were:

- Understand Python socket programming fundamentals
- Develop a basic TCP port scanner
- Automate reconnaissance workflows
- Identify open TCP ports on target systems
- Practice network enumeration techniques
- Understand active scanning methodologies
- Implement timeout and connection handling
- Build foundational cybersecurity scripting skills

---

# Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Programming Language | Python |
| Primary Module | socket |
| Lab Platform | VirtualBox |
| Reconnaissance Type | Active Enumeration |

---

# Tools Used

| Tool | Purpose |
|---|---|
| Python | Automation and scripting |
| socket module | TCP communication |
| Kali Linux | Development and testing platform |
| VirtualBox | Lab virtualization |
| Metasploitable2 | Scan target environment |

---

# Lab Modules

## Socket Basics

Focus areas:
- Python socket creation
- TCP communication
- AF_INET sockets
- SOCK_STREAM connections
- socket lifecycle management
- client connection handling

Key concepts practiced:
- IPv4 networking
- TCP socket communication
- connection establishment
- socket management

---

## TCP Port Scanning

Focus areas:
- active reconnaissance
- open port identification
- service enumeration
- scan range analysis
- TCP connection testing

Key concepts practiced:
- port states
- service discovery
- reconnaissance workflows
- enumeration techniques

---

## Scan Automation & Error Handling

Focus areas:
- automated scanning workflows
- user input handling
- iterative port scanning
- timeout management
- failed connection handling
- scan reliability

Key concepts practiced:
- reconnaissance automation
- scripting efficiency
- timeout configuration
- operational reliability
- exception awareness

---

# Skills Demonstrated

This lab demonstrates:
- Python programming fundamentals
- socket programming
- reconnaissance automation
- TCP port scanning
- active enumeration
- service discovery
- scripting workflows
- network communication analysis

---

# Reconnaissance Workflow

The scanning workflow included:
1. receiving target host input
2. defining scan ranges
3. creating TCP socket connections
4. testing target ports
5. identifying open services
6. handling failed connections
7. displaying scan results

The scanner automated repetitive enumeration tasks commonly performed during reconnaissance activities.

---

# Security Relevance

TCP port scanning is commonly used during:
- penetration testing
- vulnerability assessments
- attack surface analysis
- service enumeration
- infrastructure mapping
- network diagnostics

Understanding how port scanners operate helps security professionals:
- identify exposed services
- validate network configurations
- assess attack surface exposure
- understand reconnaissance methodologies

---

# Lessons Learned

- Python can automate repetitive reconnaissance tasks efficiently.
- Socket programming provides insight into TCP communication workflows.
- Open ports reveal exposed network services.
- Timeout handling improves scanner reliability.
- Automated enumeration increases reconnaissance efficiency.
- Network scripting strengthens cybersecurity automation skills.

---

# Notes

- All scanning activities were conducted within an isolated VirtualBox cybersecurity lab environment.
- Target systems included intentionally vulnerable lab machines used for educational purposes.
- No unauthorized scanning or external network targeting was performed.

---

# Ethical Use Notice

All scanning activities documented in this repository were conducted for authorized educational cybersecurity training purposes only.

Do not perform unauthorized scanning or reconnaissance against systems or networks without explicit permission.