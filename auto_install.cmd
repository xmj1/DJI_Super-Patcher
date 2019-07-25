@echo off
mode con: cols=107 lines=40
echo break >> log.txt
echo Started Super-Patcher >> log.txt
echo %date%_%time%_ started Auto_install >> log.txt
cls
Echo Please wait..
adb kill-server
set branch=1.7.2
rmdir /Q /S nonemptydir Super-Tools-%branch%
cls
Echo -----------------------------------------------------------------------------------------------------
Echo -----------------------------------------------------------------------------------------------------
ECHO SUPER-PATCHER Set Up Widget
echo By Brett8883
Echo -----------------------------------------------------------------------------------------------------
Echo -----------------------------------------------------------------------------------------------------
Echo Please wait while I set things up. This wont take long...
Timeout 5
set SuperTools_URL=https://github.com/brett8883/Super-Tools/archive/%branch%.zip
wget https://github.com/brett8883/Super-Tools/archive/%branch%.zip || goto error
if %errorlevel%==0 echo Successfully downloaded SuperTools >>log.txt
echo %DATE%_%TIME% >> log.txt
unzip %branch%.zip
if %errorlevel%==0 echo Successfully unzipped SuperTools >>log.txt
echo %DATE%_%TIME% >> log.txt
del %branch%.zip
del .wget-hsts
cd Super-Tools-%branch% 
call startup.bat || goto error

:Error
cls
echo ERROR COULD NOT DOWNLOAD SUPER-TOOLS-%branch% from %SuperTools_URL% >> log.txt
echo %DATE%_%TIME% >> log.txt 
echo ERROR COULD NOT DOWNLOAD SUPER-TOOLS-%branch% from %SuperTools_URL% > errorlog.txt
echo %DATE%_%TIME% >> errorlog.txt
Echo -----------------------------------------------------------------------------------------------------
ECHO SUPER-PATCHER Set Up Widget
echo By Brett8883
Echo -----------------------------------------------------------------------------------------------------
Echo -----------------------------------------------------------------------------------------------------
echo ERROR COULD NOT DOWNLOAD SUPER-TOOLS-%branch% 
echo from %SuperTools_URL%
ECHO.
Echo There's a problem...
echo.
echo Best I can tell it's because I don't have internet access. 
ECHO.
echo Keep in mind I am do NOT have the ability
echo to dynamically diagnose errors but something isn't right and usually you will see
echo this error when there is no internet access 
echo. 
echo Check your conntection and if you are using a VM things are a little more complicated, 
echo please ensure the VM has internet or just use a real windows machine 
echo. 
echo If all else fails you can download from:
echo %SuperTools_URL%
echo.
echo and put it in the Super-Patcher folder next to the auto_install.bat
echo. 
echo The folder has to be named Super-Tools-%branch%
echo 
echo Sorry there! 
ECHO Try again when you get it figured out 
pause 
exit 
