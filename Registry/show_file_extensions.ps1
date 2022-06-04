# See: https://www.elevenforum.com/t/show-or-hide-file-name-extensions-for-known-file-types-in-windows-11.898/
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
