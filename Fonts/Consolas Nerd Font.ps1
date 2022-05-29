# Install pre-requisites
& "$((get-item $PSScriptRoot).parent.FullName)\Programs\svn.ps1"
& "$((get-item $PSScriptRoot).parent.FullName)\Programs\FontForge.ps1"

# Downloading a single folder from Git using git is very slow
# Subversion is able to download the folder in just seconds so use it instead
svn export https://github.com/ryanoasis/nerd-fonts.git/trunk/src/glyphs $env:USERPROFILE\Downloads\silent_install\nerd-fonts-svn\src\glyphs
svn export https://github.com/ryanoasis/nerd-fonts.git/trunk/font-patcher $env:USERPROFILE\Downloads\silent_install\nerd-fonts-svn\font-patcher

C:\Programs\FontForge\bin\ffpython.exe $env:USERPROFILE\Downloads\silent_install\nerd-fonts-svn\font-patcher C:\Windows\Fonts\consola.ttf --complete
C:\Programs\FontForge\bin\ffpython.exe $env:USERPROFILE\Downloads\silent_install\nerd-fonts-svn\font-patcher C:\Windows\Fonts\consolab.ttf --complete
C:\Programs\FontForge\bin\ffpython.exe $env:USERPROFILE\Downloads\silent_install\nerd-fonts-svn\font-patcher C:\Windows\Fonts\consolai.ttf --complete
C:\Programs\FontForge\bin\ffpython.exe $env:USERPROFILE\Downloads\silent_install\nerd-fonts-svn\font-patcher C:\Windows\Fonts\consolaz.ttf --complete

# TODO: Automatically install fonts
Write-Host "Install the fonts manually" -ForegroundColor DarkYellow