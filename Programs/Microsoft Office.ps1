# Unknown installer
#   Does not support changing installation path through the GUI
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# TODO: Installs into wrong location
winget_install $PSCommandPath "Microsoft.Office" -force $force
