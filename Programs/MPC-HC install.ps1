param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "clsid2.mpc-hc" -force $force
delete_shortcut "MPC-HC x64"
