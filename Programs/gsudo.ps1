param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Installs into wrong location
#   winget_install $PSCommandPath "gerardog.gsudo" -force $force
#   $params = "InstallDir=C:\Programs\$name"
#   $params = "TargetDir=C:\Programs\$name"

$params = "InstallFolder=$(install_path $PSCommandPath) /qn"

winget_install $PSCommandPath "gerardog.gsudo" -params $params -force $force
