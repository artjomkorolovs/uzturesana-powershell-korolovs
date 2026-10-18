# Atskaites ID: RVT-4417
$DateLimit = (Get-Date).AddHours(-48)
$Errors = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=$DateLimit} -ErrorAction SilentlyContinue

if ($null -eq $Errors) {
    Write-Output "Pedejo 48 stundu laika kludu nav."
} else {
    $ErrorCount = $Errors.Count
    $MostFrequentSource = $Errors | Group-Object -Property ProviderName | Sort-Object -Property Count -Descending | Select-Object -First 1
    
    Write-Output "Kludu skaits pedejo 48 stundu laika: $ErrorCount"
    Write-Output "Biezakais kludu avots: $($MostFrequentSource.Name) ($($MostFrequentSource.Count) reizes)"
}
