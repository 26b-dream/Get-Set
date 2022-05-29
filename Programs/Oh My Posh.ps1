param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "JanDeDobbeleer.OhMyPosh" -force $force

# Copy theme
Copy-Item "lib\Oh My Posh\theme.omp.ps1" "$env:USERPROFILE\Documents\WindowsPowerShell\theme.omp.ps1"

# Copy configuration
Copy-Item "lib\Oh My Posh\Microsoft.PowerShell_profile.ps1" "$env:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
