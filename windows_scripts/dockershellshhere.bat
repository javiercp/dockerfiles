@echo off
for %%I in (.) do set CurrDirName=%%~nxI
set CurrDir=%CD%
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
docker run --rm -it --env DISPLAY=%NetworkIP%:0.0 --entrypoint=/bin/bash -v %CurrDir%:/%CurrDirName% -w /%CurrDirName% %1


