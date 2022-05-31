# This updates PowerShell to the latest version
# This will remove the prompt to update on launch
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "Nvidia.GeForceExperience" -force $force
delete_shortcut $PSCommandPath

Copy-Item "files\GeForce Experience\app.js" "C:\Program Files\NVIDIA Corporation\NVIDIA GeForce Experience\www\app.js" -Force


# The easiest, most automated way to update GPU drives is through Geforce Experience
Write-Host "Update GPU drivers using GeForce Experience" -ForegroundColor DarkYellow