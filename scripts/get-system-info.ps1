# Project Enterprise
# Basic System Information Script

Write-Host "===== Project Enterprise System Information ====="

Write-Host "`nComputer Name:"
hostname

Write-Host "`nCurrent User:"
whoami

Write-Host "`nOperating System:"
Get-CimInstance Win32_OperatingSystem |
Select-Object Caption, Version

Write-Host "`nIP Configuration:"
Get-NetIPAddress |
Where-Object {$_.AddressFamily -eq "IPv4"} |
Select-Object InterfaceAlias, IPAddress

Write-Host "`nCompleted."
