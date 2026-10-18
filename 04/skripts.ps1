# Atskaites ID: RVT-4417
$Services = Get-Service | Where-Object { $_.StartType -eq "Automatic" -and $_.Status -eq "Stopped" }

if ($Services.Count -eq 0 -or $null -eq $Services) {
    Write-Output "Atrasto servisu skaits: 0"
} else {
    foreach ($Service in $Services) {
        Write-Output "Serviss: $($Service.Name) ($($Service.DisplayName))"
    }
}