# Atskaites ID: RVT-4417
Get-Process | 
    Sort-Object -Property WorkingSet64 -Descending:$false | 
    Select-Object -Last 10 | 
    ForEach-Object {
        $MemoryMB = [Math]::Round(($_.WorkingSet64 / 1MB), 1)
        Write-Output "Process: $($_.Name) | ID: $($_.Id) | Atmiņa: $MemoryMB MB"
    }
