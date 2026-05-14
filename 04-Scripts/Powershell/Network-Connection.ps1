# ==========================================
# Network-Connection.ps1
# Basic Windows network connection monitor
# ==========================================

Clear-Host

Write-Host "========================================="
Write-Host "     Windows Network Connection Tool     "
Write-Host "========================================="
Write-Host ""

Write-Host "[*] Active TCP Connections:"
Write-Host ""

# Display active TCP connections
Get-NetTCPConnection |
Select-Object `
    LocalAddress,
    LocalPort,
    RemoteAddress,
    RemotePort,
    State |
Format-Table -AutoSize

Write-Host ""
Write-Host "========================================="
Write-Host "        Listening Network Ports          "
Write-Host "========================================="
Write-Host ""

# Display listening ports
Get-NetTCPConnection -State Listen |
Select-Object `
    LocalAddress,
    LocalPort,
    State |
Format-Table -AutoSize

Write-Host ""
Write-Host "========================================="
Write-Host "     Network connection check complete   "
Write-Host "========================================="
