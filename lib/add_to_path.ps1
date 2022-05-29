
function add_to_path([string]$file) {
    $path_directory = "$env:USERPROFILE\Path"

    # Creates a special folder in the user's profile named Path if it does not exist
    # It is roughly equivelent to /usr/local/bin on Linux
    New-Item -ItemType Directory -Path $path_directory
    
    # If Path is not in system path add it
    if (!($env:Path -like "*$path_directory*")) {
        [Environment]::SetEnvironmentVariable("Path", $env:Path + ";$env:USERPROFILE\Path",  [System.EnvironmentVariableTarget]::Machine)            
    }
    
    # Symlink file into path
    $link_path = "$path_directory\$((get-item $file).BaseName)$((get-item $file).Extension)"
    Remove-Item $link_path
    New-Item -ItemType SymbolicLink -Path $link_path -Target "$file"
}