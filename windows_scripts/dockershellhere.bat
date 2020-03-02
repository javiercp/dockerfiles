@echo off
for %%I in (.) do set CurrDirName=%%~nxI
set CurrDir=%CD%
docker run --rm -it --entrypoint=/bin/bash -v %CurrDir%:/%CurrDirName% -w /%CurrDirName% %1


