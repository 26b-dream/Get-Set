# Not available on Winget
# Not available on Chocolatey
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

$version = "09747"

$download_folder = "$env:USERPROFILE/Downloads/get_set/Drivers/RME Fireface UFX+"
$url = "https://rme-audio.de/downloads/driver_madiface_win_$version.zip"
$zip_path="$download_folder/driver_madiface_win_$version.zip"
$extracted_path="$download_folder/driver_madiface_win_$version"

download $url $zip_path
extract $zip_path $extracted_path

# TODO: Detection of previous installations
. "$extracted_path/rmeinstaller.exe" /silent

Write-Host "Activate devices in madiface" -ForegroundColor DarkYellow
Write-Host "Set ADAT 1/2 and ADAT 3/4 as loopback" -ForegroundColor DarkYellow
Write-Host "Disable Windows audio devices" -ForegroundColor DarkYellow
