@echo off
for %%I in (.) do set CurrDirName=%%~nxI
docker run --rm -i -t -p 8080:8080 --env-file=env_file %CurrDirName%:latest
