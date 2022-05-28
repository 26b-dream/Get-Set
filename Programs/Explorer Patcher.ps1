# Unknown installer
#   No GUI
#   Causes install
#       winget install -e --id $package --override "/?"
#       winget install -e --id $package --override "/h"
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Restore configuration
#   Do this first because the program launches automatically after installation
reg import "files\Explorer Patcher\config.reg"

# TODO: Look into changing installation directory
winget_install_v2 $PSCommandPath "valinet.ExplorerPatcher" -force $force
