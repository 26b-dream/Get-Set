# Not available on Winget
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

choco_install $PSCommandPath "amd-ryzen-chipset" -force $force
