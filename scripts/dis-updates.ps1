
Write-Host "Disabling Windows Updates"
$registryPath = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
if (!(Test-Path $registryPath)) {
	New-Item -Path $registryPath -Force
}
New-ItemProperty $registryPath -name 'NoAutoUpdate' -value '1' -propertyType "DWord" -force

