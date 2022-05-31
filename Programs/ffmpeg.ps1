# Not available on Winget
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

$name = "ffmpeg"
$package = "$name"
$install_path = (install_path $PSCommandPath)

if ( !(Test-Path -Path $install_path) -or $force) {
    # Zip installer
    #   Extracts to C:\ProgramData\chocolatey\lib\ffmpeg\tools\ffmpeg
    choco_install $PSCommandPath -force $force

    # Delete old version if it exists
    if (Test-Path -Path $install_path) {
        Remove-Item $install_path -Recurse
    }
    
    # Copy files into proper install location
    Copy-Item "C:\ProgramData\chocolatey\lib\ffmpeg\tools\ffmpeg" $install_path -Recurse
    
    # Uninstall because chocolatey's files are no longer needed
    choco uninstall $package -y
    
    add_to_path "$install_path\bin\ffmpeg.exe"

    Write-Host "$name installed" -ForegroundColor Green
}
