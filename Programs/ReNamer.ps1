# Installer is all kinds of bustedm, won't even run normally
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "den4b.ReNamer" -force $force
