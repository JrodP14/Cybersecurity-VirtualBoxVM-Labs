#!/usr/bin/env python3

# ==========================================
# Hash-Checker.py
# Simple hash generation and verification tool
# ==========================================

import hashlib

print("=========================================")
print("           Hash Checker Tool             ")
print("=========================================\n")

# User input
text = input("Enter text to hash: ")

print("\nSelect hashing algorithm:")
print("1. MD5")
print("2. SHA1")
print("3. SHA256")

choice = input("\nChoice: ")

# Generate selected hash
if choice == "1":
    generated_hash = hashlib.md5(text.encode()).hexdigest()
    algorithm = "MD5"

elif choice == "2":
    generated_hash = hashlib.sha1(text.encode()).hexdigest()
    algorithm = "SHA1"

elif choice == "3":
    generated_hash = hashlib.sha256(text.encode()).hexdigest()
    algorithm = "SHA256"

else:
    print("\n[-] Invalid selection.")
    exit()

# Display result
print("\n=========================================")
print(f"Algorithm Used : {algorithm}")
print(f"Generated Hash : {generated_hash}")
print("=========================================\n")

# Verification section
verify = input("Would you like to verify a hash? (y/n): ").lower()

if verify == "y":

    comparison_hash = input("\nEnter hash to compare against: ")

    if generated_hash == comparison_hash:
        print("\n[+] Hashes match.")
    else:
        print("\n[-] Hashes do NOT match.")

print("\n=========================================")
print("         Hash check complete             ")
print("=========================================")
