# Atskaites ID: RVT-4417
$Drivers = Get-CimInstance -ClassName Win32_PnPSignedDriver | 
    Where-Object { $_.DriverProviderName -notlike "*Microsoft*" -and $null -ne $_.DriverProviderName } |
    Select-Object -Property DeviceName, DriverProviderName, DriverVersion, DriverDate, InfName

$Drivers | Export-Csv -Path "draiveri.csv" -NoTypeInformation -Delimiter ";" -Encoding utf8

$LineCount = (Get-Content -Path "draiveri.csv").Count

Write-Output "Mana CSV faila rindu skaits: $LineCount"


