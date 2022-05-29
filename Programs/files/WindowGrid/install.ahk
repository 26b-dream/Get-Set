SetTitleMatchMode, 3


WinWait ahk_exe WindowGrid.exe
ControlSend, , {ENTER}, ahk_exe WindowGrid.exe

WinWait WindowGrid Setup
ControlSend, , {TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{SPACE}{TAB}^a{DEL}C:\Programs\WindowGrid\{ENTER}, WindowGrid Setup, 
