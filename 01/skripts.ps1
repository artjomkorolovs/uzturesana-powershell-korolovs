# Atskaites ID: RVT-4417
$ComputerName = $env:COMPUTERNAME
$OS = (Get-CimInstance -ClassName Win32_OperatingSystem)
$PSVersion = $PSVersionTable.PSVersion.ToString()
$CurrentDate = (Get-Date).ToString("dd.MM.yyyy HH:mm:ss")
$ProcessCount = (Get-Process).Count

Write-Output "Datora nosaukums: $ComputerName"
Write-Output "Operetajsistema: $($OS.Caption) (Build: $($OS.BuildNumber))"
Write-Output "PowerShell versija: $PSVersion"
Write-Output "Pasreizejais datums un laiks: $CurrentDate"
Write-Output "Aktivo procesu skaits: $ProcessCount" 
