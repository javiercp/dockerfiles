@echo off
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
docker run -ti --rm --env DISPLAY=%NetworkIP%:0.0 myfirefox