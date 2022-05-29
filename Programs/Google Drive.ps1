param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "Google.Drive" -force $force