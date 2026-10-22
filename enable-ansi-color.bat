@echo off

call :GetActualPath

setlocal

set "CMD_TEXT=%*"

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%BATCH_DIR%enable-ansi-color.ps1"

set WRAPPER_EXIT_CODE=%ERRORLEVEL%

endlocal & exit /b %WRAPPER_EXIT_CODE%

:GetActualPath
set "BATCH_DIR=%~dp0"
exit /b