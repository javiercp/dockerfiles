@echo off
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
docker run --rm -i -t --env DISPLAY=%NetworkIP%:0.0 --entrypoint=/bin/sh %1