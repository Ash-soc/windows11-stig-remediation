# WN11-CC-000315
# Disable Always Install with Elevated Privileges

$regPath = "HKLM:\Software\Policies\Microsoft\Windows\Installer"

if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name "AlwaysInstallElevated" -Value 0 -Type DWord

Write-Output "WN11-CC-000315 remediation applied successfully.
