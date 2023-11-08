:: cleanup.bat
::
:: cleans up left-overs
::
:: Hanno Hildenbrandt 2023

@echo off
setlocal
SET CWD=%~dp0

if exist "%CWD%build" (
    rmdir /s /q "%CWD%build"
)
del "%CWD%*.exe"
