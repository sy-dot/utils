@echo off

:: DATE TIME
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
:: echo hour=%hour%

set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
:: echo min=%min%

set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
:: echo secs=%secs%

set datefix=%DATE:/=_%
set year=%datefix:~-10%
:: echo year=%year%


:: Move the batch file to the folder from which you want to get the list
:: chcp 1251
set cdate=%year%__%hour%-%min%-%secs%

:: Path where to save
echo %cdate% > "filelist_%cdate%.txt"
dir /a /b /s >> "filelist_%cdate%.txt"

:: If something doesn't work, comment out the line's below!
echo 	Done!
pause
exit || break || exit || pause