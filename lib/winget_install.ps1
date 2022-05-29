function winget_install($file, [string]$package, [string]$params, [string]$force, [bool]$skip_location) {
    $name = (get-item $file).BaseName

    # Create ampty array to store values
    $params_array = @()

    # Add override params to array
    if ($params) {
        $params_array += "--override"
        $params_array += "$params"
    }

    # Add the parameter to change installation directory unless the flag is set
    if (!$skip_location){
        $params_array += "--location"
        $params_array += install_path $file
    }

    # If no package name was given create it automatically
    if (!$package){
        $package = "$name.$name"
    }

    # Check if the package is already installed
    Write-Host "winget install -e --id $package" @params_array
    winget list -e --id $package | Out-Null
    # Install the package if it is not already installed or is set to force install 
    if ( !$? -or $force) {
        winget install -e --id $package @params_array

        # Check if installation failed
        if ( !$?) {
            Write-Host "Failed to Install: $name" -ForegroundColor Red
        }
        # Check if installation was successful
        else {
            Write-Host "Installed: $name" -ForegroundColor Green
        }
    }
    else {
        Write-Host "Already Installed: $name" -ForegroundColor Green
    }
}
