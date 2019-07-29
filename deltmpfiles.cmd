@echo off
mode con: cols=107 lines=40
rmdir /Q /S nonemptydir Super-Tools-1.7.2
if %errorlevel%==0 Echo Deleted Super-Tools
del *log.txt 
if %errorlevel%==0 ECHO Deleted all logs 
del .wget-hsts
if %errorlevel%==0 ECHO deleted .wget-hsts
del *.bin
if %errorlevel%==0 ECHO deleted all .bin files 
echo DELETED ALL TEMP FILES
exit