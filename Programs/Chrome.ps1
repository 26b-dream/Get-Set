# Unknown installer inside of an MSI
#   Impossible to modify installation path, see: https://bugs.chromium.org/p/chromium/issues/detail?id=302491
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "Google.Chrome" -force $force
delete_shortcut "Google Chrome"
