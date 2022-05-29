# Not available on Winget
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

$params = "/D=$(install_path $PSCommandPath)"

choco_install $PSCommandPath "LinkShellExtension" -params $params -force $force
