@echo off
chcp 65001
Color f0
title Optimize Windows - Facebook: fb.com/boboiboy.gala.7 [Hoàng Việt Quang (Tèo Sushi)]
cls

::Kiểm tra quyền Quản trị viên
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
 pushd "%CD%"
    CD /D "%~dp0"
cls 

::Intro (Source: Ghost Spectre)
:TeoSushi
cls && color 08
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")
<nul set /p=""
call :PainText 03 "                             P"
call :PainText 03 " o"
call :PainText 03 " w"
call :PainText 03 " e"
call :PainText 03 " r"
call :PainText 03 " e"
call :PainText 03 " d"
call :PainText 03 "    b"
call :PainText 03 " y"
call :PainText 0D "    T"
call :PainText 0D "  E"
call :PainText 0D "  O"
call :PainText 0D "    S"
call :PainText 0D "  U"
call :PainText 0D "  S"
call :PainText 0D "  H"
call :PainText 0D "  I"
timeout /t 3 >nul
cls
goto :end
:PainText
<nul set /p "=%DEL%" > "%~2"
findstr /v /a:%1 /R "+" "%~2" nul
del "%~2" > nul
goto :eof
:end
echo.
@echo off
:: NORMAL FOREG COLORS
set nhcolor=
set Black=%nhcolor%[30m
set Red=%nhcolor%[31m
set Green=%nhcolor%[32m
set Yellow=%nhcolor%[33m
set Blue=%nhcolor%[33m
set Magenta=%nhcolor%[35m
set Cyan=%nhcolor%[36m
set White=%nhcolor%[37m
set Lightgray=%nhcolor%[37m
:: STRONG FOREG COLORS
set SWhite=%nhcolor%[90m
set SRed=%nhcolor%[91m
set SGreen=%nhcolor%[92m
set SYellow=%nhcolor%[93m
set SBlue=%nhcolor%[94m
set SMagenta=%nhcolor%[95m
set SCyan=%nhcolor%[96m
set SWhite=%nhcolor%[97m
:: NORMALBACKGROUND
set NBlack=%nhcolor%[40m
set NRed=%nhcolor%[41m
set NGreen=%nhcolor%[42m
set NYellow=%nhcolor%[43m
set NBlue=%nhcolor%[44m
set NMagenta=%nhcolor%[45m
set NCyan=%nhcolor%[46m
set NWhite=%nhcolor%[47m
:: STRONGBACKGROUND
set BBlack=%nhcolor%[100m
set BRed=%nhcolor%[101m
set BGreen=%nhcolor%[102m
set BYellow=%nhcolor%[103m
set BBlue=%nhcolor%[104m
set BMagenta=%nhcolor%[105m
set BCyan=%nhcolor%[106m
set BWhite=%nhcolor%[107m
:: STYLE
set Green=%nhcolor%[32m
set White=%nhcolor%[37m
set Cyan=%nhcolor%[36m
set Magenta=%nhcolor%[35m
set Red=%nhcolor%[31m
set Yellow=%nhcolor%[33m
set Lightgray=%nhcolor%[37m
set Bold=%nhcolor%[1m

goto Home

:Home
color f0
cls
echo =========================================================================
Echo.
Echo                     Optimize Windows by Tèo Sushi
echo.
Echo Facebook: https://www.facebook.com/boboiboy.gala.7
Echo           Hoàng Việt Quang (Tèo Sushi)
Echo.
Echo Vui lòng đọc kỹ HDSD trước khi dùng!
Echo Vui lòng đọc kỹ HDSD trước khi dùng!
Echo Vui lòng đọc kỹ HDSD trước khi dùng!
echo.
echo Việc gì quan trọng nhắc lại 3 lần :))
Echo.
Echo =========================================================================
Echo.
echo  Tool sẽ chạy sau vài giây...
Echo ==============================
ping 127.0.0.1 -n 5 > nul
Goto ClearCacheBrowser

:ClearCacheBrowser
cls
echo Đang xoá tập tin tạm của các trình duyệt...
del /q /s "%LOCALAPPDATA%\Microsoft\Windows\INetCache\*.*"
echo Đang xóa cache trình duyệt...
::Tắt trình duyệt web
::taskkill /im chrome.exe /f >nul 2>&1
::taskkill /im firefox.exe /f >nul 2>&1
::taskkill /im iexplore.exe /f >nul 2>&1
::taskkill /im msedge.exe /f >nul 2>&1
::echo Đã tắt trình duyệt thành công!
echo Đang xóa cache...
echo Đang xóa cache trình duyệt Google Chrome...
rmdir /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache"
echo Đã xóa cache trình duyệt Google Chrome thành công!

timeout /t 2
Cls
echo Đang xóa cache trình duyệt Firefox...
rmdir /q /s "%APPDATA%\Mozilla\Firefox\Profiles\*.default\cache2"
echo Đã xóa cache trình duyệt Firefox thành công!

timeout /t 2
Cls
echo Đang xóa cache trình duyệt Internet Explorer...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
echo Đã xóa cache trình duyệt Internet Explorer thành công!

timeout /t 2
Cls
echo Đang xóa cache trình duyệt Microsoft Edge...
rmdir /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache"
echo Đã xóa cache trình duyệt Microsoft Edge thành công!

timeout /t 2
Cls
echo Đã hoàn thành việc xóa cache trình duyệt!

echo Tập tin tạm đã được dọn!
goto ClearBin

:ClearBin
Cls
for /D %%d in (C:\ D:\ E:\ F:\ G:\ H:\ I:\ J:\ K:\ L:\ M:\ N:\ O:\ P:\ Q:\ R:\ S:\ T:\ U:\ V:\ W:\ X:\ Y:\ Z:\) do (
    if exist "%%d\$Recycle.Bin" (
        echo Deleting files in %%d\$Recycle.Bin...
        rd /s /q "%%d\$Recycle.Bin"
    )
)
Goto Heathcheck

:Heathcheck

Cls
echo Dọn dẹp cache và tệp tạm thời...
del /f /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cookies"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\History"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\JumpListIcons\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Media Cache\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Media History"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\QuotaManager"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Thumbnails\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Web Data"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Web Data-journal"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\GPUCache\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\IndexedDB\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Local Storage\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WebCache\*.*"
del /f /s /q "%USERPROFILE%\AppData\Local\Temp\*.*"
del /f /s /q "%WINDIR%\Logs\CBS\*.*"
del /f /s /q "%WINDIR%\Logs\DISM\*.*"
del /f /s /q "%WINDIR%\Logs\EventLog\*.*"
del /f /s /q "%WINDIR%\Logs\System32\*.*"
del /f /s /q "%WINDIR%\Prefetch\*.*"
del /f /s /q "%USERPROFILE%\Recent\*.*"
echo Dọn dẹp hoàn tất.
goto ClearCache

:ClearCache

timeout /t 2
cls
echo "Đang xóa các tệp tạm và tập tin rác..."
:: Xóa các tệp tạm và tập tin rác
del /q /f /s %temp%\*
del /f /s /q %TEMP%\*
del /f /s /q %SystemRoot%\Temp\*
rd /s /q %SystemRoot%\Prefetch
rd /s /q %SystemRoot%\SoftwareDistribution\Download
rd /s /q %SystemRoot%\Logs\CBS
rd /s /q %SystemRoot%\Minidump
rd /s /q %SystemRoot%\MemoryDiagnostics
rd /s /q %SystemRoot%\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\INetCache
rd /s /q %SystemRoot%\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\INetCache
rd /s /q %USERPROFILE%\AppData\Local\Microsoft\Windows\INetCache
rd /s /q %USERPROFILE%\AppData\Local\Temp
rd /s /q %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Cache
for /d %%i in ("C:\Users\*") do del /q /f /s "%%i\AppData\Local\Temp\*.*"
del /q /f /s %windir%\Prefetch\*
@echo on
for /f "tokens=*" %%a in ('wevtutil.exe el') do wevtutil.exe cl "%%a"
@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisableLastAccessUpdate /t REG_DWORD /d 1 /f

timeout /t 2

echo Đang xóa các file tạm và rác...

REM Đường dẫn cần xóa
set paths=C:\Users\Administrator\AppData\Local\Microsoft\Edge\User Data\Default\Sessions
set paths=%paths%;C:\Users\Administrator\AppData\Local\Microsoft\Windows\INetCache\IE\VXX40LCM
set paths=%paths%;C:\Users\Administrator\AppData\Local\Temp
set paths=%paths%;C:\Windows\Temp
set paths=%paths%;C:\Windows\Installer\$PatchCache$\Managed\1926E8D15D0BCE53481466615F760A7F\10.0.40219

for %%i in (%paths%) do (
    echo Đang xóa các file trong thư mục %%i...
    del /f /s /q "%%i\*.*"
)

echo Đã xóa các file tạm và rác thành công.
timeout /t 2
Cls
echo "Đang chạy Disk Cleanup..."
:: Chạy Disk Cleanup
cleanmgr /sagerun:1

timeout /t 2
cls
:DeepCleanup
timeout /t 2
Cls

echo Xoá các bản cập nhật thừa của Windows Update...
echo.

echo Đang tìm kiếm các bản cập nhật thừa...
DISM.exe /Online /Cleanup-Image /AnalyzeComponentStore

echo.
echo Đang xoá các bản cập nhật thừa...
DISM.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase

echo.
echo Xoá các bản cập nhật thừa thành công!

timeout /t 2
cls
REM Xoá các bản cập nhật thừa của Windows để giải phóng không gian đĩa
echo Đang tìm các bản cập nhật thừa...
DISM /Online /Get-Packages /Format:Table | findstr /C:"Superseded" > "%temp%\list.txt"
for /F "tokens=1,*" %%A in ('type "%temp%\list.txt"') do (
echo Đang xoá bản cập nhật: %%B
DISM /Online /Remove-Package /PackageName:%%B /quiet /norestart
)
echo Xoá các bản cập nhật thừa thành công.

timeout /t 2
cls
echo Đang dọn sạch các file tạm thời của hệ thống...
del /F /Q %temp%\*
del /F /Q %systemroot%\Temp\*
echo.

echo Đang xoá bộ nhớ cache của Internet Explorer...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
echo.

echo Đang xoá các file tạm thời của Edge...
del /F /Q %localappdata%\Packages\Microsoft.MicrosoftEdge*\AC\#!001\*
echo.

echo Đã hoàn thành việc dọn sạch hệ thống và cache trình duyệt web.
Goto End

:End 
Cls 
echo Đã hoàn thảnh!
Echo.
echo Tool sẽ tự động tắt sau vài giây...
ping 127.0.0.1 -n 4 > nul
exit