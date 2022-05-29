function extract([string]$zip_path, [string]$extract_path) {
    $parent_folder = Split-Path $extract_path

    # Create Path directory if required
    if ( !(Test-Path -Path $parent_folder) ) {
        New-Item -ItemType Directory -Path $parent_folder
    }
    
    # If the file does not exist extract the file
    if ( !(Test-Path -Path $extract_path) ) {
        Expand-Archive -LiteralPath $zip_path -DestinationPath $extract_path
        Write-Host "Extracted: $zip_path" -ForegroundColor Green
    }
    else {
        Write-Host "Previously Extracted: $zip_path" -ForegroundColor Green
    }
    

}
