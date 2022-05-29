function delete_shortcut([string]$string_or_path) {
    # Convert path to string but leave strings untouched
    if (Test-Path -Path $string_or_path) {
        $shortcut_name = (get-item $string_or_path).BaseName
    }
    else{
        $shortcut_name = $string_or_path

    }

    # The shortcut may exist in the user path or public path
    $public_path = "$env:Public\Desktop\$shortcut_name.lnk"
    $user_path = "$env:USERPROFILE\Desktop\$shortcut_name.lnk"

    # Wait up to 10 seconds for the shortcut to exist
    $counter = 0
    if (!(Test-Path -Path $public_path) -and !(Test-Path -Path $user_path)) {
        do {
            Start-Sleep -Milliseconds 100
            $counter++
            Write-Progress -Activity "Waiting for shortcut to exist" -PercentComplete ($counter)
        }
        until ((Test-Path -Path $public_path) -or (Test-Path -Path $user_path) -or ($counter -eq 100))
    }

    # Attempt to delete both possible shortcut locations
    if (Test-Path -Path $public_path) {
        Remove-Item -Path $public_path -Force
        Write-Host "Shortcut deleted $public_path" -ForegroundColor Green
    }
    elseif (Test-Path -Path $user_path) {
        Remove-Item -Path $user_path -Force
        Write-Host "Shortcut deleted: $user_path" -ForegroundColor Green
    }
    # If file never existed throw an error
    else {
        Write-Host "Unable to Delete Shortcut:`n`t$public_path`n`t$user_path" -ForegroundColor Red
    }

}
