; # [ zrfisaac ]

; # [ about ]
; # - author : Isaac Santana
; # . - email : zrfisaac@gmail.com
; # . - site : zrfisaac.github.io

; # [ nsis ]

; # - Biblioteca
!include "MUI2.nsh"
!include "x64.nsh"

; # - Geral
Name "Dionysus Dummy Provider 0.0.1"
OutFile "..\out\dummy.exe"
Unicode True
InstallDir "$SYSDIR"
InstallDirRegKey HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" ""
RequestExecutionLevel Admin

; # - Pictures
;!define MUI_ICON "Pictures\Installer.ico" 
;!define MUI_UNICON "Pictures\Uninstaller.ico" 
;!define MUI_HEADERIMAGE
;!define MUI_HEADERIMAGE_RIGHT
;!define MUI_HEADERIMAGE_BITMAP "Pictures\InstallerHeader.bmp"
;!define MUI_WELCOMEFINISHPAGE_BITMAP "Pictures\InstallerBanner.bmp"
;!define MUI_HEADERIMAGE_UNBITMAP  "Pictures\UninstallerHeader.bmp"
;!define MUI_UNWELCOMEFINISHPAGE_BITMAP "Pictures\UninstallerBanner.bmp"

; # - Interface
!define MUI_ABORTWARNING

; # - Page - Installer
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; # - Language
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "Spanish"
!insertmacro MUI_LANGUAGE "SpanishInternational"
!insertmacro MUI_LANGUAGE "SimpChinese"
!insertmacro MUI_LANGUAGE "TradChinese"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Dutch"
!insertmacro MUI_LANGUAGE "Danish"
!insertmacro MUI_LANGUAGE "Swedish"
!insertmacro MUI_LANGUAGE "Norwegian"
!insertmacro MUI_LANGUAGE "NorwegianNynorsk"
!insertmacro MUI_LANGUAGE "Finnish"
!insertmacro MUI_LANGUAGE "Greek"
!insertmacro MUI_LANGUAGE "Russian"
!insertmacro MUI_LANGUAGE "Portuguese"
!insertmacro MUI_LANGUAGE "PortugueseBR"
!insertmacro MUI_LANGUAGE "Polish"
!insertmacro MUI_LANGUAGE "Ukrainian"
!insertmacro MUI_LANGUAGE "Czech"
!insertmacro MUI_LANGUAGE "Slovak"
!insertmacro MUI_LANGUAGE "Croatian"
!insertmacro MUI_LANGUAGE "Bulgarian"
!insertmacro MUI_LANGUAGE "Hungarian"
!insertmacro MUI_LANGUAGE "Thai"
!insertmacro MUI_LANGUAGE "Romanian"
!insertmacro MUI_LANGUAGE "Latvian"
!insertmacro MUI_LANGUAGE "Macedonian"
!insertmacro MUI_LANGUAGE "Estonian"
!insertmacro MUI_LANGUAGE "Turkish"
!insertmacro MUI_LANGUAGE "Lithuanian"
!insertmacro MUI_LANGUAGE "Slovenian"
!insertmacro MUI_LANGUAGE "Serbian"
!insertmacro MUI_LANGUAGE "SerbianLatin"
!insertmacro MUI_LANGUAGE "Arabic"
!insertmacro MUI_LANGUAGE "Farsi"
!insertmacro MUI_LANGUAGE "Hebrew"
!insertmacro MUI_LANGUAGE "Indonesian"
!insertmacro MUI_LANGUAGE "Mongolian"
!insertmacro MUI_LANGUAGE "Luxembourgish"
!insertmacro MUI_LANGUAGE "Albanian"
!insertmacro MUI_LANGUAGE "Breton"
!insertmacro MUI_LANGUAGE "Belarusian"
!insertmacro MUI_LANGUAGE "Icelandic"
!insertmacro MUI_LANGUAGE "Malay"
!insertmacro MUI_LANGUAGE "Bosnian"
!insertmacro MUI_LANGUAGE "Kurdish"
!insertmacro MUI_LANGUAGE "Irish"
!insertmacro MUI_LANGUAGE "Uzbek"
!insertmacro MUI_LANGUAGE "Galician"
!insertmacro MUI_LANGUAGE "Afrikaans"
!insertmacro MUI_LANGUAGE "Catalan"
!insertmacro MUI_LANGUAGE "Esperanto"
!insertmacro MUI_LANGUAGE "Asturian"
!insertmacro MUI_LANGUAGE "Basque"
!insertmacro MUI_LANGUAGE "Pashto"
!insertmacro MUI_LANGUAGE "ScotsGaelic"
!insertmacro MUI_LANGUAGE "Georgian"
!insertmacro MUI_LANGUAGE "Vietnamese"
!insertmacro MUI_LANGUAGE "Welsh"
!insertmacro MUI_LANGUAGE "Armenian"
!insertmacro MUI_LANGUAGE "Corsican"
!insertmacro MUI_LANGUAGE "Tatar"
!insertmacro MUI_LANGUAGE "Hindi"
Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

; # - Version
VIProductVersion "0.0.1.0"
VIAddVersionKey "ProductName" "Dionysus Dummy Provider"
VIAddVersionKey "Comments" "https://zrfisaac.github.io"
VIAddVersionKey "CompanyName" "Isaac Caires / zrfisaac.github.io"
VIAddVersionKey "LegalTrademarks" "Isaac Caires / zrfisaac.github.io"
VIAddVersionKey "LegalCopyright" "Isaac Caires / zrfisaac.github.io"
VIAddVersionKey "FileDescription" "Dionysus Dummy Provider"
VIAddVersionKey "FileVersion" "0.0.1.0"
VIAddVersionKey "ProductVersion" "0.0.1.0"

; # - Installer - SQLSERVER
Section SQLSERVER
	; # : - Required
	SectionIn RO

	; Install 64-bit

	; Config 64-bit - HKEY_LOCAL_MACHINE
	SetRegView 64
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBC.INI" "" ""
	WriteRegDWORD HKLM "SOFTWARE\ODBC\ODBCINST.INI\ODBC Core" "UsageCount" 0x00000001
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "APILevel" "2"
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "ConnectFunctions" "YYY"
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "CPTimeout" "60"
	WriteRegExpandStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "Driver" "C:\\system32\\sqlsrv32.dll"
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "DriverODBCVer" "03.50"
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "FileUsage" "0"
	WriteRegExpandStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "Setup" "C:\\system32\\sqlsrv32.dll"
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "SQLLevel" "1"
	WriteRegDWORD HKLM "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "UsageCount" 0x00000001
	WriteRegStr HKLM "SOFTWARE\ODBC\ODBCINST.INI\ODBC Drivers" "Dummy" "Installed"

	; Config 64-bit - HKEY_CURRENT_USER
	SetRegView 64
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBC.INI" "" ""
	WriteRegDWORD HKCU "SOFTWARE\ODBC\ODBCINST.INI\ODBC Core" "UsageCount" 0x00000001
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "APILevel" "2"
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "ConnectFunctions" "YYY"
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "CPTimeout" "60"
	WriteRegExpandStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "Driver" "C:\\system32\\sqlsrv32.dll"
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "DriverODBCVer" "03.50"
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "FileUsage" "0"
	WriteRegExpandStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "Setup" "C:\\system32\\sqlsrv32.dll"
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "SQLLevel" "1"
	WriteRegDWORD HKCU "SOFTWARE\ODBC\ODBCINST.INI\Dummy" "UsageCount" 0x00000001
	WriteRegStr HKCU "SOFTWARE\ODBC\ODBCINST.INI\ODBC Drivers" "Dummy" "Installed"

	; Install 32-bit - HKEY_LOCAL_MACHINE
	SetRegView 32
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBC.INI" "" ""
	WriteRegDWORD HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\ODBC Core" "UsageCount" 0x00000001
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "APILevel" "2"
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "ConnectFunctions" "YYY"
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "CPTimeout" "60"
	WriteRegExpandStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "Driver" "C:\\syswow64\\sqlsrv32.dll"
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "DriverODBCVer" "03.50"
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "FileUsage" "0"
	WriteRegExpandStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "Setup" "C:\\syswow64\\sqlsrv32.dll"
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "SQLLevel" "1"
	WriteRegDWORD HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "UsageCount" 0x00000001
	WriteRegStr HKLM "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\ODBC Drivers" "Dummy" "Installed"

	; Install 32-bit - HKEY_CURRENT_USER
	SetRegView 32
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBC.INI" "" ""
	WriteRegDWORD HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\ODBC Core" "UsageCount" 0x00000001
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "APILevel" "2"
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "ConnectFunctions" "YYY"
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "CPTimeout" "60"
	WriteRegExpandStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "Driver" "C:\\syswow64\\sqlsrv32.dll"
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "DriverODBCVer" "03.50"
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "FileUsage" "0"
	WriteRegExpandStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "Setup" "C:\\syswow64\\sqlsrv32.dll"
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "SQLLevel" "1"
	WriteRegDWORD HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\Dummy" "UsageCount" 0x00000001
	WriteRegStr HKCU "SOFTWARE\WOW6432Node\ODBC\ODBCINST.INI\ODBC Drivers" "Dummy" "Installed"
SectionEnd
