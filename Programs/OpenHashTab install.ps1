param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Installs with context menu entries
#   winget install -e --id namazso.OpenHashTab --location C:\Programs\OpenHashTab

# Installs without context menu entries
$params = "/silent /LoadINF=files\OpenHashTab\config.inf"

winget_install $PSCommandPath "namazso.OpenHashTab" -params $params -force $force
