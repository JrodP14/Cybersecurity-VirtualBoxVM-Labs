#!/bin/bash

# ==========================================
# Service-Check.sh
# Basic Linux service status checker
# ==========================================

clear

echo "=========================================="
echo "        Linux Service Check Tool          "
echo "=========================================="
echo

# List of common services to check
services=(
    ssh
    NetworkManager
    apache2
    mysql
    bluetooth
)

for service in "${services[@]}"
do
    echo "[*] Checking service: $service"

    if systemctl list-units --type=service | grep -q "$service"; then
        status=$(systemctl is-active "$service")

        if [ "$status" = "active" ]; then
            echo "[+] Status: RUNNING"
        else
            echo "[-] Status: NOT RUNNING"
        fi
    else
        echo "[!] Service not installed."
    fi

    echo "------------------------------------------"
done

echo
echo "=========================================="
echo " Service status check completed."
echo "=========================================="
