# Installer is all kinds of bustedm, won't even run normally
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "Adobe.Acrobat.Reader.64-bit" -force $force
