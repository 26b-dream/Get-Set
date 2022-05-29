# This updates PowerShell to the latest version
# This will remove the prompt to update on launch
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "Microsoft.PowerShell" -force $force

# Copy configuration file
Copy-Item "lib\PowerShell\profile.ps1" "$env:USERPROFILE\Documents\WindowsPowerShell\profile.ps1"
