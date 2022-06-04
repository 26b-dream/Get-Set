# See: https://www.elevenforum.com/t/show-hidden-files-folders-and-drives-in-windows-11.4962/
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Hidden /T REG_DWORD /D 1 /F