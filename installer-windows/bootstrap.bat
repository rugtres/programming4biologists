
:: bootstrap.bat
:: install script for vscode + msys2
::
:: usage:
:: ./setup.bat [Install root path]
::
:: Hanno Hildenbrandt 2021,2023

@echo off
setlocal

SET MSYS2_URI="https://github.com/msys2/msys2-installer/releases/download/2022-09-04/msys2-x86_64-20220904.exe"
SET VSCODE_URI="https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-archive"

SET CWD=%~dp0
SET INSTALL_DIR=%HOMEDRIVE%%HOMEPATH%

IF "%~1" == "" GOTO :USE_DEFAULT_INSTALL_DIR
SET INSTALL_DIR=%~1
GOTO :set_launch_args

:USE_DEFAULT_INSTALL_DIR
:: choose "%INSTALL_DIR%\My Desktop" (UWP)
:: or     "%INSTALL_DIR%\Desktop" (normal)
IF exist "%INSTALL_DIR%\My Desktop" ( 
    SET INSTALL_DIR=%INSTALL_DIR%\My Desktop
) ELSE (
    if exist "%INSTALL_DIR%\Desktop" SET INSTALL_DIR=%INSTALL_DIR%\Desktop
)

:set_launch_args
IF "%~2" == "" GOTO :USE_DEFAULT_LAUNCH_ARGS
SET LAUNCH_ARGS=%~2

:USE_DEFAULT_LAUNCH_ARGS
SET INSTALL_DIR=%INSTALL_DIR%\cpp4bio
SET PROJECT_DIR=%INSTALL_DIR%\projects
SET MSYS=%INSTALL_DIR%\msys64
SET VSCODE_DIR=%INSTALL_DIR%\vscode
SET VSCODE_DATA=%VSCODE_DIR%\data
SET VSCODE_USER=%VSCODE_DATA%\user-data\User
SET PATH=%MSYS%\usr\bin\;%MSYS%\mingw64\bin\;%MSYS%\ucrt64\bin\;%VSCODE_DIR%\bin\;%PATH%

::  msys2
call :fetch "%MSYS2_URI%" "%TMP%\msys2.exe" || goto :cleanup
%TMP%\msys2.exe in -c --root "%MSYS%"
call :update_pacman_repositories || goto :cleanup

:: vscode
call :fetch %VSCODE_URI% %TMP%\vscode.zip || goto :cleanup
unzip "%TMP%\vscode.zip" -d "%VSCODE_DIR%"
:: enable portable mode
mkdir "%VSCODE_DIR%/data"

:: required vscode extensions
call :install_code_extension ms-vscode.cpptools-extension-pack
call :install_code_extension ms-vscode.cmake-tools
call :install_code_extension shd101wyy.markdown-preview-enhanced
:: optional vscode extensions
call :install_code_extension ms-vscode-remote.remote-wsl

:: create project dir
mkdir "%PROJECT_DIR%"
xcopy /E /I "%CWD%templates\hello_world" "%PROJECT_DIR%\hello_world"
copy /Y "%CWD%templates\setvars.bat" "%INSTALL_DIR%\setvars.bat"
copy /Y "%CWD%templates\user_settings.json" "%VSCODE_USER%\settings.json"
copy /Y "%CWD%templates\argv.json" "%VSCODE_DATA%\argv.json"

:: create final installation dir
move /Y "%MSYS%\ucrt64" "%INSTALL_DIR%"
rmdir /s /q "%MSYS%"
explorer.exe "%INSTALL_DIR%"
goto :eof

:update_pacman_repositories
:: check disk space seg-faults on UWP - disable it
sed -i 's/^CheckSpace/#CheckSpace/g' "%MSYS%/etc/pacman.conf"
:: clumsy way to initialize keys
pacman --noconfirm -Suyy
pacman -S --noconfirm --needed unzip git 
pacman -S --noconfirm --needed mingw-w64-ucrt-x86_64-make mingw-w64-ucrt-x86_64-cmake mingw-w64-ucrt-x86_64-ninja
pacman -S --noconfirm --needed mingw-w64-ucrt-x86_64-clang mingw-w64-ucrt-x86_64-lldb-mi
exit /B

:fetch
:: workaround for wget's "Unable to establish SSL connection" quirk.
set /a "x = 0"
echo %1
:fetch_retry
if %x% leq 5 (
    .\wget.exe --no-hsts %1 -O %2 && goto :eof
    set /a "x = x + 1"
    goto :fetch_retry
)
exit /B

:install_code_extension
echo installing %~1
call %VSCODE_DIR%\bin\code %LAUNCHARGS% --install-extension %~1 --force
exit /B

:cleanup
exit
