# Not available on Winget
# Not available on Chocolatey
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# Avoid newer versions of AutoHotkey
#   Installers after 7.0 will automatically install adware so use version 7.0 at the latest
$name = "Cheat Engine"
$version = "7.0"

$download_folder = "$env:USERPROFILE/Downloads/get_set/$name"
$url = "https://github.com/cheat-engine/cheat-engine/releases/download/$version/CheatEngine70.exe"
$exe_path = "$download_folder/CheatEngine70.exe"

download $url $exe_path

# TODO: Detection of previous installations
& "$exe_path" /SILENT /DIR="$(install_path $PSCommandPath)"

# Disable updates to avoid adware
reg add "HKCU\Software\Cheat Engine\VersionCheck" /v "CheckOnLaunch" /t REG_SZ /d "0" /f
# Disable tutorial popup
reg add "HKCU\Software\Cheat Engine" /v "First Time User" /t REG_DWORD /d "0" /f

delete_shortcut $name
