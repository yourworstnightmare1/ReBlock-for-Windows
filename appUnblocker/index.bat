@echo off
title appUnblocker - ReBlock for Windows (1.0 Beta)
color 4
cls

echo Welcome to appUnblocker! Unblock any installer or app that needs administrative permissions.

pause

echo In order to start, please get your app ready.

timeout /t 3 > nul:

echo Writing to root of drive C:, please wait...
title Writing to C: - appUnblocker - ReBlock for Windows (1.0 Beta)
cd C:\
echo Completed (33%)
mkdir unblockscript
echo Completed (66%)
move C:\ReBlock_Projections_Source\main\appdataMain\unblockers\appUnblocker\unblockscript\script.bat C:\unblockscript
echo Completed (99%)
echo ===============
start C:\unblockscript\
echo Please move your app of desire to the newly created "unblockscript" folder in the root of the C: drive. Find it by going to Explorer, This PC, Windows (C:), and open the unblockscript folder.
echo Once you have done that, drag the app inside of the "script.bat" file and it should work!

pause

echo [1] Return to ReBlock main menu
echo [2] Exit

@ECHO OFF
:BEGIN
CHOICE /N /C:12 /M "Selected: "%1
IF ERRORLEVEL ==2 GOTO TWO
IF ERRORLEVEL ==1 GOTO ONE
GOTO END
:TWO
exit
GOTO END
:ONE
echo Returning to ReBlock menu, please wait...
start C:\ReBlock_Projections_Source\main\index.bat
exit
:END
pause
