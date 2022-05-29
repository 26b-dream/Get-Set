function choco_install($file, [string]$package, [string]$params, [string]$force) {
    $name = (get-item $file).BaseName

    # Create ampty array to store values
    $params_array = @()

    # Add override params to array
    if ($params) {
        $params_array += "--install-args"
        $params_array += "$params"
    }

    # If no package name was given create it automatically
    if (!$package){
        $package = $name
    }

    # Check if the package is already installed
    $value = & choco list -localonly -e $package 2>&1

    # Install the package if it is not already installed or is set to force install 
    if (!($value -like '*1 packages installed*') -or $force) {
        choco install $package @params_array -y
        
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
    