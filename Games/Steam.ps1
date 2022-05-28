param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install_v2 $PSCommandPath "Valve.Steam" -force $force
delete_shortcut $PSCommandPath
