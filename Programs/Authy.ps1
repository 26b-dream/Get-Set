# Unknown installer
#   No GUI
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install_v2 $PSCommandPath "Twilio.Authy" -force $force
delete_shortcut "Authy Desktop"
