@echo off
mode con: cols=107 lines=40
ECHO WARNING! WARNING! WARNING!
ECHO.
echo This will delete all tmp files and log which can be used to help problem solve an issue. 
echo.
echo This will also delete any Flight Controllers that have been downloaded. 
echo.
echo This program is intended for use during development to delete tmp files after a test run 
echo.
echo Are you sure you want to delete all tmp files? 
echo.
ECHO	1) Yes, delete it all
ECHO	2) No, keep them and exit 
Echo.
choice /C 12 /D 1 /T 99 /M "delete all tmp files?"
If Errorlevel 2 goto end
If Errorlevel 1 goto main

:main
rmdir /Q /S nonemptydir Super-Tools-1.7.2
if %errorlevel%==0 Echo Deleted Super-Tools
del *log.txt 
if %errorlevel%==0 ECHO Deleted all logs 
del .wget-hsts
if %errorlevel%==0 ECHO deleted .wget-hsts
del *.bin
if %errorlevel%==0 ECHO deleted all .bin files 
echo DELETED ALL TEMP FILES
Pause 
exit