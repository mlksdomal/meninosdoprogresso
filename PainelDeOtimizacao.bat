@echo off
:: === AUTO ELEVACAO ADMIN ===
net session >nul 2>&1
if %errorLevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

@echo off
title Painel Otimizador
color 0a
mode con: cols=70 lines=25

:: ===== CREDENCIAIS =====
set USER_CORRETO=painelotimizar
set SENHA_CORRETA=otimizacao2k26

:: ===== TELA INICIAL =====
:boot
cls
echo ======================================================
echo.
echo                PAINEL OTIMIZADOR
echo.
echo                  Inicializando...
echo.
echo ======================================================
call :loading
goto login

:: ===== LOADING =====
:loading
setlocal enabledelayedexpansion
set bar=
for /l %%i in (1,1,25) do (
    set bar=!bar!#
    cls
    echo ======================================================
    echo.
    echo           Carregando: !bar!
    echo.
    echo ======================================================
    ping localhost -n 1 >nul
)
endlocal
exit /b

:: ===== LOGIN =====
:login
cls
echo ======================================================
echo ^|                                                   ^|
echo ^|                PAINEL OTIMIZADOR                 ^|
echo ^|                                                   ^|
echo ======================================================
echo ^|                                                   ^|
echo ^|              By Irmao Carlete         ^|
echo ^|                                                   ^|
echo ^|   Usuario:                                        ^|
set /p user=^|            ^> 

echo ^|                                                   ^|
echo ^|   Senha:                                          ^|
set /p pass=^|            ^> 
echo ^|                                                   ^|
echo ======================================================

if "%user%"=="%USER_CORRETO%" if "%pass%"=="%SENHA_CORRETA%" goto confirmar

echo.
echo                 Acesso negado...
timeout /t 2 >nul
goto login
cls
echo =================  LOGIN  =================
echo.

set /p user=Usuario: 
set /p pass=Senha: 

if "%user%"=="%USER_CORRETO%" if "%pass%"=="%SENHA_CORRETA%" goto confirmar

echo.
echo Acesso negado...
timeout /t 2 >nul
goto login

:: ===== CONFIRMACAO =====
:confirmar
cls
echo Login realizado com sucesso.
echo.
set /p escolha=Deseja prosseguir? (S/N): 

if /I "%escolha%"=="S" goto liberado
if /I "%escolha%"=="N" exit

goto confirmar

:liberado
cls
echo Iniciando sistema...
timeout /t 1 >nul

:: ===== SEU SCRIPT CONTINUA ABAIXO =====
:: ===== SEU SCRIPT CONTINUA ABAIXO =====

del "C:\Windows\system32\DirectXinput.exe"
cls
del /s /f /q c:\windows\prefetch
cls
del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\CustomDestinations
cls
del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\AutomaticDestinations
cls
del /s /f /q c:\ProgramData\Microsoft\Windows\WER\ReportArchive
cls
del /s /f /q c:\ProgramData\Microsoft\Windows\WER\ReportQueue
cls
del /s /f /q c:\windows\temp\*.*
cls
rd /s /q c:\windows\temp
cls
md c:\windows\temp
cls
del /q /f /s C:\Windows\prefetch
cls
del /s /f /q C:\WINDOWS\Prefetch
cls
del /s /f /q %temp%\*.*
cls
rd /s /q %temp%
cls
md %temp%
cls
deltree /y c:\windows\tempor~1
cls
deltree /y c:\windows\temp
cls
deltree /y c:\windows\tmp
cls
deltree /y c:\windows\ff*.tmp
cls
deltree /y c:\windows\history
cls
deltree /y c:\windows\recent
cls
deltree /y c:\windows\spool\printers
cls
del c:\WIN386.SWP
cls
del /s /f /q "%USERPROFILE%\Local Settings\History"\*.*    
cls
rd /s /q "%USERPROFILE%\Local Settings\History"    
cls
md "%USERPROFILE%\Local Settings\History"    
cls
del /s /f /q "%USERPROFILE%\Local Settings\Temporary Internet Files"\*.*    
cls
rd /s /q "%USERPROFILE%\Local Settings\Temporary Internet Files"    
cls
md "%USERPROFILE%\Local Settings\Temporary Internet Files"    
cls
del /s /f /q "%USERPROFILE%\Local Settings\Temp"\*.*    
cls
rd /s /q "%USERPROFILE%\Local Settings\Temp"    
cls
md "%USERPROFILE%\Local Settings\Temp"    
cls
del /s /f /q "%USERPROFILE%\Recent"\*.*    
cls
rd /s /q "%USERPROFILE%\Recent"    
cls
md "%USERPROFILE%\Recent"    
cls
del /s /f /q "%USERPROFILE%\Cookies"\*.*    
cls
rd /s /q "%USERPROFILE%\Cookies"    
cls
md "%USERPROFILE%\Cookies"
cls
RD /S /Q %temp%
cls
MKDIR %temp%
cls
takeown /f "%temp%" /r /d y
cls
takeown /f "C:\Windows\Temp" /r /d y
cls
RD /S /Q C:\Windows\Temp
cls
MKDIR C:\Windows\Temp
cls
takeown /f "C:\Windows\Temp" /r /d y
cls
takeown /f %temp% /r /d y
cls
del /s /f /q c:\windows\temp\*.*
cls
rd /s /q c:\windows\temp
cls
md c:\windows\temp
cls
del /s /f /q C:\WINDOWS\Prefetch
cls
del /s /f /q %temp%\*.*
cls
rd /s /q %temp%
cls
md %temp%
cls
rd /s /q c:\$Recycle.Bin
cls
mkdir C:\$Recycle.Bin
cls
del /s /f /q  c:\windows\Downloaded Program Files\*.*
cls
DEL /F /S /Q %HOMEPATH%\Config~1\Temp\*.* 
cls
DEL /F /S /Q C:\WINDOWS\Temp\*.* 
cls
DEL /F /S /Q C:\WINDOWS\Prefetch\*.* 
cls
DEL "%WINDIR%\Tempor~1\*.*" /F /S /Q 
cls
RD /S /Q "%HOMEPATH%\Config~1\Temp" 
cls
MD "%HOMEPATH%\Config~1\Temp" 
cls
RD /S /Q C:\WINDOWS\Temp\ 
cls
MD C:\WINDOWS\Temp 
cls
RD /S /Q C:\WINDOWS\Prefetch\ 
cls
MD C:\WINDOWS\Prefetch
cls
takeown /A /R /D Y /F C:\Users\%USERNAME%\AppData\Local\Temp\
cls
icacls C:\Users\%USERNAME%\AppData\Local\Temp\ /grant administradores:F /T /C
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Temp\
cls
md C:\Users\%USERNAME%\AppData\Local\Temp\
cls
takeown /A /R /D Y /F C:\windows\temp
cls
icacls C:\windows\temp /grant administradores:F /T /C
cls
rmdir /q /s c:\windows\temp
cls
md c:\windows\temp
cls
del c:\windows\logs\cbs\*.log
cls
del C:\Windows\Logs\MoSetup\*.log
cls
del C:\Windows\Panther\*.log /s /q
cls
del C:\Windows\inf\*.log /s /q
cls
del C:\Windows\logs\*.log /s /q
cls
del C:\Windows\SoftwareDistribution\*.log /s /q
cls
del C:\Windows\Microsoft.NET\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\
cls
del /s /f /q c:\windows\temp\*.*
cls
rd /s /q c:\windows\temp
cls
md c:\windows\temp
cls
del /s /f /q C:\WINDOWS\Prefetch
cls
del /s /f /q %temp%\*.*
cls
rd /s /q %temp%
cls
md %temp%
cls
del c:\windows\logs\cbs\*.log
cls
del C:\Users\%USERNAME%\AppData\Local\CrashDumps
cls
del C:\Windows\Logs\MoSetup\*.log
cls
del C:\Windows\Panther\*.log /s /q
cls
del C:\Windows\inf\*.log /s /q
cls
del C:\Windows\logs\*.log /s /q
cls
del C:\Windows\SoftwareDistribution\*.log /s /q
cls
del C:\Windows\Microsoft.NET\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
cls
del C:\ProgramData\NVIDIA Corporation\Drs
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\
cls
del c:\windows\logs\cbs\*.log
cls
del C:\Users\%USERNAME%\AppData\Local\CrashDumps
cls
del C:\Windows\Logs\MoSetup\*.log
cls
del C:\Windows\Panther\*.log /s /q
cls
del C:\Windows\inf\*.log /s /q
cls
del C:\Windows\logs\*.log /s /q
cls
del C:\Windows\SoftwareDistribution\*.log /s /q
cls
del C:\Windows\Microsoft.NET\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
cls
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
cls
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\
cls
del "C:\Recovery\ntuser.sys"
cls
del "C:\MSOCache" /p
cls
del "C:\Users\Public\Shared Files"
cls
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
cls
erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
cls
netsh interface set interface "Local Area Connection" disable
cls
RD /s /q "C:\Users\%Username%\AppData\Local\UnrealEngineLauncher"
cls
RD /s /q "C:\Users\%Username%\AppData\Local\UnrealEngine"
cls
RD /s /q "C:\Users\%Username%\AppData\Local\Speech Graphics"
cls
RD /s /q "C:\Users\%Username%\AppData\Local\Publishers"
cls
RD /s /q "C:\Users\%Username%\AppData\Local\Programs\Common"
cls
RD /s /q "C:\Users\%Username%\AppData\Local\PlaceholderTileLogoFolder"
cls
RD /s /q "C:\Users\%Username%\AppData\Roaming\EasyAntiCheat"
cls
del /q /s "C:\Users\%username%\AppData\Local\Microsoft\Feeds"
cls
del /a /q /s "C:\Users\%Username%\AppData\Local\IconCache.db"
cls
del /a /q /s "C:\Users\%Username%\AppData\Local\updater.log"
cls
del /a /q /s "C:\Users\%Username%\AppData\Local\IconCache.db"
cls
del "%localappdata%\Microsoft\Feeds" /s /f /q
cls
@RD /S /Q "%C:\MSOCache\{71230000-00E2-0000-1000-00000000}"
cls
del /s /f /q %userprofile%\Recent\*.*
cls
del /s /f /q C:\Windows\Public\Libraries\*.*
cls
del /s /f /q %windir%\system32\dllcache\*.*
cls
rd /s /q %windir%\system32\dllcache
cls
md %windir%\system32\dllcache
cls
rmdir /s /q "%systemdrive%\Windows\System32\wbem\Repository\OBJECTS.DATA\*.*"
cls
rmdir /s /q "%systemdrive%\Windows\System32\wbem\Repository\INDEX.BTR\*.*"
cls
rmdir /s /q "%systemdrive%\Windows\System32\wbem\Repository\MAPPING3.MAP\*.*"
cls
del %windir%\KB*.log /f /q
cls
rd /q /s C:\$Recycle.Bin
cls
deltree /y c:\windows\tempor~1
cls
deltree /y c:\windows\temp
cls
deltree /y c:\windows\tmp
cls
deltree /y c:\windows\ff*.tmp
cls
deltree /y c:\windows\history
cls
deltree /y c:\windows\cookies
cls
deltree /y c:\windows\recent
cls
deltree /y c:\windows\spool\printers
cls
del c:\WIN386.SWP
cls
DEL /F /S /Q %HOMEPATH%\Config~1\Temp\*.* 
cls
DEL /F /S /Q C:\WINDOWS\Temp\*.* 
cls
DEL /F /S /Q C:\WINDOWS\Prefetch\*.* 
cls
DEL "%WINDIR%\Tempor~1\*.*" /F /S /Q 
cls
RD /S /Q "%HOMEPATH%\Config~1\Temp" 
cls
MD "%HOMEPATH%\Config~1\Temp" 
cls
RD /S /Q C:\WINDOWS\Temp\ 
cls
MD C:\WINDOWS\Temp 
cls
RD /S /Q C:\WINDOWS\Prefetch\ 
cls
MD C:\WINDOWS\Prefetch
cls
del /q /s %ProgramData%\Microsoft\Windows Defender\Scans*
cls
Net start WinDefend 
cls
del /s /f /q C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\IE\Q4QUJWYI
cls
deltree /y C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\IE\Q4QUJWYI
cls
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
cls
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUICache" /f
cls
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f
cls
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
cls
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam" /f 
cls
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell" /f
cls
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell" /f
cls
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\bat" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\dll" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\EXE" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\mov" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\mp4" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\png" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\rar" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\webp" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\zip" /f
cls
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\xml" /f
cls
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall" /f
cls
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /f
cls
reg delete "HKEY_LOCAL_MACHINE\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /f 
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList"/f 
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMR" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Winrar\ArcHistory" /f 
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\*" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\ {CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-291377155-2684749754-2222734016-500" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-3684886153-2501121017-2149685254-1001" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\ArcHistory" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\7-Zip\FM" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\MicrosoftWindows\CurrentVersion\Explorer\RecentDocs" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\Applications Computador\HKEY_CURRENT_USER\SOFTWARE\WinRAR" /F
cls
REG DELETE "HKEY_CLASSES_ROOT.dll" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\LocationApi.1\CLSID" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /F
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\ArcHistory" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\7-Zip\FM" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\MicrosoftWindows\CurrentVersion\Explorer\RecentDocs" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\Applications Computador\HKEY_CURRENT_USER\SOFTWARE\WinRAR" /F
cls
REG DELETE "HKEY_CLASSES_ROOT.dll" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\LocationApi.1\CLSID" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /F
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /f 
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList"/f 
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMR" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Winrar\ArcHistory" /f 
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\ArcHistory" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\7-Zip\FM" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\MicrosoftWindows\CurrentVersion\Explorer\RecentDocs" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\Applications Computador\HKEY_CURRENT_USER\SOFTWARE\WinRAR" /F
cls
REG DELETE "HKEY_CLASSES_ROOT.dll" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\LocationApi.1\CLSID" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /F
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\" /F
cls
REG DEclsLETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
cls
REG DELETclsE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
cls
REG DELETE "clsHKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\*" /f
cls 
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\ {CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-291377155-2684749754-2222734016-500" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-3684886153-2501121017-2149685254-1001" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /f 
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList"/f 
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMR" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Winrar\ArcHistory" /f 
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\AppCompatCache" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\ArcHistory" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\7-Zip\FM" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\MicrosoftWindows\CurrentVersion\Explorer\RecentDocs" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\Applications Computador\HKEY_CURRENT_USER\SOFTWARE\WinRAR" /F
cls
REG DELETE "HKEY_CLASSES_ROOT.dll" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\LocationApi.1\CLSID" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /F
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectInput" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU\*" /f
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\ {CEBFF5CD-ACE2-4F4F-9178-9926F41749EA}\Count" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-291377155-2684749754-2222734016-500" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S-1-5-21-3684886153-2501121017-2149685254-1001" /f
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /f
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /f
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /f
cls
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Search\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Search\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.ComponentUI\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.ComponentUI\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.AppService\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.AppService\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.PreInstalledConfigTask\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.ShareTarget\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.BackgroundTasks\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.Search_1.14.0.19041_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.ShellExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.Windows.StartMenuExperienceHost_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Launch\PackageId\MicrosoftWindows.UndockedDevKit_10.0.19041.423_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.PreInstalledConfigTask\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0 /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.BingWeather_4.25.20211.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.GetHelp_10.1706.13331.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Getstarted_8.2.22942.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MicrosoftEdge_44.19041.423.0_neutral__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MicrosoftOfficeHub_18.1903.1152.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MixedReality.Portal_2000.19081.1301.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.MSPaint_6.1907.29027.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Office.OneNote_16001.12026.20112.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.People_10.1902.633.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsAlarms_10.1906.2182.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsCamera_2018.826.98.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsFeedbackHub_1.1907.3152.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsCalculator_10.1906.55.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsMaps_5.1906.1972.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.WindowsStore_11910.1002.5.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.Xbox.TCUI_1.23.28002.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxApp_48.49.31001.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.19041.423.0_neutral_neutral_cw5n1h2txyewy /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameOverlay_1.46.11001.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGamingOverlay_2.34.28001.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxSpeechToTextOverlay_1.17.29001.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.ZuneMusic_10.19071.19011.0_x64__8wekyb3d8bbwe /f
cls
reg delete HKCR\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.ZuneVideo_10.19071.19011.0_x64__8wekyb3d8bbwe /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\ArcHistory" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\7-Zip\FM" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\MicrosoftWindows\CurrentVersion\Explorer\RecentDocs" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\CIDSizeMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\WinRAR\DialogEditHistory\ExtrPath" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppLaunch" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs.dll" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\UFH\SHC" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\Applications Computador\HKEY_CURRENT_USER\SOFTWARE\WinRAR" /F
cls
REG DELETE "HKEY_CLASSES_ROOT.dll" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\LocationApi.1\CLSID" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.dll\OpenWithList" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched" /F
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\" /F
cls
REG DELETE "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f
cls
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\AppCompatCache" /f
cls
REG DELETE "HKEY_CURRENT_USER\Software\7-Zip\FM" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\MicrosoftWindows\CurrentVersion\Explorer\RecentDocs" /F
cls
REG DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\Applications Computador\HKEY_CURRENT_USER\SOFTWARE\WinRAR" /F
cls
REG DELETE "HKEY_CLASSES_ROOT.dll" /F
cls
REG DELETE "HKEY_CLASSES_ROOT\LocationApi.1\CLSID" /F

del C:\Users\%username%\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt
cls
taskkill /f /im opera.exe
cls
del /q "C:\Users\%username%\clsAppData\Roaming\Opera Software\Opera GX Stable\*.*"
cls
for /d %%i in ("C:\Users\%usernclsame%\AppData\Roaming\Opera Software\Opera GX Stable\*") do rmdir /s /q "%%i"
cls
taskkill /f /im firefox.exe
cls
del /q "C:\Users\%username%\AppData\Roaming\Mozilla\*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Roaming\Mozilla\*") do rmdir /s /q "%%i"
cls
taskkill /f /im brave.exe
cls
del /q "C:\Users\%username%\AppData\Local\BraveSoftware\*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Local\BraveSoftware\*") do rmdir /s /q "%%i"
cls
taskkill /f /im chrome.exe
cls
del /q "C:\Users\%username%\AppData\Local\Google\Chrome\*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Local\Google\Chrome\*") do rmdir /s /q "%%i"
cls
taskkill /f /im msedge.exe
cls
del /q "C:\Users\%username%\AppData\Local\Microsoft\Edge\*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Local\Microsoft\Edge\*") do rmdir /s /q "%%i"
cls
taskkill /f /im vivaldi.exe
cls
del /q "C:\Users\%username%\AppData\Local\Vivaldi\User Data\*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Local\Vivaldi\User Data*") do rmdir /s /q "%%i"
cls
taskkill /f /im browser.exe
cls
del /q "C:\Users\%username%\AppData\Local\Yandex\YandexBrowser\User Data*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Local\Yandex\YandexBrowser\User Data*") do rmdir /s /q "%%i"
cls
taskkill /f /im waterfox.exe
cls
del /q "C:\Users\%username%\AppData\Roaming\Waterfox\*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Roaming\Waterfox\*") do rmdir /s /q "%%i"
cls
taskkill /f /im seamonkey.exe
cls
del /q "C:\Users\%username%\AppData\Local\Mozilla\SeaMonkey\*.*"
cls
for /d %%i in ("C:\Users\%username%\AppData\Local\Mozilla\SeaMonkey\*") do rmdir /s /q "%%i"
cls
fsutil usn deletejournal /d a:
cls
fsutil usn deletejournal /d b:
cls
fsutil usn deletejournal /d c:
cls
fsutil usn deletejournal /d d:
cls
fsutil usn deletejournal /d e:
cls
fsutil usn deletejournal /d f:
cls
fsutil usn deletejournal /d g:
cls
fsutil usn deletejournal /d h:
cls
fsutil usn deletejournal /d i:
cls
fsutil usn deletejournal /d j:
cls
fsutil usn deletejournal /d k:
cls
fsutil usn deletejournal /d l:
cls
fsutil usn deletejournal /d m:
cls
fsutil usn deletejournal /d n:
cls
fsutil usn deletejournal /d o:
cls
fsutil usn deletejournal /d p:
cls
fsutil usn deletejournal /d q:
cls
fsutil usn deletejournal /d r:
cls
fsutil usn deletejournal /d s:
cls
fsutil usn deletejournal /d t:
cls
fsutil usn deletejournal /d u:
cls
fsutil usn deletejournal /d v:
cls
fsutil usn deletejournal /d w:
cls
fsutil usn deletejournal /d x:
cls
fsutil usn deletejournal /d y:
cls
fsutil usn deletejournal /d z:
cls
fsutil usn createJournal d:
cls
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
:do_clear
cls %1
wevtutil.exe cl %1
goto :eof
wevtutil.exe cl %1
ipconfig /flushdns
netsh interface ip delete arpcache
certutil -URLCache * delete
netsh winsock reset
netsh advfirewall reset
cls
taskkill /f /im explorer.exe
cls
taskkill /f /im dwm.exe
cls
taskkill  /f /im ctfmon.exe
cls
taskkill /f /im mspeng.exe
cls
taskkill /f /im csrss.exe
cls
net stop diagtrack
cls
net stop sysmain
cls
net stop pcasvc
cls
net stop eventlog
cls
net stop dps
cls
net stop vmicvss
cls
net stop VSS
cls
net stop Pcasvc
cls
sc stop CDPUserSvc_494ef > nul
cls
start explorer.exe
cls
start dwm.exe
cls
start cftmon.exe
cls
start mspeng.exe
cls
start csrss.exe
cls

:: =========================================
:: AUTO-DESTRUIÇÃO DO SCRIPT (.BAT)
:: =========================================
start "" cmd /c "ping 127.0.0.1 -n 2 >nul & del "%~f0""
exit
