# Atskaites ID: RVT-4417

$running = 0
$stopped = 0
$services = Get-Service
foreach ($service in $services) {
if ($service.Status -eq "Running") {
$running++
}
elseif ($service.Status -eq "Stopped") {
$stopped++
}
}
$total = $running + $stopped
Write-Output "Darbojosos servisu skaits: $running"
Write-Output "Aptureto servisu skaits: $stopped"
Write-Output "Abu skaitu summa: $total"
Write-Output "Visu atrasto servisu skaits: $($services.Count)"
