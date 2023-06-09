:: This app was made by yourworstnightmare / The original script was obtained by ZQGGE/YouTube. This method still works as of 5/26/2023 / version 1.0 beta

@echo off
color 2
title script.bat // appUnblocker - ReBlock for Windows (1.0 Beta)
echo Are you sure you want to run this script?
echo appUnblocker by yourworstnightmare / Script obtained by ZQGGE/YouTube
echo =====================================================================
pause
cls

echo Setting flag in "COMPAT_LAYER" to "RunAsInvoker"...
set __COMPAT_LAYER=RunAsInvoker
:: We use the script above to tell the OS to run the app that will be executed to run as invoker, or as adminstrator.
if errorlevel ==1 echo [FAIL] Failed to execute command: set__COMPAT_LAYER=RunAsInvoker for reason: undefined.
if errorlevel ==1 color 4
if errorlevel ==1 timeout /t 10 > nul:
if errorlevel ==1 exit
echo [OK] Set flag successfully.

echo Opening app within unblockscript [C:/unblockscript]...
::    vvv This is where you want to enter the app name vvv
start SteamSetup
::    ^^^ This is where you want to enter the app name ^^^
:: "start" is user input and must be changed by the user. This is explained within appUnblocker's "steps.bat" file.
if errorlevel ==1 echo [FAIL] Failed to open the application: The application doesn't exist. Please ensure that the app was moved to the "unblockscript" folder.
if errorlevel ==1 color 4
if errorlevel ==1 timeout /t 10 > nul:
if errorlevel ==1 exit
echo [OK] Opened app successfully.

echo Moving appUnblocker files back to the original source...
echo Creating "unblockscript" folder inside of directory "C:\ReBlock_Projections_Source\main\appdataMain\unblockers\appUnblocker"...
:: We use "cd" to change the directory of Command Prompt so when we later have to create a folder using mkdir we won't have to spend time typing out the entire directory path.
cd C:\ReBlock_Projections_Source\main\appdataMain\unblockers\appUnblocker
if errorlevel ==1 echo [FAIL] Failed to change to a directory within the ReBlock appdataMain folder.
if errorlevel ==1 color 4
if errorlevel ==1 timeout /t 10 > nul:
if errorlevel ==1 exit
echo [OK] Changed executor directory to C:\ReBlock_Projections_Source\main\appdataMain\unblockers\appUnblocker successfully.

echo Creating folder within the appUnblocker folder...
mkdir unblockscript
:: We make this directory so we can put the "script.bat" file inside of a folder within the appUnblocker folder so that next time it can be easily executed.
if errorlevel ==1 echo [FAIL] Failed to create folder "unblockscript" within directory: C:\ReBlock_Projections_Source\main\appdataMain\unblockers\appUnblocker.

if errorlevel ==1 color 4
if errorlevel ==1 timeout /t 10 > nul:
if errorlevel ==1 exit
echo [OK] Successfully created "unblockscript" folder in the appUnblocker folder.

echo Changing executor directory to C:\...
cd C:\
echo [OK] Changed executor directory to C:\.

move C:\unblockscript\script.bat C:\ReBlock_Projections_Source\main\appdataMain\unblockers\appUnblocker\unblockscript
if errorlevel ==1 echo [FAIL] Failed to move "script.bat".
if errorlevel ==1 timeout /t 10 > nul:
if errorlevel ==1 color 4
if errorlevel ==1 exit
echo [OK] Moved file successfully

rmdir C:\unblockscript
:: We remove this folder since we already moved a copy of this to the appUnblocker folder.
:: We skip the errorlevels since I don't feel like coding this anymore :/ Maybe I'll come back to it another day...
echo [OK] Finished execution!
timeout /t 5 > nul:
echo Cleaning up...
cls
echo [OK] Cleaned up!
echo Finalizing...
echo Exiting...
exit

:: finally thats the end