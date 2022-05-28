# Squirrel Installer
#   Impossible to modify installation path, see: https://github.com/desktop/desktop/issues/1086

param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install "Programs" "GitHub Desktop" "GitHub.GitHubDesktop" -force $force
delete_shortcut "GitHub Desktop"

Write-Host "Login to GitHub Desktop" -ForegroundColor DarkYellow
