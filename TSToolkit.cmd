@echo off

:main
cls
echo Choose a command to run:
echo 1. MAS
echo 2. Chris Titus Tool
set /p choice="Enter your choice (1 or 2): "

if "%choice%"=="1" (
    powershell -Command "irm https://get.activated.win | iex"
    goto main
) else (
    if "%choice%"=="2" (
        powershell -Command "irm 'https://christitus.com/win' | iex"
        goto main
    ) else (
        echo Invalid choice. Please select 1 or 2.
        goto main
    )
)
