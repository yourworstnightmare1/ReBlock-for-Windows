: main.bat
: ________

@echo off
title appUnblocker for Windows by yourworstnightmare1
cls

cd %programfiles%\ReBlock\2.0-fr-r2\appdata\tools\appunblocker_0x02\
echo Welcome to appUnblocker!
echo ___________________________________________________________
echo:
echo Version: 2.0-rbwin
echo GitHub: https://github.com/yourworstnightmare1/appunblocker
echo ___________________________________________________________
echo:
echo:
echo Please type the directory of the application, or drag it in here.
set /p %input%=
echo Checking for file integrity of %input%...
if not exist %input% (
    echo Failed to find %input%.
    echo The directory may be incorrect or not exist.
    echo:
    echo Press any key to try again.
    pause > nul:
    start main.bat
    exit
)
echo Your application is ready to be used with appUnblocker! Press any key to continue.
pause > nul:

echo Starting...
echo Setting elevation level...
set __COMPAT_LAYER=RunAsInvoker
echo Starting application...
start %Input%
echo Started application!
echo Exiting appUnblocker...
exit