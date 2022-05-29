param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "voidtools.Everything" -force $force
delete_shortcut $PSCommandPath

# Everything does not start automatically after installation so it is safe to restore config after installation
Copy-Item files\Everything\Everything.ini C:\Programs\$name\Everything.ini
