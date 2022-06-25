# Unknown installer
#   No GUI
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "GoLang.Go" -force $force
