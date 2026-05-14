# ==========================================
# Startup-Analysis.ps1
# Windows startup application auditing tool
# ==========================================

Clear-Host

Write-Host "========================================="
Write-Host "         Startup Analysis Tool           "
Write-Host "========================================="
Write-Host ""

# ------------------------------------------
# Registry Run Keys
# ------------------------------------------

Write-Host "[*] Checking Registry Startup Entries..."
Write-Host ""

$runKeys = @(
    "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run",
    "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run"
)

foreach ($key in $runKeys) {

    Write-Host "Registry Path: $key"
    Write-Host "-----------------------------------------"

    if (Test-Path $key) {

        $items = Get-ItemProperty -Path $key

        $items.PSObject.Properties |
        Where-Object {
            $_.Name -notmatch "^PS"
        } |
        Select-Object Name, Value |
        Format-Table -AutoSize
    }
    else {
        Write-Host "Path not found."
    }

    Write-Host ""
}

# ------------------------------------------
# Startup Folder
# ------------------------------------------

Write-Host "========================================="
Write-Host "         Startup Folder Items            "
Write-Host "========================================="
Write-Host ""

$startupFolders = @(
    "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup",
    "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
)

foreach ($folder in $startupFolders) {

    Write-Host "Folder: $folder"
    Write-Host "-----------------------------------------"

    if (Test-Path $folder) {

        Get-ChildItem $folder |
        Select-Object Name, LastWriteTime |
        Format-Table -AutoSize
    }
    else {
        Write-Host "Folder not found."
    }

    Write-Host ""
}

# ------------------------------------------
# Suspicious Keyword Detection
# ------------------------------------------

Write-Host "========================================="
Write-Host "      Suspicious Startup Detection       "
Write-Host "========================================="
Write-Host ""

$suspiciousKeywords = @(
    "powershell",
    "cmd.exe",
    "wscript",
    "cscript",
    "mimikatz",
    "nc.exe",
    "netcat"
)

foreach ($key in $runKeys) {

    if (Test-Path $key) {

        $items = Get-ItemProperty -Path $key

        foreach ($property in $items.PSObject.Properties) {

            if ($property.Name -notmatch "^PS") {

                foreach ($keyword in $suspiciousKeywords) {

                    if ($property.Value -match $keyword) {

                        Write-Host "[!] Suspicious startup entry detected:" -ForegroundColor Red
                        Write-Host "Name : $($property.Name)"
                        Write-Host "Value: $($property.Value)"
                        Write-Host ""
                    }
                }
            }
        }
    }
}

Write-Host "[+] Startup analysis complete."
Write-Host ""
Write-Host "========================================="
Write-Host "         Audit Finished Successfully     "
Write-Host "========================================="
