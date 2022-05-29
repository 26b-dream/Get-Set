param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Does not set default editor correctly
#   winget install -e --id Git.Git --override "/EditorOption=VisualStudioCode"
# --override to customize installation
#   /LOADINF=files\Git\Git.inf
#       Load custom install settings
#       See: files\Git\Git.inf
#   /SILENT - install silently 
$params = "/LOADINF=files\$name\install.inf /SILENT"

winget_install $PSCommandPath -params $params -force $force
