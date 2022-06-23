# Not available on Winget
# Not available on Chocolatey
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

$name = "Samsung G9"

$download_folder = "$env:USERPROFILE/Downloads/get_set/$name"
$url = "https://org.downloadcenter.samsung.com/downloadfile/ContentsFile.aspx?CDSite=UNI_UK&OriginYN=N&ModelType=N&ModelName=C49G95TSSU&CttFileID=7738332&CDCttType=DR&VPath=DR%2F202006%2F20200624090333814%2FC49G9xT.exe"
$exe_path = "$download_folder/C49G9xT.exe"

download $url $exe_path

# TODO: Is this switch actually needed?
# TODO: Installation works, so maybe just don't touch it
& "$exe_path" /SILENT
