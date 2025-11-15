@echo off
chcp 65001
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

echo Resetting network settings...
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
echo Network settings have been reset.
@echo off
echo Đang tắt kết nối Wi-Fi...
netsh interface set interface "Wi-Fi" admin=disable

echo Đang đặt lại cấu hình IP...
netsh interface ip reset

echo Đang xóa bộ nhớ DNS...
ipconfig /flushdns

echo Đang khởi động lại kết nối Wi-Fi...
netsh interface set interface "Wi-Fi" admin=enable

echo Đã hoàn thành việc reset Wi-Fi.
pause

