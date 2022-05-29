# See: https://www.elevenforum.com/t/change-which-taskbar-to-show-apps-on-for-multiple-displays-in-windows-11.3682/ 
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V MMTaskbarEnabled /T REG_dWORD /D 1 /F
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /V MMTaskbarMode /T REG_dWORD /D 2 /F