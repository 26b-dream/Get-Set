# Load all requirements in a single file
. "$(get-item $PSScriptRoot)\choco_install.ps1"
. "$(get-item $PSScriptRoot)\delete_shortcut.ps1"
. "$(get-item $PSScriptRoot)\download.ps1"
. "$(get-item $PSScriptRoot)\extract.ps1"
. "$(get-item $PSScriptRoot)\install_path.ps1"
. "$(get-item $PSScriptRoot)\winget_install.ps1"