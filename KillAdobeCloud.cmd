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

taskkill /f /im "Creative Cloud.exe"
taskkill /f /im "Adobe Desktop Service.exe"
taskkill /f /im "Adobe Crash Reporter.exe"
taskkill /f /im "CCXProcess.exe"
taskkill /f /im "AdobeIPCBroker.exe"
taskkill /f /im "AdobeNotificationClient.exe"
taskkill /f /im "Adobe Desktop Service.exe"
taskkill /f /im "Adobe Update Service.exe"
taskkill /f /im "Adobe CCXProcess.exe"
taskkill /f /im "Adobe Acrobat Update Service.exe"
taskkill /f /im "AGMService.exe"
taskkill /f /im "AGSService.exe"
taskkill /f /im "Adobe Genuine Software Integrity Service.exe"
taskkill /f /im "CoreSync.exe"
taskkill /f /im "AdobeIPCBroker.exe"
taskkill /f /im "CCLibrary.exe"
taskkill /f /im "Creative Cloud Helper.exe"
taskkill /f /im "AdobeIPCBroker.exe"
taskkill /f /im "Adobe Crash Processor.exe"

echo All Adobe Creative Cloud applications have been closed.
exit
