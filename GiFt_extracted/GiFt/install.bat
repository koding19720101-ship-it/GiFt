@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Python is already installed. Good.
    goto CHECK_PIP
)

echo I’m going to force-install Python. Actually, you’ve been tricked—this file is a virus.haha
winget install --id Python.Python.3.13 --exact --silent --accept-source-agreements --accept-package-agreements

PATH %PATH%;C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python313;C:\Users\%USERNAME%\AppData\Local\Programs\Python\Python313\Scripts

:CHECK_PIP
echo Installing...
python -m pip install pyautogui >nul 2>&1

echo The virus is spreading. Haha
python "main.py"

pause