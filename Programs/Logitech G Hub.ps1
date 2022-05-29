param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Unknown installer
#    Does not support changing installation path through GUI

# Installs into wrong location
#   winget install -e --id $package --location "C:\Programs\$name"
#   winget install -e --id $package --override "/DIR=C:\Programs\$name"
#   winget install -e --id $package --override "InstallDir=C:\Programs\$name"
#   winget install -e --id $package --override "TargetDir=C:\Programs\$name"
#   winget install -e --id $package --override "InstallFolder=C:\Programs\$name"
    
# ! Installs into wrong location
winget_install $PSCommandPath "Logitech.GHUB" -force $force


delete_shortcut $PSCommandPath

