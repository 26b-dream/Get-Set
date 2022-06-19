param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath -force $force
delete_shortcut $PSCommandPath

Write-Host "Login to Discord" -ForegroundColor DarkYellow
