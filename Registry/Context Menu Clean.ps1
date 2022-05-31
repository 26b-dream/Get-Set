# For some reason /f doesn't work sometimes so ECHO Y is used in this cases

# Remove "Give access to"
# Source: https://www.tenforums.com/tutorials/46888-give-access-context-menu-add-remove-windows-10-a.html
REG DELETE "HKCR\*\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /f

# Remove "Customize this folder..."
# Source: https://www.askvg.com/windows-tip-remove-customize-this-folder-option-from-context-menu/
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoCustomizeThisFolder" /t REG_DWORD /d "1" /f

# Remove "Print"
# Source: https://winaero.com/remove-print-context-menu-in-windows-10/
ECHO Y | REG ADD "HKCR\SystemFileAssociations\image\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\batfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\cmdfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\docxfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\fonfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\htmlfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\inffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\inifile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\JSEFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\otffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\pfmfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\regfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\rtffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\ttcfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\ttffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\txtfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\VBEFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\VBSFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\WSFFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f

# Remove "Scan with Microsoft Defender"
# Source: https://www.tenforums.com/tutorials/18145-add-remove-scan-microsoft-defender-context-menu-windows-10-a.html
REG DELETE "HKCR\*\shellex\ContextMenuHandlers\EPP" /f
REG DELETE "HKCR\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}" /f
REG DELETE "HKCR\Directory\shellex\ContextMenuHandlers\EPP" /f
REG DELETE "HKCR\Drive\shellex\ContextMenuHandlers\EPP" /f

# Remove "Send to"
# Source: https://www.howtogeek.com/howto/windows-vista/disable-the-send-to-folder-on-the-windows-explorer-context-menu/
ECHO Y | REG ADD "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo" /ve /t REG_SZ /d "" /f

# Remove "Open in Terminal"
# Source: https://www.elevenforum.com/t/add-or-remove-open-in-windows-terminal-context-menu-in-windows-11.2479/
ECHO Y | REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d "" /f


# Remove "Share"
# Source: https://www.tenforums.com/tutorials/73630-how-add-remove-share-context-menu-windows-10-a.html
REG DELETE "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" /f