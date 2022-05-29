# Not available on Winget
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

$params = "/DIR=$(install_path $PSCommandPath)"

choco_install $PSCommandPath -params $params -force $force
