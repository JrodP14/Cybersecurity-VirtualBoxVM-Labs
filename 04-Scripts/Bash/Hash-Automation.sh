#!/bin/bash

# ==========================================
# Hash-Automation.sh
# Demonstrates basic password hashing
# using MD5, SHA1, and SHA256
# ==========================================

clear

echo "=========================================="
echo "      Password Hashing Demonstration      "
echo "=========================================="
echo

read -p "Enter a password to hash: " password

echo
echo "Generating hashes..."
echo

# Generate MD5 hash
md5=$(echo -n "$password" | md5sum | awk '{print $1}')

# Generate SHA1 hash
sha1=$(echo -n "$password" | sha1sum | awk '{print $1}')

# Generate SHA256 hash
sha256=$(echo -n "$password" | sha256sum | awk '{print $1}')

echo "MD5 Hash:"
echo "$md5"
echo

echo "SHA1 Hash:"
echo "$sha1"
echo

echo "SHA256 Hash:"
echo "$sha256"
echo

echo "=========================================="
echo " Hash generation complete."
echo "=========================================="
