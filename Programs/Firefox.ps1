param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Params
#   INSTALL_DIRECTORY_PATH=C:\Programs\$name - Set installation path
#   TASKBAR_SHORTCUT=false - Don't create a shortcut in the taskbar
$params = "INSTALL_DIRECTORY_PATH=C:\Programs\$name TASKBAR_SHORTCUT=false DESKTOP_SHORTCUT=false"

winget_install_v2 $PSCommandPath "Mozilla.$name" -params $params -force $force

Write-Host "Login to Firefox Sync" -ForegroundColor DarkYellow
Write-Host "Login to Bitwarden plugin" -ForegroundColor DarkYellow
