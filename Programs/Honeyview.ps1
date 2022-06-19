# Squirrel Installer
#   Impossible to modify installation path, see: https://github.com/desktop/desktop/issues/1086
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install "Bandisoft.Honeyview" $PSCommandPath -force $force
delete_shortcut $PSCommandPath
