function choco_install($file, [string]$package, [string]$params, [string]$force) {
    $name = (get-item $file).BaseName

    Write-Host "Installing: $name" -ForegroundColor Green

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
            Write-Host "`t$name install failed" -ForegroundColor Red
        }
        # Check if installation was successful
        else {
            Write-Host "`t$name installed" -ForegroundColor Green
        }
    }
    else {
        Write-Host "`t$name already installed" -ForegroundColor Green
    }
}
    