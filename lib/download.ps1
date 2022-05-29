function download([string]$url, [string]$path) {
    Write-Host "Downloading: $url" -ForegroundColor Green

    $parent_folder = Split-Path $path

    # Create Path directory if required
    if ( !(Test-Path -Path $parent_folder) ) {
        New-Item -ItemType Directory -Path $parent_folder
    }
    
    # Download file if required
    if ( !(Test-Path -Path $path) ) {
        Write-Host "`tDownloding: $url" -ForegroundColor Green
        Invoke-WebRequest -Uri $url -OutFile $path
    }
    else {
        Write-Host "Previously Downloaded: $url" -ForegroundColor Green
    }
}
