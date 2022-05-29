param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Installs to default location
#   winget install -e --id Python.Python.3 --location C:\Programs\Python

# --override to install into correct location
#   TargetDir=C:\Programs\Python
#   PrependPath=1 - Add Python to path (By default python is not added to path for some reason)
#   /quiet - Silent install
$params = "TargetDir=C:\Programs\Python PrependPath=1 /quiet "
winget_install $PSCommandPath "Python.Python.3" -params $params -force $force
