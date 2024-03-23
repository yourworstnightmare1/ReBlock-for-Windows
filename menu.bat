: menu.bat
: ________
: ReBlock for Windows (CLI) by yourworstnightmare1
: GitHub -- https://github.com/yourworstnightmare1/ReBlock-for-Windows

: Please be the final build of 2.0 I have made like 6 different builds of this version...
: _______________________________________________________________________________________
@echo off
title ReBlock for Windows by yourworstnightmare1
cls
color 07

echo Welcome to ReBlock for Windows!
echo:
echo Version 2.0 (2.0-fr-r2)
echo Branch: stable
echo Star the repo! --^> https://github.com/yourworstnightmare1/ReBlock-for-Windows
echo:
echo What would you like to use?
echo [1] Tools
echo [2] Credits and Open Source License Agreements
echo [3] Exit ReBlock CLI
echo:
:BEGIN
CHOICE /N /C:123 /M "Selected item: "%1
IF ERRORLEVEL ==3 GOTO THREE
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:THREE
exit
GOTO END
:TWO
echo Opening credits...
start credits.bat
if not exist credits.bat (
    color 47
    echo An error occurred!
    echo __________________
    echo Failed to open "credits.bat" [\credits.bat].
    echo ____________________________________________
    echo Error code: 0x01_OPEN_FILE_FAILED
    echo Press any key to exit.
    pause > nul:
    exit
)
exit
GOTO END
:ONE
title Tool Select - ReBlock for Windows by yourworstnightmare1
echo Select a tool:
echo:
echo [1] appUnblocker for Windows - version 2.0 [Official]
echo [2] Exit ReBlock
:BEGIN
CHOICE /N /C:12 /M "Selected item: "%1
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:TWO
exit
GOTO END
:ONE
title Starting appUnblocker - ReBlock for Windows by yourworstnightmare1
echo Starting appUnblocker...
start appdata\tools\appunblocker_0x02\main.bat
echo Cleaning up...
exit
:END
pause