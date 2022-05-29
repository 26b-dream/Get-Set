# Not available on Winget
# Not available on Chocolatey
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

$version = "3.0.1"

$download_folder = "$env:USERPROFILE/Downloads/get_set/Wally"
$url = "https://github.com/zsa/wally-win/releases/download/$version/Wally$version.exe"
$exe_path = "$download_folder/Wally$version.exe"

download $url $exe_path

# TODO: Detection of previous installations
& "$exe_path" /VERYSILENT /DIR="$(install_dir $PSCommandPath)"
