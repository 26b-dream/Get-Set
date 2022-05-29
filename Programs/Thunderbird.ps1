param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"


# Installs into wrong location
#   winget install -e --id $package --location C:\Programs\$name -i

# Params
#   INSTALL_DIRECTORY_PATH=C:\Programs\$name - Set installation path
#   DESKTOP_SHORTCUT=false - Don't create a shortcut in the desktop
$params = "INSTALL_DIRECTORY_PATH=$(install_path $PSCommandPath) DESKTOP_SHORTCUT=false"

winget_install $PSCommandPath "Mozilla.Thunderbird" -params $params -force $force

Write-Host "Login to Thunderbird" -ForegroundColor DarkYellow
