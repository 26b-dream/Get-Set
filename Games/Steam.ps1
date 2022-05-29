param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "Valve.Steam" -force $force
delete_shortcut $PSCommandPath
