param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

winget_install $PSCommandPath "SumatraPDF.SumatraPDF" -force $force
delete_shortcut "SumatraPDF"
