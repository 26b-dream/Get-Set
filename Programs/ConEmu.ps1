# ConEmu has it's only special command line installation method that allows more flexibility than Winget or Chocolatey
param ($force)
. "$((get-item $PSScriptRoot).parent.FullName)\lib\load.ps1"

# set lnk $TRUE; is supposed to make it where no desktop shortcut is made
#   Instead it creates a shortcut called False.lnk
# TODO: Copy configuration file
powershell -NoProfile -ExecutionPolicy RemoteSigned -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; set dst '$(install_path $PSCommandPath)'; set lnk $FALSE; iex ((new-object net.webclient).DownloadString('https://conemu.github.io/install2.ps1'))"

# Because the installer is a little bit broken the shortcut needs to be deleted if it exists
delete_shortcut "False"
