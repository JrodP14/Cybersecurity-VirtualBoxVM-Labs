#!/usr/bin/env python3

# ==========================================
# Port-Scanner.py
# Basic TCP port scanner for authorized labs
# ==========================================

import socket
from datetime import datetime

print("=========================================")
print("            Port Scanner Tool            ")
print("=========================================\n")

# User input
target = input("Enter target IP or hostname: ")

start_port = int(input("Enter starting port: "))
end_port = int(input("Enter ending port: "))

print("\n=========================================")
print(f"Scanning Target : {target}")
print(f"Port Range      : {start_port}-{end_port}")
print(f"Scan Started    : {datetime.now()}")
print("=========================================\n")

try:

    # Resolve hostname
    target_ip = socket.gethostbyname(target)

    print(f"Resolved IP Address: {target_ip}\n")

    # Scan ports
    for port in range(start_port, end_port + 1):

        scanner = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        scanner.settimeout(0.5)

        result = scanner.connect_ex((target_ip, port))

        if result == 0:
            print(f"[+] Port {port} is OPEN")

        scanner.close()

    print("\n=========================================")
    print("             Scan Complete               ")
    print("=========================================")

except KeyboardInterrupt:
    print("\n[-] Scan interrupted by user.")

except socket.gaierror:
    print("\n[-] Hostname could not be resolved.")

except socket.error:
    print("\n[-] Unable to connect to target.")

except Exception as error:
    print(f"\n[-] Error: {error}")
