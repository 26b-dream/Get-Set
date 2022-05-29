function download([string]$url, [string]$path) {
    $parent_folder = Split-Path $path

    # Create Path directory if required
    if ( !(Test-Path -Path $parent_folder) ) {
        New-Item -ItemType Directory -Path $parent_folder
    }
    
    # Download file if required
    if ( !(Test-Path -Path $path) ) {
        Invoke-WebRequest -Uri $url -OutFile $path
        Write-Host "Downloaded: $url" -ForegroundColor Green
    }
    else {
        Write-Host "Previously Downloaded: $url" -ForegroundColor Green
    }
}
