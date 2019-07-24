@echo off
mode con: cols=107 lines=40
cls
Echo Please wait..
adb kill-server
set branch=1.7.2
rmdir /Q /S nonemptydir Super-Tools-1.7.2
cls
Echo -----------------------------------------------------------------------------------------------------
Echo -----------------------------------------------------------------------------------------------------
ECHO SUPER-PATCHER Set Up Widget
echo By Brett8883
Echo -----------------------------------------------------------------------------------------------------
Echo -----------------------------------------------------------------------------------------------------
Echo Please wait while I set things up. This wont take long...
Timeout 5
wget https://github.com/brett8883/Super-Tools/archive/%branch%.zip || goto error
unzip %branch%.zip
del %branch%.zip
cd Super-Tools-%branch%
call startup.bat || goto error

:Error
cls
Echo -----------------------------------------------------------------------------------------------------
ECHO SUPER-PATCHER Set Up Widget
echo By Brett8883
Echo -----------------------------------------------------------------------------------------------------
Echo -----------------------------------------------------------------------------------------------------
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
echo Sorry there! 
ECHO Try again when you get it figured out 
pause 
exit 
