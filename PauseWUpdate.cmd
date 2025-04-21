@echo off
chcp 65001
Color f0
title Optimizing Windows - Facebook: fb.com/boboiboy.gala.7 [Hoàng Việt Quang (Tèo Sushi)]
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
call :PainText 03 "                                S"
call :PainText 03 " T"
call :PainText 03 " A"
call :PainText 03 " Y"
call :PainText 03 "  H"
call :PainText 03 " O"
call :PainText 03 " M"
call :PainText 03 " E"
call :PainText 0D "   #S"
call :PainText 0D " T"
call :PainText 0D " A"
call :PainText 0D " Y"
call :PainText 0D " S"
call :PainText 0D " A"
call :PainText 0D " F"
call :PainText 0D " E"
call :PainText 02 "   #C"
call :PainText 02 " O"
call :PainText 02 " V"
call :PainText 02 " I"
call :PainText 02 " D"
call :PainText 02 " 19"
timeout /t 3 >nul
color f0
cls
echo The introduction section is taken from Ghost Spectre's source."
echo Đoạn giới thiệu này được lấy từ nguồn của Ghost Spectre
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
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v "PausedFeatureStatus" /t REG_DWORD /d "1" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UpdatePolicy\Settings" /v "PausedQualityStatus" /t REG_DWORD /d "1" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX" /v "IsConvergedUpdateStackEnabled" /t REG_DWORD /d "1" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ActiveHoursEnd" /t REG_DWORD /d "17" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ActiveHoursStart" /t REG_DWORD /d "8" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "AllowAutoWindowsUpdateDownloadOverMeteredNetwork" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "DeferFeatureUpdatesPeriodInDays" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "DeferQualityUpdatesPeriodInDays" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "FlightCommitted" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "LastToastAction" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "UxOption" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "InsiderProgramEnabled" /t REG_DWORD /d "0" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PendingRebootStartTime" /t REG_SZ /d "2019-07-28T03:07:38Z" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseFeatureUpdatesStartTime" /t REG_SZ /d "2019-07-28T10:38:56Z" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseQualityUpdatesStartTime" /t REG_SZ /d "2019-07-28T10:38:56Z" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseUpdatesExpiryTime" /t REG_SZ /d "2050-01-01T10:38:56Z" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseFeatureUpdatesEndTime" /t REG_SZ /d "2050-01-01T10:38:56Z" /f >nul
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "PauseQualityUpdatesEndTime" /t REG_SZ /d "2050-01-01T10:38:56Z" /f >nul
cls
echo Your Windows Update now is pause until 2050!!!!!!
timeout /t 4 >nul
