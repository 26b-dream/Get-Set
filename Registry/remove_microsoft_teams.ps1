Get-AppxPackage MicrosoftTeams* | Remove-AppxPackage -AllUsers
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v com.squirrel.Teams.Teams /f