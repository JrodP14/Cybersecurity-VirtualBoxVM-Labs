#!/bin/bash

# ==========================================
# network-scan.sh
# Basic wireless reconnaissance helper
# for authorized lab environments only
# ==========================================

clear

echo "=========================================="
echo "     Wireless Network Scan Utility        "
echo "=========================================="
echo

# Check if running as root
if [[ $EUID -ne 0 ]]; then
    echo "[!] Please run this script with sudo."
    exit 1
fi

# Display wireless interfaces
echo "[*] Available wireless interfaces:"
iwconfig 2>/dev/null | grep "IEEE"
echo

read -p "Enter wireless interface (example: wlan0): " interface

echo
echo "[*] Enabling monitor mode..."
airmon-ng start "$interface"

monitor_interface="${interface}mon"

echo
echo "[*] Starting wireless reconnaissance scan..."
echo "[*] Press CTRL+C to stop scanning."
echo

sleep 2

# Start wireless scan
airodump-ng "$monitor_interface"

echo
echo "[*] Disabling monitor mode..."

airmon-ng stop "$monitor_interface"

echo
echo "=========================================="
echo " Wireless scan completed."
echo "=========================================="
