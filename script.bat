@echo off
title Restart WorkBuddy

set PROCESS_NAME=workbuddy.exe
set EXE_PATH=C:\Users\worker\AppData\Local\Programs\WorkBuddy\WorkBuddy.exe

echo Searching for process: %PROCESS_NAME% ...

tasklist /FI "IMAGENAME eq %PROCESS_NAME%" 2>NUL | find /I "%PROCESS_NAME%" >NUL

if %ERRORLEVEL% EQU 0 (
    echo Process found. Killing %PROCESS_NAME% ...
    taskkill /F /IM %PROCESS_NAME% >NUL 2>&1
    if %ERRORLEVEL% EQU 0 (
        echo Process killed successfully.
    ) else (
        echo Failed to kill process.
    )
) else (
    echo Process %PROCESS_NAME% not running.
)

echo Starting %PROCESS_NAME% (detached from this script) ...
powershell -Command "Start-Process '%EXE_PATH%' -WindowStyle Hidden"

if %ERRORLEVEL% EQU 0 (
    echo %PROCESS_NAME% started. You can safely close this window.
) else (
    echo Failed to start %PROCESS_NAME%. Check that "%EXE_PATH%" exists.
)

pause