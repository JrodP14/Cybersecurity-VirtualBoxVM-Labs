# ==========================================
# Process-Audit.ps1
# Basic process auditing and monitoring tool
# ==========================================

Clear-Host

Write-Host "========================================="
Write-Host "          Process Audit Tool             "
Write-Host "========================================="
Write-Host ""

# Show top memory-consuming processes
Write-Host "[*] Top Processes By Memory Usage"
Write-Host ""

Get-Process |
Sort-Object WorkingSet -Descending |
Select-Object -First 10 `
    ProcessName,
    Id,
    CPU,
    @{Name="Memory(MB)";Expression={[math]::Round($_.WorkingSet / 1MB, 2)}} |
Format-Table -AutoSize

Write-Host ""
Write-Host "========================================="
Write-Host "        Running PowerShell Processes     "
Write-Host "========================================="
Write-Host ""

# Show PowerShell-related processes
Get-Process |
Where-Object {
    $_.ProcessName -like "*powershell*" -or
    $_.ProcessName -like "*pwsh*"
} |
Select-Object `
    ProcessName,
    Id,
    CPU,
    StartTime |
Format-Table -AutoSize

Write-Host ""
Write-Host "========================================="
Write-Host "         Suspicious Process Check        "
Write-Host "========================================="
Write-Host ""

# Simple suspicious keyword check
$suspicious = Get-Process | Where-Object {
    $_.ProcessName -match "mimikatz|nc|netcat|meterpreter"
}

if ($suspicious) {
    Write-Host "[!] Potentially suspicious processes detected:" -ForegroundColor Red

    $suspicious |
    Select-Object ProcessName, Id |
    Format-Table -AutoSize
}
else {
    Write-Host "[+] No obvious suspicious processes detected."
}

Write-Host ""
Write-Host "========================================="
Write-Host "         Process audit complete          "
Write-Host "========================================="
