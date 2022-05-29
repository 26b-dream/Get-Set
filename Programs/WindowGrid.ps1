# Not available on Winget
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

$install_path = (install_path $PSCommandPath)

# TODO: Does this work
if ( !(Test-Path -Path $install_path) -or $force) {
    # Zip installer
    #   Extracts to C:\ProgramData\chocolatey\lib\ffmpeg\tools\ffmpeg
    choco_install $PSCommandPath -force $force

    # Delete old version if it exists
    if (Test-Path -Path $install_path) {
        Remove-Item $install_path -Recurse
    }
    
    # Create a new empty folder
    New-Item -ItemType Directory -Path $install_path


    # Copy executable into proper install location
    Copy-Item "C:\ProgramData\chocolatey\lib\windowgrid\tools\WindowGrid.exe" "$install_path/WindowGrid.exe"

    # Custom installer
    #   There is a /silent parameter but it it appears to do absolutely nothing
    #       . "$install_path/WindowGrid.exe" /silent /install - Crashes installer
    #       . "$install_path/WindowGrid.exe" /silent /install $install_path - Crashes installer
    #   Copying the ocnfig file may work as installing it when the file is executed
    #   The installer is so broken I can't tell if it works or not because it leaves registry changes I think

    # Copy config
    Copy-Item "files\WindowGrid\WindowGrid.settings" "$install_path/WindowGrid.settings"

    # Run it
    . "$install_path/WindowGrid.exe"

}