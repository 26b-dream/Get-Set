param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Installs to wrong location by default
$params = "/D=C:\Programs\AutoHotkey /S"

winget_install $PSCommandPath "Lexikos.AutoHotkey" -params $params -force $force
