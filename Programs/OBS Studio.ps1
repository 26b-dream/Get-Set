param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "OBSProject.OBSStudio" -force $force
delete_shortcut $PSCommandPath

Write-Host "Configure OBS Studio" -ForegroundColor DarkYellow
