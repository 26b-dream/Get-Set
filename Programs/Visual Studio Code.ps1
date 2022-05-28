param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# /MERGETASKS=
#   ,!runcode - Do not automatically run after installation is complete
#   addcontextmenufiles - Add context menu entries to files
#   addcontextmenufolders - Add context menu entries to folders
# /silent - Install silently
$params = "/DIR=\`"C:\Programs\$name\`" /MERGETASKS=!runcode,addcontextmenufiles,addcontextmenufolders /silent"

winget_install_v2 $PSCommandPath "Microsoft.VisualStudioCode" -params $params -force $force
