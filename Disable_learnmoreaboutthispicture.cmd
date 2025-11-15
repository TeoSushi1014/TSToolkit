@echo off
chcp 65001
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{2cc5ca98-6485-489a-920e-b3e88a6ccce3}" /t REG_DWORD /d 1 /f

echo Biểu tượng "Learn more about this picture" đã bị tắt.
echo Vui lòng khởi động lại máy tính để áp dụng thay đổi.
pause