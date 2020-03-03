@echo off
for %%I in (.) do set CurrDirName=%%~nxI
set CurrDir=%CD%
docker run --rm -it -p 8080:80 -p 8443:443 -v %CurrDir%:/srv/data nginxserver:latest